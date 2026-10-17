#!/bin/bash

#in this we added a condition to check if package is already installed

user=$(id -u)
log_folder="/var/log/shell-script"
log_file="${log_folder}/${0}.log"

# echo "user is $user"
if [ $user -ne 0 ]; then
echo "try installing with sudo access"
exit 1
fi

mkdir -p $log_folder

echo "Script execution started at $(date +"%F %T")" &>> $log_file

validate(){
if [ $1 -ne 0 ]; then
echo "FAILED: $2" | tee -a $log_file
exit 1
else 
echo "SUCCESS: $2" | tee -a $log_file
fi
}

for package in $@
do
    dnf list installed $package &>> $log_file
    if [ $? -ne 0 ]; then 
        echo "Started installing $package"
        dnf install $package -y &>> $log_file
        validate $? "installing $package"
        else
        echo "$package already installed.. SKIPPING"
    fi
done

echo "Script execution ended at $(date +"%F %T")" &>> $log_file