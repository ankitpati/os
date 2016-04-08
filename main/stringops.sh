#!/bin/sh

# stringops.sh
# Date  : 07 April 2016
# Author: Ankit Pati

echo "STRING OPERATIONS"
echo

echo "Enter two strings:"
read str1
read str2
echo

while [ "$ch" != "n" ]
do
    clear
    echo "STRING OPERATIONS"
    echo

    echo "String 1: '$str1'"
    echo "String 2: '$str2'"
    echo

    echo "Choose an operation:"
    echo "( 1) Compare"
    echo "( 2) Concatenate"
    echo "( 3) Length"
    echo "( 4) Substring"
    echo "( 5) Reverse"
    echo "( 6) Modify Strings"

    read ch
    echo

    case "$ch" in
    "1")
        if [ "$str1" = "$str2" ]
        then
            echo "Strings are equal."
        else
            echo "Strings not equal."
        fi
        ;;

    "2")
        echo "Concatenated string: $str1$str2"
        ;;

    "3")
        echo "Length of '$str1': `echo -n "$str1" | wc -c`"
        echo "Length of '$str2': `echo -n "$str2" | wc -c`"
        ;;

    "4")
        hlen="`echo -n "$str1" | wc -c`"
        nlen="`echo -n "$str2" | wc -c`"

        if [ "$nlen" = "0" -o "$hlen" -lt "$nlen" ]
        then
            echo "'$str2' not found in '$str1'."
        else
            for pos in `seq \`expr "$hlen" - "$nlen" + 1\``
            do
                for i in `seq "$nlen"`
                do
                    c="`echo -n $str1 | cut -c \`expr "$pos" + "$i" - 1\``"
                    d="`echo -n $str2 | cut -c "$i"`"
                    if [ "$c" != "$d" ]
                    then
                        break
                    fi
                done

                if [ "$c" = "$d" ]
                then
                    echo "'$str2' occurs in '$str1' at position $pos."
                    break
                fi
            done

            if [ "$c" != "$d" ]
            then
                echo "'$str2' not found in '$str1'."
            fi
        fi

        hlen="`echo -n "$str2" | wc -c`"
        nlen="`echo -n "$str1" | wc -c`"

        if [ "$nlen" = "0" -o "$hlen" -lt "$nlen" ]
        then
            echo "'$str1' not found in '$str2'."
        else
            for pos in `seq \`expr "$hlen" - "$nlen" + 1\``
            do
                for i in `seq "$nlen"`
                do
                    c="`echo -n $str2 | cut -c \`expr "$pos" + "$i" - 1\``"
                    d="`echo -n $str1 | cut -c "$i"`"
                    if [ "$c" != "$d" ]
                    then
                        break
                    fi
                done

                if [ "$c" = "$d" ]
                then
                    echo "'$str1' occurs in '$str2' at position $pos."
                    break
                fi
            done

            if [ "$c" != "$d" ]
            then
                echo "'$str1' not found in '$str2'."
            fi
        fi
        ;;

    "5")
        echo -n "Reversed '$str1': "
        l="`echo -n "$str1" | wc -c`"
        while [ "$l" != "0" ]
        do
            echo -n "`echo -n $str1 | cut -c $l`"
            l="`expr "$l" - 1`"
        done
        echo

        echo -n "Reversed '$str2': "
        l="`echo -n "$str2" | wc -c`"
        while [ "$l" != "0" ]
        do
            echo -n "`echo -n $str2 | cut -c $l`"
            l="`expr "$l" - 1`"
        done
        echo
        ;;

    "6")
        echo "Enter two strings:"
        read str1
        read str2
        ;;

    *)
        echo "Incorrect Usage"
        echo
        echo "Do you want to continue? (Y / n)"
        read ch
        continue
        ;;
    esac
    echo

    echo "Do you want to continue? (Y / n)"
    read ch
done

# end of stringops.sh

: " OUTPUT

STRING OPERATIONS

Enter two strings:
hello, world
hello

String 1: 'hello, world'
String 2: 'hello'

Choose an operation:
( 1) Compare
( 2) Concatenate
( 3) Length
( 4) Substring
( 5) Reverse
( 6) Modify Strings

1
Strings not equal.

2
Concatenated string: hello, worldhello

3
Length of 'hello, world': 12
Length of 'hello': 5

4
'hello' occurs in 'hello, world' at position 1.
'hello, world' not found in 'hello'.

5
Reversed 'hello, world': dlrow ,olleh
Reversed 'hello': olleh

Do you want to continue? (Y / n)
n

"
