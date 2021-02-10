#!/bin/bash
# Functions (must be defined before use)
func1() {
echo "The message is from function 1"
}
func2() {
echo "The message is from function 2"
}
func3() {
echo "The message is from function 3"
}

# beginning of the main script
# prmpt the user to get their choice 
echo "Enter a number from 1 to 3"
read n
# call the chosen function
func$n

