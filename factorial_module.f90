! define a module for a main script of factorial n
module factorial_module
    implicit none
    CONTAINS

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
    end module factorial_module

