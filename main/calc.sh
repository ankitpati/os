#!/bin/sh

# calc.sh
# Date  : 07 April 2016
# Author: Ankit Pati

ch="y"

while [ "$ch" = "y" ]
do
    clear
    echo "CALCULATOR"
    echo

    echo "Enter two numbers:"
    read num1
    read num2
    echo

    echo "Choose an operation:"
    echo "( +) Addition"
    echo "( -) Subtraction"
    echo "( *) Multiplication"
    echo "( /) Division"

    read ch
    echo

    case "$ch" in
    "+")
        echo -n "Sum = "
        ;;
    "-")
        echo -n "Difference = "
        ;;
    "*")
        echo -n "Product = "
        ;;
    "/")
        echo -n "Quotient = "
        ;;
    *)
        echo "Incorrect Usage"
        echo
        echo "Do you want to continue? (y / N)"
        read ch
        continue
        ;;
    esac

    echo "`echo "scale=2; $num1 $ch $num2" | bc`"
    echo

    echo "Do you want to continue? (y / N)"
    read ch
done

# end of calc.sh

: " OUTPUT

CALCULATOR

Enter two numbers:
43
5.65

Choose an operation:
( +) Addition
( -) Subtraction
( *) Multiplication
( /) Division
*

Product = 242.95

Do you want to continue? (y / N)
n

"
