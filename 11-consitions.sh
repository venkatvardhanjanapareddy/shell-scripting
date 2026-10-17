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
echo "proceeding"

dnf install nginx -y
if [ $? -ne 0 ]; then
echo "error installing nginx server"
exit 1
fi

echo "now proceeding to install mysql"

dnf install mysqll -y
if [ $? -ne 0 ]; then
echo "Error installing mysql server"
exit 1
fi

echo "success installing nginx and mysql"