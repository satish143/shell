#!/bin/bash
############################
# Purpose: To learn while loop
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################


COUNT=1

while [ $COUNT -le 10 ]
do
   echo "The value of COUNT is $COUNT"
   COUNT=`expr $COUNT + 1`
done

