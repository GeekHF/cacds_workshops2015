!Adaptation From http://www.uv.es/dogarcar/man/IntrFortran90.pdf
!by Martin Huarte-Espinosa @ CACDS, mhuartee@central.uh.edu

PROGRAM p2
IMPLICIT NONE

INTEGER :: month

write(*,*) 'Please write the month 1-12'
read (*,*) month
season:SELECT CASE( month ) !note that "season" is optional; helps clarity.
   CASE(4,5)
      WRITE(*,*) 'Spring'
   CASE(6,7)
      WRITE(*,*) 'Summer'

