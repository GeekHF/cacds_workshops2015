!Martin Huarte-Espinosa from CACDS, mhuartee@central.uh.edu
!  found this program at 
!  http://faculty.washington.edu/rjl/uwamath583s11/sphinx/notes/html/fortran_taylor.html#fortran-taylor
!  then modify it for educational purposes. 
program taylor

    implicit none                  
    real (kind=8) :: x, exp_true, y

!?
!DO YOU NEED THE LINE BELOW?
    real (kind=8), external :: exptaylor

    integer :: n

!?
!DO YOU NEED THE LINE BELOW?
        integer :: j


    n = 20               ! number of terms to use
    x = 1.0
    exp_true = exp(x)
    y = exptaylor(x,n)   ! uses function below
    print *, "x = ",x
    print *, "exp_true  = ",exp_true
    print *, "exptaylor = ",y
    print *, "error     = ",y - exp_true

end program taylor

function exptaylor(x,n)
    implicit none

    ! function arguments:
    real (kind=8), intent(in) :: x
    integer, intent(in) :: n

!?
!DO YOU NEED THE LINE BELOW?
    real (kind=8) :: exptaylor

    ! local variables:
    real (kind=8) :: term, partial_sum

!?
!DO YOU NEED THE LINE BELOW?
    integer :: j

    term = 1.
    partial_sum = term

    do j=1,n
        ! j'th term is  x**j / j!  which is the previous term times x/j:
        term = term*x/j   
        ! add this term to the partial sum:
        partial_sum = partial_sum + term   
        enddo
     exptaylor = partial_sum  ! this is the value returned
end function exptaylor

