! Leonard - cmcc, 08/06/2024, program to calculate the square of a number

program square_number 
implicit none
real :: x, y
print *, 'enter the number'
read(*,*) x
!The square of the number
y=x**2
print *, 'the square of the number is:', y
end program square_number
