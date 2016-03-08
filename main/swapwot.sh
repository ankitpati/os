#!/bin/sh

# swapwot.sh
# Date  : 03 March 2016
# Author: Ankit Pati

echo "Enter num1:"
read num1

echo "Enter num2:"
read num2

echo

echo "Before swap:"
echo "num1 == $num1"
echo "num2 == $num2"

num1="`echo \"$num1+$num2\" | bc -l`"
num2="`echo \"$num1-$num2\" | bc -l`"
num1="`echo \"$num1-$num2\" | bc -l`"

echo

echo "After swap:"
echo "num1 == $num1"
echo "num2 == $num2"

# end of swapwot.sh

: " OUTPUT

Enter num1:
43.5
Enter num2:
13.12

Before swap:
num1 == 43.5
num2 == 13.12

After swap:
num1 == 13.12
num2 == 43.50

"
