#!/bin/sh
for a in $(ls); do
	diff -q $1 $a
	diff $1 $a | grep ">"
	printf '\n'
done
