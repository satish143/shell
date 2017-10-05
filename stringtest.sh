#!/bin/bash
############################
# Purpose: To learn string test
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : Not needed
# Output : Not needed
###########################

# Capture the output of whoami command and assign it to variable WHOAMI
WHOAMI=`/usr/bin/whoami`

# String test

if [ $WHOAMI == "root" ]; then
  echo " Yes, you are a root user"
else
  echo "No, you are $WHOAMI user"
fi


