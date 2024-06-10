! Leonard - cmcc, 10/06/2024, program to calculate the factorial of a number m <= n

program factorials_m_less_to_n
    implicit none
    integer :: n, m
    integer, dimension(:), allocatable :: factorials

    ! Prompt the user for the value of n
    print *, "Enter a value for n:"
    read *, n

    ! Allocate the array to store factorials
    allocate(factorials(n))

    ! Calculate factorial for each number from 1 to n
    do m = 1, n
        call calculate_factorial(m, factorials(m))
    end do

    ! Print the results
    print *, "Factorials from 1 to ", n, ":"
    do m = 1, n
        print *, m, "! = ", factorials(m)
    end do

    ! Deallocate the array
    deallocate(factorials)

end program factorials_m_less_to_n


subroutine calculate_factorial(m, result)
    implicit none
    integer, intent(in) :: m
    integer, intent(out) :: result
    integer :: i

    ! Initialize result to 1
    result = 1

    ! Calculate factorial
    if (m > 1) then
        do i = 2, m
            result = result * i
        end do
    end if
end subroutine calculate_factorial

