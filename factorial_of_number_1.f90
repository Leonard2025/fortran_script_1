! Leonard - cmcc, 10/06/2024, program to simply calculate the factorial of an integer n

program factorial_of_number
  real :: factorial
  integer :: n
  print *, 'Enter a positive integer:'
  read (*, *) n

  if (n < 0) then
    print *, 'Factorial is not defined for negative numbers'
  else
    factorial = 1.0
    do i = 1, n
      factorial = factorial * i
    end do
    print *, 'The factorial of', n, 'is', factorial
  end if

end program factorial_of_number

