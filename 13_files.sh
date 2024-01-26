#!/bin/bash

# Check File is directory or not
# Block device
# char device
# file exist or not
# file permissions

filePath="/home"

# man test / help test 

if [ -d "$filePath" ]
then
    echo "${filePath} is directory"
elif [ -d "/dev" ]
then
    echo "/dev is directory"
else
    echo "directory does not exist"
fi

if [ -b "/dev/sda" ]
then
    echo "/dev/sda block device exist"
else
    echo "block device does not exist"
fi


if [ -c "/dev/rtc0" ]
then
    echo "/dev/sda char device exist"
else
    echo " char does not exist"
fi

if [ -e "first.txt" ]
then
    echo "first.txt char device exist"
else
    echo "file does not exist"
fi

# check permissions
if [[ -r "first.txt" ]]
then
    echo "have read permissions"
elif [[ -w "first.txt" ]]
then
    echo "have write permissions"
elif [[ -x "first.txt" ]]
then
    echo "have execute permissions"
else
    echo "file does not have any permissions"
fi
   
