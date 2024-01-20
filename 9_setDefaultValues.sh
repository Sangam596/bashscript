#!/bin/bash

read -p " please enter your name " name

# is the user is not giving any input or name is empty, we can set the default value

name=${name:-world}
echo "Hello ${name}" # if you enter any i/p then the o/p will be Hello i/p provided otherwise It will be Hello  world
# in this case also we setting a default value as Basav
yourname=${unsetvariable-Basav}
echo "yourname ${yourname}" # yourname Basav
#In both cases we set the default value then what's the difference between :- & - sign while assigning the value to the variable
# :- will set value to the variable when the variable is unset or set or empty
# - will set value to the variable when the variable is unset only

#set the variable to empty
myname=""
testVariable="${myname-Shiv}" 
echo "testVariable ${testVariable}" # o/p - testVariable is set to empty so no default value is stored

test1Variable="${myname:-Shivaraj}" 
echo "test1Variable ${test1Variable}" # test1Variable Shivaraj

# randomVariable is not set here
anotherTestVariable="${randomVariable-Sangam}" 
echo "anotherTestVariable ${anotherTestVariable}" # anotherTestVariable Sangam

anotherTest1Variable="${randomVariable:-Sangamesh}"
echo "anotherTest1Variable ${anotherTest1Variable}" # anotherTest1Variable Sangamesh

# how to throw error & terminate if the value is not set
test="sangamesh bagalkot"  # variable is set here so no error is thrown
: ${test:?" Please set the variable "}

echo $test

: ${test1:?" Please set the variable "}
echo $test1
