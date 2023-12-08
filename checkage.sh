#!/bin/bash
AGE=$1
if [[ $AGE -ge 20 ]] && [[ $AGE -lt 30 ]]; then
	echo "You are in your 20s"	
elif [[ $AGE -ge 30 ]] && [[ $AGE -lt 40 ]]; then
	echo "You are in your 30s"
elif [[ $AGE -ge 40 ]] && [[ $AGE -lt 50 ]]; then
	echo "You are in your 40s"
else
	echo at AGE=$AGE, you are nott in the proper range of 21-50
fi
