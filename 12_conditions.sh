#1/bin/bash

if echo "Hello, world!">/dev/null # redirecting the echo content to /dev/null to avoid printing
then
    echo "echo command executed successfully"
fi

echo "If condition completed"

if echop "Hello, world!">/dev/null # redirecting the echo content to /dev/null to avoid printing
then
    echo "echo command executed successfully"
else echo "echo command failed"
fi

if grep -i sangam 3_variable.sh
then
    echo "Found Sangam inside variable.sh print the result of grep"
fi

if grep -i sangam 3_variable.sh>/dev/null
then
    echo "Found Sangam inside variable.sh will not print the result of grep"
fi




#test command is used to check file types & compare values
number=5

checkNumber(){
    echo "Checking number Before inside function ${number}"
    local number=10
    echo "Checking number After inside function ${number}"
    if test $number -eq 5
then
    echo "Number is equal to 10"
else
    echo "Number is not equal to 10"
fi
}    
echo "Checking number Before ${number}"
checkNumber "${number}" 
echo "Checking number After ${number}"

# test command has the alias as '[' as start & ']' as end of test

 if [ $number -ne 6 ]
then
    echo "Number is not equal to 6"
else
    echo "Number is equal to 6"
fi

if [ "sangam" == "sangam" ]
then echo "1: both strings are equal"
fi

if [ sangam == sangam ]
then echo "2: both strings are equal"
fi

name="sangam bgk"
if [ $name == "sangam bgk" ]
then echo "3: both strings are equal" # Error : ./12_conditions.sh: line 65: [: too many arguments
fi

if [ "$name" == "sangam bgk" ]
then echo "4: both strings are equal"
fi

otherName="sangam bgk"
if [ "${name}" == "${otherName}" ]
then echo "5: both strings are equal"
fi

#[[ ]] is advanced vesrion of the []

if [[ ${name} == ${otherName} && -n ${name} ]]
then echo "6: length of string is equal & non zero"
fi

ls && echo "ls command ran successfully" && date
 ping -c 1  8.8.8.8 && echo "internet wo
rking fine"

otherName1="sangam"
if [[ ! ${name} == ${otherName1}|| -z ${name} ]] 
then echo "7: length of string is not equal"
fi

if [[ -n ${otherName} ]]
then echo "8: length of string is non zero ${#otherName}"
fi

zero=""
if [[ -z ${nonZero} ]]
then echo "9: length of string is zero ${#zero}"
fi


#  check if the user is Linux and root
#  ping -c 1 8.8.8.8 && echo "interenet is working fine"
# ping -c 1 8.8.8.8>/dev/null && echo "interenet is working fine"
OS_TYPE=$(uname)
if [[  ${OS_TYPE} == "Linux" ]]
then 
    if [[ ${UID} -eq 0 ]]
    then
        echo "user is root and os is Linux"
    fi
else echo "os is not Linux"
fi
if [[  ${OS_TYPE} == "Linux" || ${OS_TYPE} == "MINGW64_NT-10.0-22631" || ${UID} -eq 0 ]]
then 
    echo "user is root or os is Linux"
fi