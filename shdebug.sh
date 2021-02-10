#!/bin/bash
if [ "$1" != "" ]; then set -x; fi

echo "Do you want to destroy your entire file system?"
read response

case "$response" in
	"yes") echo "I hope you know what you are doing!";
		echo "I am supposed to type: rm -rf /";
		echo  "But I refuse to let you commit suicide";;

	"no") echo "You have some common sense! Aborting...";;
	"y" | "Y" | "YES" ) echo "I hope you know what you are doing !";
		echo "I am supposed to type: rm -rf /";
		echo "But I refuse to let you commit suicide";;
	"n" | "N" | "NO" ) echo "You have some common sense! Aborting...";;
	*  ) echo "You have to give an answer!" ;;
esac
exit 0
