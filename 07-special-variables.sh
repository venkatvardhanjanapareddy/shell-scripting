#!/bin/bash

echo "special variables starts"
echo "This gives all entered args: $@"
echo "This gives the number of arg: $#"
echo "THis gives the args as a single word: $*"
echo "Gives the first arg passed: $1"
echo "This gives the script file name: $0"
echo "Realpath of file: $(realpath $0)"
echo "Gives who is running the script: $USER"
echo "Gives the current user home directory: $HOME"
echo "Gives PWD of the script: $PWD"
echo "Gives PID of the current script: $$"
sleep 10 &
echo "This gives PID of the background script: $!"
wait $! #script waits until the $! command completes
echo "wait over"
echo "Time taken for script execution: $SECONDS"
echo "Gives the Line number: $LINENO"
echo "Gives the previous command exit status: $?"

exit_status=$(($?))
echo "$exit_status"