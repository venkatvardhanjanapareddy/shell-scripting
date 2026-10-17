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