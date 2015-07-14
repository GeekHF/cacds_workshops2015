program grades
IMPLICIT NONE

INTEGER          :: x
CHARACTER(LEN=1) :: Grade

write(*,*) 'What is your grade 1-10?'
read(*,*) x

IF (x < 50) THEN
   Grade = 'F'
ELSE IF (x < 60) THEN
   Grade = 'D'
ELSE IF (x < 70) THEN
   Grade = 'C'
ELSE IF (x < 80) THEN
   Grade = 'B'
ELSE
   Grade = 'A'
END IF

write(*,*) x, 'is equivalent to ',Grade
end program grades
