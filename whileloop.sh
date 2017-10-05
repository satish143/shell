#!/bin/bash
############################
# Purpose: To learn while loop
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################


ANS=Y # Initialize Condition

while [ $ANS == Y -o $ANS == y ]  # Works only when True
do
  
  echo "Please enter the name of the user you wish to add : "
  read MYUSER   # Take the user name here

  ./createuser.sh $MYUSER


  echo "Do you want to continue [Y/N]?"
  read ANS		# Condition Modifier

done


