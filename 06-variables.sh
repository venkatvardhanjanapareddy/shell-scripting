#!/bin/bash

#this below code still shows the entered credentials/text
# echo "Enter username:"
# read USER_NAME 
# echo "Enter password:"
# read PASSWORD

# echo "user name is $USER_NAME and password is $PASSWORD"


# using -s silent hides the entered credentials/text
echo "Enter username:"
read -s USER_NAME 
echo "Enter password:"
read -s PASSWORD

echo "user name is $USER_NAME and password is $PASSWORD"