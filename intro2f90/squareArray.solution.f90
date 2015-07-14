program squareArray
implicit none

real, dimension(4) :: b,c

  b = (/2., 3., 4., 5./)
  call f_sub(b,c)
  write(*,*) "c = ",c

contains   
  subroutine f_sub(a,f)      
     implicit none 
     real, dimension(:), intent(in) :: a
     real, dimension(size(a)), intent(out) :: f
     f = a**2
  end subroutine f_sub

end program squareArray
