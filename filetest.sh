#!/bin/bash
############################
# Purpose: To learn file test condition
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################


echo " "
# Check the file exists /etc/passwd

if [ -f "/etc/passwd" ]; then
  echo "Yes, the file /etc/passwd exists"
fi


echo " "

# Check the /etc/shadow file for read permission
if [ -r "/etc/shadow" ]; then
  echo "Yes, you have read permission on /etc/shadow file"
else
  echo "No, you do NOT have read permission on /etc/shadow file"
fi  

echo " "

