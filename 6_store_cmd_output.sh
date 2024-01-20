#1/bin/bash

pwd
#Syntax to run and store the o/p of any command to the variable
current_working_directory=$(pwd)
current_working_directory1=`pwd`

echo "Working directory ${current_working_directory}"
echo "Working directory ${current_working_directory1}"
echo "list of files $(ls)"
echo list of files `ls`

date_time=$(date +"%D-%T")
echo "${date_time}"