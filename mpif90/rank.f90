program rank
 include 'mpif.h'
 integer :: ierr, id, tot


 call MPI_INIT ( ierr )
 call MPI_COMM_RANK (MPI_COMM_WORLD, id,  ierr)
 call MPI_COMM_SIZE (MPI_COMM_WORLD, tot, ierr)


 if (id==0) then
   print *, 'I am the root process'
 else
   print *, 'I am ', id, 'of ', tot
 end if

 call MPI_FINALIZE ( ierr )
end program

