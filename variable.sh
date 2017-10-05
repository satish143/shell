#!/bin/bash
############################
# Purpose: To learn shell variables
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Print message on screen
###########################

# It will take from env
echo "My Company name is $COMPNAME"

COMPNAME=infosys

# It will take from the script
echo "My Company name is $COMPNAME"


echo "Please give me your comp name :"
read COMPNAME


# It will take from the keyboard
echo "My Company name is $COMPNAME"





