#!/bin/bash

# to install a server
# we should be a sudo user - check
# if yes proceed, if no exit
# install nginx
# check if it's success

user=$(id -u)
echo "user is $user"