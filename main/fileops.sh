#!/bin/sh

echo "Enter a filename:"
read filename
touch $filename
echo

echo "File created. Enter contents, press Ctrl+D to end:"
cat > $filename
echo

echo "File contents are:"
cat $filename
echo

echo "Capitalised file contents are:"
tr [a-z] [A-Z] < $filename
echo

echo "Sorted file contents are:"
sort $filename
echo

echo "Enter a keyword to search:"
read keyword
echo "grep\'ing now..."
grep $keyword $filename
echo "grep complete."
echo

echo "Enter a new name for the file:"
read newname
mv $filename $newname
echo

echo "Enter position range to cut text from:"
read pos1
read pos2
cut -c $pos1-$pos2 < $newname
