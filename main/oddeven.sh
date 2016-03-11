#!/bin/sh

# oddeven.sh
# Date  : 10 March 2016
# Author: Ankit Pati

echo "Enter a +ve number:"
read num

if [ "`expr $num % 2`" -eq "0" ]
then
    echo "$num is even."
else
    echo "$num is odd."
fi

# end of oddeven.sh

: " OUTPUT

Enter a +ve number:
43
43 is odd.

"
