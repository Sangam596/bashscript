#!/bin/bash

# Fucntions are set of code to perform a specific task repeatedly
printAnything # ./11_functions.sh: line 4: printAnything: command not found
function printAnything {
    echo "printAnything : This is function without arguments"
}

function addNumbers (){
    echo "addNumbers $((1+2))" # 3
    echo "This is function without arguments"
}

functionWithoutKeyword(){
    echo "withoutKeyword : This is function without function keyword"
}

#Irrerespective of the sequence of the function declearations the function will be executed based on the function call or invoking the function
functionWithoutKeyword
addNumbers
printAnything

function addTwoNumbers (){
    echo "addNumbers $(($1+$2))" # 7 # 42582716040
    echo "script file Name ${0}" # ./11_functions.sh
    echo "Function Name ${FUNCNAME}" # addTwoNumbers
    echo "This is function with arguments"
}

addTwoNumbers "3" "4"
addTwoNumbers "37861328713" "4721387327"

packageName="nginx"

install(){
    echo "Installing  1 $1 $2"
    packageName="k8"
    myName="Sangam"
    local anotherName="Basav" #local keyword is use to make the variable locally available within the block of code 
    echo "Installing  2 $1 $2"
}
echo "packageName ${packageName}"
echo "myName=${myName}"
echo "anotherName=${anotherName}"
install ${packageName} "docker"
echo "myName=${myName}"
echo "anotherName=${anotherName}"
echo "packageName ${packageName}"

# echo $? will print the error code of last command execution
# if $? returns 0 then command execution is successful otherwise failure or error



