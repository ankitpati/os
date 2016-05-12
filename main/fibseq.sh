#!/bin/sh

# fibseq.sh
# Date  : 17 March 2016
# Author: Ankit Pati

echo "Number of terms in Fibonacci Series?"
read n

x=0
y=1
i=0
while [ $i -lt $n ]
do
    printf "%d " $x
    y=`expr $x + $y`
    x=`expr $y - $x`
    i=`expr $i + 1`
done

echo

# end of fibseq.sh

: " OUTPUT

Number of terms in Fibonacci Series?
10
0 1 1 2 3 5 8 13 21 34

"
