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

dnf install nginxyx -y
if [ $? -ne 0 ]; then
echo "error installing server"
fi

echo "still proceeding"