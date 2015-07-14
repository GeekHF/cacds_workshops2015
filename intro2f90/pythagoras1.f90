!CACDS HPC BootCamp
!Pythagoras.f90

PROGRAM Pythagoras
IMPLICIT NONE

     REAL :: A, B, H

     WRITE(*,*) "Enter triangle sides separated by one space"
     READ(*,501) A,B   !read from keyboard with format 501
     
     H=sqrt( A**2 + B**2 ) !Pythagora's formula

     WRITE(*,601) A,B,H
     
     501 FORMAT(2f4.1) !2 real numbers with 2 significant digits 
     601 FORMAT("A= ", f4.1, " B=", f4.1, " Hypotenuse=",f4.1)

END PROGRAM Pythagoras

