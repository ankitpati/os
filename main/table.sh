#!/bin/sh

# table.sh
# Date  : 17 March 2016
# Author: Ankit Pati

echo "Table of which number?"
read num

i=1
while [ "$i" -le "10" ]
do
    printf "%3d x %3d = %3d\n" "$num" "$i" "`expr $num \* $i`"
    i="`expr $i + 1`"
done

# end of table.sh

: " OUTPUT

Table of which number?
5
  5 x   1 =   5
  5 x   2 =  10
  5 x   3 =  15
  5 x   4 =  20
  5 x   5 =  25
  5 x   6 =  30
  5 x   7 =  35
  5 x   8 =  40
  5 x   9 =  45
  5 x  10 =  50

"
