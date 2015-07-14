!Martin Huarte-Espinosa from CACDS, mhuartee@central.uh.edu
!  found this program at 
!  http://faculty.washington.edu/rjl/uwamath583s11/sphinx/notes/html/fortran_taylor.html#fortran-taylor
!  then modify it for educational purposes. 
!He merged the function into the main program, added comments, and changed print commands.
!

program taylor
   implicit none                  

   real (kind=8) :: x, exp_true, y     !The KIND of a variable is an
                                       !  integer label which tells the 
                                       !  compiler which of its supported kinds it
                                       !  should use. 8 byte ieee float
   real (kind=8) :: exptaylor, term, partial_sum
   integer :: j, n

   n = 20                              ! number of terms to use
   x = 1.0
   exp_true = exp(x)

   term = 1.
   partial_sum = term
   do j=1,n
      ! j'th term is  x**j / j!  which is the previous term times x/j:
      term = term*x/j   
      ! add this term to the partial sum:
      partial_sum = partial_sum + term   
   end do
   y = partial_sum            ! returned value

   write(*,*) 'x = ',x
   write(*,*) 'exp_true  = ',exp_true
   write(*,*) 'exptaylor = ',y
   write(*,*) 'error     = ',y - exp_true
end program taylor
