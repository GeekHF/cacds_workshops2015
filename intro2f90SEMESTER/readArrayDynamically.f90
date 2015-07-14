!Illustrates how to read an array of numbers, of unknown size, from a
!file. It makes use of array dynamic allocation.
program readArrayDynamically
   implicit none
   real, dimension(:), allocatable :: x
   integer :: n
 
   open (unit=99, file='readArrayDynamically.dat')
      read(99, *), n
         allocate(x(n))
            read(99,*) x
   close(99)
   write(*,*) x
   deallocate(x)

end program readArrayDynamically
