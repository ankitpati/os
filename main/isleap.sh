#!/bin/sh

# isleap.sh
# Date  : 10 March 2016
# Author: Ankit Pati

echo "Enter a year:"
read y

if [ `expr $y % 400` -eq 0 ]
then
    echo "$y is a leap year."
elif [ `expr $y % 100` -eq 0 ]
then
    echo "$y is a not leap year."
elif [ `expr $y % 4` -eq 0 ]
then
    echo "$y is a leap year."
else
    echo "$y is not a leap year."
fi

# end of isleap.sh

: " OUTPUT

Enter a year:
2016
2016 is a leap year.

"
