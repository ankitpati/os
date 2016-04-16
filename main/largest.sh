#!/bin/sh

# largest.sh
# Date  : 10 March 2016
# Author: Ankit Pati

echo "Enter 3 numbers:"
read a b c

l="$a"

if [ "$b" -gt "$l" ]
then
    l="$b"
fi

if [ "$c" -gt "$l" ]
then
    l="$c"
fi

s="$a"

if [ "$b" -lt "$s" ]
then
    s="$b"
fi

if [ "$c" -lt "$s" ]
then
    s="$c"
fi

echo "Largest  of $a, $b, $c is $l."
echo "Smallest of $a, $b, $c is $s."

# end of largest.sh

: " OUTPUT

Enter 3 numbers:
43 5 13
Largest  of 43, 5, 13 is 43.
Smallest of 43, 5, 13 is 5.

"
