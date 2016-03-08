#!/bin/sh

# arithops.sh
# Date  : 03 March 2016
# Author: Ankit Pati

echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo
echo "Integer Arithmetic"
echo "$a + $b = `expr $a + $b`"
echo "$a - $b = `expr $a - $b`"
echo "$a * $b = `expr $a \* $b`"
echo "$a / $b = `expr $a / $b`"

echo

echo "Fixed Point Arithmetic"
echo "$a + $b = `echo \"scale=2; $a + $b\" | bc`"
echo "$a - $b = `echo \"scale=2; $a - $b\" | bc`"
echo "$a * $b = `echo \"scale=2; $a * $b\" | bc`"
echo "$a / $b = `echo \"scale=2; $a / $b\" | bc`"

# end of arithops.sh

: " OUTPUT

Enter first number:
43
Enter second number:
5

Integer Arithmetic
43 + 5 = 48
43 - 5 = 38
43 * 5 = 215
43 / 5 = 8

Fixed Point Arithmetic
43 + 5 = 48
43 - 5 = 38
43 * 5 = 215
43 / 5 = 8.60

"
