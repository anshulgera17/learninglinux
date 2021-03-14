#!/bin/bash
echo Give two strings to compare:
echo ""
read str1 str2
echo ""
if [[ "$str1" == "$str2" ]]; then
	echo "the first string: $str1, is the same as the second string: $str2"
else
	echo "the first string: $str1, is not the same as the second string: $str2"
fi

