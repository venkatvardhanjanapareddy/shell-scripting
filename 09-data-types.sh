#!/bin/bash

#by default shell consider all the values as strings. We should tell it if it's int.

var1=23
var2=37
var3="DevOpsAWS"

count=$var1+$var2
echo "total with just adding variables with + is: $count"

total=$(($count))
echo "total with dollar and parenthesis is: $total"

sumwithstring=$(($var1+$var2+$var3)) #string is considered as 0 value
echo "The string variable is added, the total is: $sumwithstring" 