#!/bin/bash
############################
# Purpose: To learn logical test
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################


MARKS=$1

# If the marks are not given, exit out with message
# Use of not condition
if [ ! $MARKS ]; then
 echo " Usage: $0 <number>"
 exit # Stop the script here itself
fi

# Use of OR condition
if [ $MARKS -le 100  -a $MARKS -gt 1 ]; then
	if [ $MARKS -gt 65 -a $MARKS -le 100 ]; then
 		echo "Student Result: First Class"
	elif [ $MARKS -gt 55 -a $MARKS -le 65 ]; then
 		echo "Student Result: Second Class"
	elif [ $MARKS -gt 45 -a $MARKS -le  55 ]; then
 		echo "Student Result: Third Class"
	else
 		echo "Student Result: Failed"
	fi
else
	echo " Usage: $0 <number between 1 and 100"
	exit
fi

