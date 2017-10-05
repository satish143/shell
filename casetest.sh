#!/bin/bash
############################
# Purpose: To learn case statment
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################

MYCHOICE=$1

if [ ! $MYCHOICE ]; then
  echo "Please give your choice.."
  echo "Usage: $0 <OSNAME>"
  exit
fi

case $MYCHOICE in 
		RHEL)
		     echo "You have chosen $MYCHOICE"
		     echo "Use yum -y update"
		     ;;
		Ubuntu)
		     echo "You have chosen $MYCHOICE"
		     echo "Use apt-get -y update"
		     ;;
		Solaris)
		     echo "You have chosen $MYCHOICE"
		     echo "Use package command"
		     ;;
		*)
		     echo "Not sure about your choice $MYCHOICE"
		     echo "Please try again"
		     ;;
esac


	




