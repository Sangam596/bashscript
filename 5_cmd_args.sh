#!/bin/bash

# Command line arguments are extra parameters given along with the script execuation in command line

# execute this file with ./5_cmd_args.sh Node Production
# 1st argument is always the name of the executable file
echo "your first argument is ${0}"
echo "your second argument is ${1}"
echo "your third argument is ${2}"
echo "total number of args you passed $#"
echo "you passed these args seperately $@"
echo "you passed these args in the form of string $*"
#there should not be space between variable and value because cmd with consider it variable as command & value as flag 
#ex: ls -l
#let's say you are assigning as name= sangam then the space right after "=" sign will be assigned to the name variable will throw command/name not found error
#in case of or name =sangam, name is considered as command & =sangam flag will throw command/name not found error
app=${1}
env=${2}

echo "Your ${app} application is running on ${env} environment"
