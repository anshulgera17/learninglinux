#!/bin/bash
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

echo -e "Enter some character : \c"
read value

case $value in 
	[a-z] ) 
	echo "user entered $value a to z" ;;
	[A-Z] ) 
	echo "user entered $value A to Z" ;;
	[0-9] ) 
	echo "user entered $value 0 to 9" ;;
	? )  
	echo "user entered $value special character" ;;
	* )
	echo "unknown input" ;;
esac
exit 0

# if second case won't work then set LANG=C
