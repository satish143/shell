#!/bin/bash
############################
# Purpose: To learn create user via script
# Owner  : info@mycompnay.com
# Version: 1.0
# Input  : username and password
# Output : Create the user if does not exists
###########################

# Define your variables
MYUSER=$1
MYPASS="redhat"

# Check the username is given or not
if [ ! $MYUSER ]; then
  echo "Please provide the user name"
  echo "Usage: $0 <username>"
  exit 1
fi


# Check the user who is running the script is running as root user or not
WHOAMI=`/usr/bin/whoami`

if [ $WHOAMI != "root" ]; then
  echo "You MUST be a root to run this script"
  exit 2
fi

# Check the user 

/usr/bin/id $MYUSER 1>/tmp/createuser.log 2>&1

if [ $? -eq 0 ]; then
  echo "The user $MYUSER already exists...exiting out!!!"
  exit 3
fi

# Create the user here

/usr/sbin/useradd $MYUSER 1>/tmp/createuser.log 2>&1

if [ $? -ne 0 ]; then
  echo " We have some serious problem is user creation"
  echo " Check the log /tmp/createuser.log"
  exit 4
fi

echo "$MYPASS" | /usr/bin/passwd --stdin $MYUSER 1>/tmp/createuser.log 2>&1

if [ $? -ne 0 ]; then
  echo "Some problem in password setting for user $MYUSER"
  exit 5
fi

# Adding the user in super user group
echo -e " if u want to grant super user privilege [y/n]: \c";
read n;
if [ $n == y -o $n == Y ]; then

	/usr/sbin/usermod -G wheel $MYUSER
	if [ $? -ne 0 ]; then
	  echo "Some problem in adding user $MYUSER in wheel group"
	  exit 6
	fi
fi

echo "The user $MYUSER created Successfully!!!"
#exit 0 # This line is optional

echo -e "when user login password should chang[y/n]:\c "
read a;
if [ $a == y -o $a == Y ]; then
   passwd -e $MYUSER ;
fi
echo "Thinks "
