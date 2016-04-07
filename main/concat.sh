#!/bin/sh

# concat.sh
# Date  : 07 April 2016
# Author: Ankit Pati

echo "Enter two strings:"
read str1
read str2

echo -n "Concatenated string is $str1$str2 with length "
echo "`echo -n "$str1$str2" | wc -c`"

# end of concat.sh

: " OUTPUT

Enter two strings:
hello,
world
Concatenated string is hello,world with length 11

"
