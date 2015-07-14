PROGRAM heron1
IMPLICIT NONE

     REAL :: A, B, C, AREA, S

     WRITE(*,*) "Type triangle's sides, 2 sig. digits, as: a b c"
     READ(*,501) A,B,C                          !read from keyboard with format 501
     S = (A + B + C) / 2.0                      !Semiperimeter                          
     AREA = SQRT( S * (S - A) * (S - B) * (S - C) ) !Heron's formula
    
     open(20,file='/home/hpc_user2/intro2f90/area.dat')


     WRITE(20,*) 'A    B     C     AREA'
     WRITE(20,601) A,B,C, AREA
     close(20)
     
     501 FORMAT(3f4.1) !3 real numbers with 2 significant digits 
     601 FORMAT("  A= ",f4.1,"  B= ",f4.1,"  C= ",f4.1,&
     "  AREA =  ",f9.2," SQR UNITS")

END PROGRAM heron1
