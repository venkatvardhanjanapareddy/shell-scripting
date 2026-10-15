#!/bin/bash

#env variables for a person should be given in ~/.bashrc 
# after editing .bashrc file enter "source .bashrc" in terminal fro immediate o/p

#env variables for all the login users should be given in /etc/profile.d/<file-name.sh>
# logout and login to get the changes

#for env variables we should use capital case
echo "$FULLNAME" #gave in .bashrc file
echo "$SPECIALIZATION" #gave in /etc/profile.d/file-name.sh 
echo "$YEARSEXP" #gave in terminal, it only lives until logout