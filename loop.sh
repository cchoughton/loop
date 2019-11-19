#!/bin/bash

#TODO   Add flags to specify time interval between loops
#       Handle empty pipes

clear
echo "LOOPING..."

while read line
do
    pipe=$pipe$line"\n"
done
itr=1
sleep 5
while true
do
    clear
    echo -e "LOOP ITERATION $itr"
    echo -e "-----------------\n"
    echo -e $pipe
    ((itr=itr+1))
    sleep 1
done
