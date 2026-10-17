#!/bin/bash

echo "Arguments passed: $@"
echo "count: $#"
echo "as single word $*"
echo "1st arg $1"
echo "file name $0"
echo "realpath is $(realpath $0)"
echo "to know the user $USER"
echo "to know pwd $PWD"
echo "to get the line no. $LINENO"
echo "to get the pid $$"
sleep 10 & # & is used to make it run background
echo "to get the background code pid $!"
echo "to know if the previous line is a success $?"
echo "script execution time $SECONDS"

# varaibles, data types, conditions, loops, functions, error handling

my_name=vardhan
echo "User name is $my_name"

var1=3
var2=6

var3=$(($var1+$var2))
echo $var3

#datatypes
declare -i var5=10
var5=var5+1
echo "int declaring $var5"

#array
bikes=("ktm250" "rc200" "scram400x")
echo "${bikes[@]}"
echo "${bikes[0]}"