#!/bin/bash


user=$(id -u)
echo "user is $user"
if [ $user -ne 0 ]; then
echo "try installing with sudo access"
exit 1
fi
echo "Installing nginx"

validate(){
if [ $1 -ne 0 ]; then
echo "error $2"
exit 1
else 
echo "$2: SUCCESS"
fi
}

dnf install nginx -y
validate $? "installing nginx"


echo "now proceeding to install mysql"

dnf install mysql -y
validate $? "Installing mysql"

echo "proceeding..."