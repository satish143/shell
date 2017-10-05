#!/bin/bash
############################
# Purpose: To learn case statment
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################


echo -e "enter user operting system:\c"

read MYCHOICE

if [ ! $MYCHOICE ]; then
  echo "Please give your choice.."
  echo "Usage: $0 <OSNAME>"
  exit
fi
if [ $MYCHOICE == "RHEL" ]; then
                 echo "You have chosen $MYCHOICE"
                   echo "Use yum -y update"
elif [ $MYCHOICE == "Ubuntu" ]; then
                     echo "You have chosen $MYCHOICE"
                     echo "Use apt-get -y update"
elif [ $MYCHOICE == "Solaris" ]; then
                     echo "You have chosen $MYCHOICE"
                     echo "Use package command"
else
                     echo "Not sure about your choice $MYCHOICE"
                     echo "Please try again"

fi

