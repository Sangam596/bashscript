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




#test command is used to compare values
number=5

checkNumber(){
    echo "Checking number Before inside function ${number}"
    local number=10
    echo "Checking number After inside function ${number}"
    if test $number -eq 5
then
    echo "Number is equal to 5"
else
    echo "Number is not equal to 5"
fi
}    
echo "Checking number Before ${number}"
checkNumber "${number}" 
echo "Checking number After ${number}"
