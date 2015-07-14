program multiply
implicit none

real :: total=1., value !NOTE THAT IT IS NECESARY TO INITIALIZE THE VARIABLE
                        !CALLED TOTAL FOR THIS PROGRAM

  write(*,*) 'Please type the numbers to multiply followed by the Return key'
  write(*,*) 'Use a negative number when finished'
  DO !FROM WHERE TO WHERE??
    READ(*,*) value         
    IF (value<0) !??
    IF (value==0) !??
        write(*,*) 'Try again'
        !?? 
    END IF
    total=total*value
    write(*,*) 'total=',total
  END DO
  write(*,*) 'Done, thanks'
end program multiply
