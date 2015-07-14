!From Object-oriented programming2
!http://fortranwiki.org/fortran/show/Object-oriented+programming2
!This program is valid for intel fortran 12.0.3 
!
!Output:
!this is sub input value: 10
!this is attribute a from class a: 11
!this is attribute c from object c: 111

module my_classes
implicit none

  type, public :: class_c
    integer :: c
  end type class_c        

  type :: class_a
    type(class_c) :: objc
    integer :: a
    contains
    procedure :: suba
  end type

  contains

    subroutine suba(this,n)
      class(class_a),intent(INOUT) :: this
      integer n
      print *,"this is sub input value:",n
      print *,"this is attribute a from class a:",this%a
      print *,"this is attribute c from object c: ",this%objc%c
    end subroutine suba

end module my_classes

Program myprog
use my_classes
implicit none

  type(class_a) :: my_a
    my_a%a=11
    my_a%objc%c=111
  call my_a%suba(10)

end program myprog
