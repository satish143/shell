#!/bin/bash
############################
# Purpose: To learn number test
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################


MARKS=$1

if [ $MARKS -gt 65 ]; then
 echo "Student Result: First Class"
elif [ $MARKS -gt 55 ]; then
 echo "Student Result: Second Class"
elif [ $MARKS -gt 45 ]; then
 echo "Student Result: Third Class"
else
 echo "Student Result: Failed"
fi

 
 
