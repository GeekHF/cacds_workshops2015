program multiply
implicit none

real :: total=1., value

  write(*,*) 'Please type the numbers to multiply followed by the Return key'
  write(*,*) 'Use a negative number when finished'
  DO
    READ(*,*) value         
    IF (value<0) exit
    IF (value==0) then
        write(*,*) 'Try again'
        cycle
    END IF
    total=total*value
    write(*,*) 'total=',total
  END DO
  write(*,*) 'Done, thanks'
end program multiply
