#!/bin/bash

# to install a server
# we should be a sudo user - check
# if yes proceed, if no exit
# install nginx
# check if it's success

user=$(id -u)
echo "user is $user"
if [ $user -ne 0 ]; then
echo "try installing with sudo access"
exit 1
fi
echo "Installing nginx"

dnf install nginx -y
if [ $? -ne 0 ]; then
echo "error installing nginx server"
exit 1
else 
echo "Installing nginx: SUCCESS"
fi

echo "now proceeding to install mysql"

dnf install mysql -y
if [ $? -ne 0 ]; then
echo "Error installing mysql server .. FAILURE"
exit 1
else
echo "SUCCESS installing nginx and mysql"
fi

echo "proceeding..."