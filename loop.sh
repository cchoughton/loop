#!/bin/bash

#TODO   Add flags to specify time interval between loops

IFS=''

if [ "$#" -eq 0 ];
    then echo "Nothing to do"
    exit 2
fi

itr=1
while true
do
    clear
    echo -e "LOOP ITERATION $itr"
    echo -e "-----------------\n"
    $@
    ((itr=itr+1))
    sleep 1
done
