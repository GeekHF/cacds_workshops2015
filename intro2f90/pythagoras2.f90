!CACDS HPC BootCamp
!Pythagoras.f90

PROGRAM Pythagoras
IMPLICIT NONE

     REAL :: A, B, H

     WRITE(*,*) "Enter triangle sides separated by one space"
     READ(*,501) A,B   !read from keyboard with format 501
     
     H=sqrt( A**2 + B**2 ) !Pythagora's formula

!W O R K   H E R E:

     OPEN(10,file='/home/hpc_user???/intro2f90/data.dat')  !open the file
       WRITE(???,601) A,B,H  !write into file, new line, with format 601
     CLOSE(???)  !close the file

     501 FORMAT(2f4.1) !2 real numbers with 2 significant digits 
     601 FORMAT("A= ", f4.1, " B=", f4.1, " Hypotenuse=",f4.1)

END PROGRAM Pythagoras

