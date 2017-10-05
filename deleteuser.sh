#!/bin/bash
############################
# Purpose: To learn for loop
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################

FILENAME=$1

if [ ! -f "$FILENAME" ]; then
 echo "Please give the correct file name"
 echo "Usage: $0 <filename>"
 exit
fi

for MYUSER in `cat $FILENAME`
do
	/usr/sbin/userdel $MYUSER
	rm -rf /home/$MYUSER
	rm -rf /var/spool/mail/$MYUSER
done


