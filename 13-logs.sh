#!/bin/bash


user=$(id -u)
log_folder="/var/log/shell-script"
log_file="${log_folder}/${0}.log"


echo "user is $user"
if [ $user -ne 0 ]; then
echo "try installing with sudo access"
exit 1
fi

mkdir -p $log_folder

echo "Installing nginx"

validate(){
if [ $1 -ne 0 ]; then
echo "FAILED: $2" | tee -a $log_file
exit 1
else 
echo "SUCCESS: $2" | tee -a $log_file
fi
}

dnf install nginx -y &>> $log_file
validate $? "installing nginx"


echo "now proceeding to install mysql"

dnf install mysql -y &>> $log_file
validate $? "Installing mysql"

echo "proceeding..."