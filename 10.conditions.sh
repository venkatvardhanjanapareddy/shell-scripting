#!/bin/bash

# lets read the given marks and give grades 

echo "enter marks"
read marks

# lt is less than, gt is greater than

if ($marls -lt 33); then
echo "Fail"
elif ($marks -lt 50); then
echo "third class"
elif ($marks -lt 60); then
echo "second class"
elif ($marks -lt 75); then
echo "first class"
else 
echo "Distinction"
fi