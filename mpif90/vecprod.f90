!Program taken from
!https://www.cs.kent.ac.uk/people/staff/trh/MPI/mpitutorial.pdf
!but modified to include mpi_wtime
!This program computes the dot product of two vectors, z  = x⋅y using MPI calls.

program vecprod

 include 'mpif.h'
 integer, parameter :: dim1 = 80, dim2 = 10
 integer :: ierr, rank, size, root
 REAL(kind=8) :: sec_start
 REAL(kind=8) :: sec_curr
 REAL(kind=8) :: sec_startup
 REAL(kind=8) :: sec_comp
 REAL(kind=8) :: sec_cleanup
 real, dimension(dim1) :: x, y
 real, dimension(dim2) :: xpart, ypart
 real :: z, zpart

root = 0

 call MPI_INIT( ierr )
 call MPI_COMM_RANK( MPI_COMM_WORLD, rank, ierr )
 call MPI_COMM_SIZE( MPI_COMM_WORLD, size, ierr )
 print *, 'START process on processor ', rank

 if( rank == root ) then !Do timing in the root process only.
   sec_start=MPI_Wtime()
   x = 1.0
   y = 2.0
 endif

!Distribute the arrays x and y as in the previous example.

call MPI_SCATTER( x, dim2, MPI_REAL, xpart, dim2, MPI_REAL, root, &
 MPI_COMM_WORLD, ierr )
call MPI_SCATTER( y, dim2, MPI_REAL, ypart, dim2, MPI_REAL, root, &
 MPI_COMM_WORLD, ierr )

!The coefficients, a and b, are stored in an array of length 2, coeff, that is
!broadcast to all processes via MPI_BCAST from the process root.

 
 if( rank == root ) then
   sec_curr = MPI_Wtime()
   sec_startup = sec_curr - sec_start
   sec_start =   sec_curr
 endif

!Each process then computes the dot product of the pieces of the 
!array to which it has access.
 zpart = 0.0
 do i = 1, dim2
   zpart = zpart + xpart(i)*ypart(i)
 enddo

 if( rank == root ) then
   sec_curr = MPI_Wtime()
   sec_comp =  sec_curr - sec_start
   sec_start = sec_curr
 endif

!Use MPI_REDUCE to sum the pieces of the dot product stored in zpart and store
!the result in the z variable belonging to the root process.
 
call MPI_REDUCE( zpart, z, 1, & !Dimension of zpart and z.
MPI_REAL, MPI_SUM, &            !Type of reduction operation to perform.
root, MPI_COMM_WORLD, ierr )    !The result of this
                                !operation is that z
                                !contains the sum of all the
                                !zpart values

if( rank == root ) then
   sec_curr = MPI_Wtime()
   sec_cleanup = sec_curr - sec_start
 endif

 print *, 'Finish processor ', rank

 if( rank == root ) then
   print *, 'Vector product is: ', z
   print *, 'Startup execution times (sec): ',          sec_startup
   print *, 'Computation execution times (sec): ',      sec_comp
   print *, 'Cleanup execution times (sec): ',          sec_cleanup
 endif

 call MPI_FINALIZE( ierr )

 end program vecprod
