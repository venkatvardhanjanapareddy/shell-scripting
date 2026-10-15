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


# instead of using $(()) and declaring the variable as int
declare -i canada=7
canada=canada+3

echo "The sum of canada is: $canada"


# /////////////////////////////////// array
sweets=("jalebi" "gulab jamun" "mysorepak")
echo "All sweets ${sweets[@]}"
echo "first sweet is: ${sweets[0]}"

# the significance of {} braces is shown below

name="Venkat Vardhan J"
echo "$nameanapareddy" #this don't give any output as there is no variable named nameanapareddy

echo "${name}anapareddy" #this give Venkat Vardhan Janapareddy, using {} will help the sheel to understand what is variable name and considers the text inside it.