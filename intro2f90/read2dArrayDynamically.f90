!Illustrates how to read a 2D array of numbers, of unknown size, from a
!file. It makes use of array dynamic allocation.
program readArrayDynamically
   implicit none
   real, dimension(:,:), allocatable :: x
   integer :: i,n,m
 
   open (unit=99, file='read2dArrayDynamically.dat')
      read(99, *) n,m
         allocate(x(n,m))
           !version 1
                read(99,*) (x(i,1:m),i=1,n) !IMPILED DO LOOP
           !version 2
                ! do i=1,n
                !     read(99,*) x(i,1:m)
                ! end do
   close(99)
   write(*,*) x
   deallocate(x)
end program readArrayDynamically
