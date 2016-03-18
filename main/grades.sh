#!/bin/sh

# grades.sh
# Date  : 10 March 2016
# Author: Ankit Pati

echo "Marks out of 100? (-1) to terminate."

marks="0"

while [ "$marks" -gt "-1" ]
do
    read marks

    if   [ "$marks" -gt "90" ]
    then
        grade="A+"
    elif [ "$marks" -gt "80" ]
    then
        grade="B+"
    elif [ "$marks" -gt "70" ]
    then
        grade="B"
    elif [ "$marks" -gt "60" ]
    then
        grade="C"
    elif [ "$marks" -gt "50" ]
    then
        grade="D"
    elif [ "$marks" -gt "40" ]
    then
        grade="E"
    else
        grade="F"
    fi

    if [ "$marks" -gt "-1" ]
    then
        echo "Grade is $grade"
        echo
    fi
done

# end of grades.sh

: " OUTPUT

Marks out of 100? (-1) to terminate.
43
Grade is E

55
Grade is D

5
Grade is F

96
Grade is A+

82
Grade is B+

-1

"
