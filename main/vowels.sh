#!/bin/sh

# vowels.sh
# Date  : 10 March 2016
# Author: Ankit Pati

echo "Enter a string:"
read str

for i in $( seq 1 ${#str} )
do
    C="`echo $str | cut -c $i`"
    c="`echo $C | tr A-Z a-z`"
    if [ $c = "a" -o $c = "e" -o $c = "i" -o $c = "o" -o $c = "u" ]
    then
        echo "$C is a vowel."
    else
        echo "$C is a consonant."
    fi
done

# end of vowels.sh

: " OUTPUT

Enter a string:
Technetium
T is a consonant.
e is a vowel.
c is a consonant.
h is a consonant.
n is a consonant.
e is a vowel.
t is a consonant.
i is a vowel.
u is a vowel.
m is a consonant.

"
