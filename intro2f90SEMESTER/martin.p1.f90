!  Credit: http://faculty.washington.edu/rjl/uwamath583s11/sphinx/notes/html/fortran_taylor.html#fortran-taylor
!  then modified by Martin Huarte (mhuartee@central.uh.edu) for educational purposes. 
!

program taylor
   implicit none                  

   real x, exp_true, y    
   real :: exptaylor, term, partial_sum
   integer :: j, n

   n = 20                              ! number of terms to use
   x2 = 1.0
   exp_true = exp(x)

   term = 1.
   partial_sum = term
   do j=1,n
      ! j'th term is  x**j / j!  which is the previous term times x/j:
      term = term*x/j   
      ! add this term to the partial sum:
      partial_sum = partial_sum + term   
   end
   y = partial_sum            ! returned value

   write(*,*) 'x = ',x
   write(*,*) 'exp_true  = ',exp_true
   write(*,*) 'exptaylor = ',y
   write(*,*) 'error     = ',y - exp_true

   if (exp_true/y lt 0.75) then
      write(*,*) 'Large error'

end program 


