PROGRAM heron
IMPLICIT NONE

     REAL :: A, B, C, AREA, AREA2, S !NOTE THE NEW VARIABLE AREA2

     WRITE(*,*) "Type triangle's sides, 2 sig. digits, as: a b c"
     READ(*,501) A,B,C                          !read from keyboard with format 501
     S = (A + B + C) / 2.0                      !Semiperimeter                          
     AREA2 = S * (S - A) * (S - B) * (S - C) 
     AREA = SQRT( AREA2 )                        !Heron's formula

!===Add and IF and DO statments so that if AREA2 <0, the program explains this,
!===  then asks for new input.

     WRITE(*,*) 'A    B     C     AREA'
     WRITE(*,601) A,B,C,AREA2, AREA
     
!===Edit from here:
     !OPEN(10,file='/home/hpc_userXX/intro2f90/area.dat')  !open the file
       !WRITE(10,*) 'A    B     C     AREA'  !write into file
       !WRITE(10,601) A,B,C,AREA  !write into file, new line, with format 601
     !CLOSE(10)  !close the file
!===  to here

     501 FORMAT(3f4.1) !3 real numbers with 2 significant digits 

     601 FORMAT(" A= ",f4.1,"  B= ",f4.1,"  C= ",f4.1,&
     "  AREA= ",f9.2," SQR UNITS")

!=== also use this format:
!601 FORMAT(" A= ",f4.1,"  B= ",f4.1,"  C= ",f4.1,&
!"  AREA^2= ",f9.2, "  AREA= ",f9.2," SQR UNITS")

END PROGRAM heron
