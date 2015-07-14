!Program taken from
!https://www.cs.kent.ac.uk/people/staff/trh/MPI/mpitutorial.pdf
!but modified to include mpi_wtime
!This program computes z = ax() + b y() on 8 processes using MPI calls.

program vecsum

 include 'mpif.h'
 integer, parameter :: dim1 = 80, dim2 = 10
 integer :: ierr, rank, size, root
 REAL(kind=8) :: sec_start
 REAL(kind=8) :: sec_curr
 REAL(kind=8) :: sec_startup
 REAL(kind=8) :: sec_comp
 REAL(kind=8) :: sec_cleanup
 real, dimension(dim1) :: x, y, z
 real, dimension(dim2) :: xpart, ypart, zpart
 real, dimension(2) :: coeff

root = 0

 call MPI_INIT( ierr )
 call MPI_COMM_RANK( MPI_COMM_WORLD, rank, ierr )
 call MPI_COMM_SIZE( MPI_COMM_WORLD, size, ierr )
 print *, 'START process on processor ', rank

 if( rank == root ) then !Do timing in the root process only.
   sec_start=MPI_Wtime()
   coeff = (/ 1.0, 2.0 /)
   x = 2.0
   y = 3.0
 endif

!MPI_SCATTER distributes blocks of array x from the root process to the array
!xpart belonging to each process in MPI_COMM_WORLD. Likewise, blocks of
!the array y are distributed to the array ypart.

call MPI_SCATTER( x, dim2, & !Array x and the number
                             !of elements of type real to
                             !send to each process. Only
                             !meaningful to root.
MPI_REAL, xpart, dim2, &!Array xpart and the
                        !number of elements of
                        !type real to receive.
MPI_REAL, root, MPI_COMM_WORLD, ierr )

call MPI_SCATTER( y, dim2, &!Array y and the number of
                            !elements of type real to send to
                            !each process. Only meaningful
                            !to root.
MPI_REAL, ypart, dim2, &!Array ypart and the
                        !number of elements of
                        !type real to receive.
MPI_REAL, root, MPI_COMM_WORLD, ierr )

!The coefficients, a and b, are stored in an array of length 2, coeff, that is
!broadcast to all processes via MPI_BCAST from the process root.

call MPI_BCAST( coeff, 2, MPI_REAL, root, MPI_COMM_WORLD, ierr )
 
 if( rank == root ) then
   sec_curr = MPI_Wtime()
   sec_startup = sec_curr - sec_start
   sec_start =   sec_curr
 endif

!Now each processor computes the vector sum on its portion of the
!vector. The blocks of the vector sum are stored in zpart.

do i = 1, dim2
  zpart(i) = coeff(1)*xpart(i) + coeff(2)*ypart(i)
enddo

 if( rank == root ) then
   sec_curr = MPI_Wtime()
   sec_comp =  sec_curr - sec_start
   sec_start = sec_curr
 endif

!Now we use MPI_GATHER to collect the blocks back to the root process.

call MPI_GATHER( zpart, dim2, &! The array zpart to be gathered and
                              !the number of elements each process
                              !sends to root.
MPI_REAL, z, dim2, & !For the root process, the array z contains the
                     !collected blocks from all processes on output.
                     !MPI_GATHER needs to know how much data
                     !to collect from each process.
MPI_REAL, root, MPI_COMM_WORLD, ierr )

 if( rank == root ) then
   sec_curr = MPI_Wtime()
   sec_cleanup = sec_curr - sec_start
 endif

 print *, 'Finish processor ', rank

 if( rank == root ) then
   print *, 'Vector sum, elements 10 and 60, are: ', z(10), z(60)
   print *, 'Startup execution times (sec): ',          sec_startup
   print *, 'Computation execution times (sec): ',      sec_comp
   print *, 'Cleanup execution times (sec): ',          sec_cleanup
 endif

 call MPI_FINALIZE( ierr )

 end program vecsum
