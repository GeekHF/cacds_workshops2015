program multiply
implicit none

real :: total=1., value

  write(*,*) 'Please type the numbers to multiply followed by the Return key'

  DO
    READ(*,*) value         
   
    total=total*value
   
     write(*,*) 'total=',total
  END DO

  write(*,*) 'Done, thanks'
end program multiply
