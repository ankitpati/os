#!/bin/sh

# ispalin.sh
# Date  : 07 April 2016
# Author: Ankit Pati

echo "Enter a string:"
read str

l="`echo -n "$str" | wc -c`"

for i in `seq \`expr "$l" / 2\``
do
    c="`echo -n $str | cut -c $i`"
    d="`echo -n $str | cut -c $l`"
    if [ "$c" != "$d" ]
    then
        echo "Not Palindrome"
        exit
    else
        l="`expr "$l" - 1`"
    fi
done

echo "Palindrome"

# end of ispalin.sh

: " OUTPUT

Enter a string:
racecar
Palindrome

Enter a string:
helloworld
Not Palindrome

"
