program subroutineEx
implicit none

real :: a, b

write(*,*) 'Please provide a'
read(*,*) a
write(*,*) 'Please provide b'
read(*,*) b

CALL swap(a,b)

write(*,*) 'Swapping',a,b

CONTAINS

subroutine swap(x,y)
implicit none
real, intent(inout) :: x, y
real :: z

z=x ; x=y ; y=z

end subroutine swap
end program subroutineEx

