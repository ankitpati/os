#!/bin/sh

# fileops.sh
# Date  : 04 February 2016
# Author: Ankit Pati

echo "Enter a filename:"
read filename
touch "$filename"
echo

echo "File created. Enter contents, press Ctrl+D to end:"
cat > "$filename"
echo

echo "File contents are:"
cat "$filename"
echo

echo "Capitalised file contents are:"
tr [a-z] [A-Z] < "$filename"
echo

echo "Sorted file contents are:"
sort "$filename"
echo

echo "Enter a keyword to search:"
read keyword
echo "grep\'ing now..."
grep "$keyword" "$filename"
echo "grep complete."
echo

echo "Enter a new name for the file:"
read newname
mv "$filename" "$newname"
echo

echo "Enter position range to cut text from:"
read pos1
read pos2
cut -c $pos1-$pos2 < "$newname"

# end of fileops.sh

: " OUTPUT

Enter a filename:
fileop.txt

File created. Enter contents, press Ctrl+D to end:
Technetium is an element with atomic number 43.
Boron is an element with atomic number 5.

File contents are:
Technetium is an element with atomic number 43.
Boron is an element with atomic number 5.

Capitalised file contents are:
TECHNETIUM IS AN ELEMENT WITH ATOMIC NUMBER 43.
BORON IS AN ELEMENT WITH ATOMIC NUMBER 5.

Sorted file contents are:
Boron is an element with atomic number 5.
Technetium is an element with atomic number 43.

Enter a keyword to search:
Technetium
grep\'ing now...
Technetium is an element with atomic number 43.
grep complete.

Enter a new name for the file:
fileops.txt

Enter position range to cut text from:
3
7
chnet
ron i

"
