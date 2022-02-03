#!/bin/sh
cd $2
for a in $(find . -maxdepth 1 -not -type d | grep -v '$1'); do
	diff -q $1 $a
	diff $1 $a | grep ">"
	printf '\n'
done
