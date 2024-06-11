 ! Leonard-cmcc, 11/06/2024 factorial of n with module holding the factorial subroutine
 
program factorials_n
    use factorial_module
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
    
end program factorials_n

