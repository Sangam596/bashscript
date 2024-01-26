#!/bin/bash

# while loop will be executed untill the condition become false
answer=$1
# you will not get out of loop until you type yes
while [[ $answer != "yes" ]]; 
do
    read -p "please enter yes " answer
done

# while true
# do echo "This is infinite loop..."
# done

# Print number from 1 to 10
    read -p "please enter the number to start " init 
while [[ ${init} -le 10 ]]
do 
    echo "Number is incremented to ${init}"
    ((init++))
done

#print multication table
# enter bash -x ./scriptname to debug
 multiple=1
read -p "please enter the number to get multiplicatin table " number 
while [[ ${multiple} -le 10 ]]
do 
    echo "Multipication of ${number}x${multiple} $((number*multiple))"
    ((multiple++))
done

# Print line by line
echo -e "My \n name \n is \n Sangamesh \n Bagalkot" | while read line
do echo "print line $line"
done

# Print line by line of a file

cat /etc/password | while read line
do echo "print line $line"
sleep 1
done

# Above block can return as below 
while read line
do echo "print line $line"
sleep 5
done < /etc/password

# Untill loop will be executed until the condition becomes true
read -p "please enter the number for until loop " number2 
initNumber=1
until [[ ${initNumber} -eq 10 ]]
do 
    echo "Number is incremented to $((number2*initNumber))"
    ((initNumber++))
done

# for loop

for variableName in i1 i2 i3 i4 i5 i6 i7 i8
do
    echo "for loop variable $variableName"
done

for variableName in {1..100}
do
    echo "for loop variable $variableName"
done

for variableName in sangam basav shiv raj 
do
    echo "for loop variable $variableName"
done

for variableName in "sangam basav shiv raj "
do
    echo "for loop variable $variableName" # print whole-> for loop variable sangam basav shiv raj
done

for i in * # * represents all files in current directory
do
    echo "each file in pwd $i"
done

for i in *.txt # *.txt represents all text files in current directory
do
    echo $i
done

# difference between $* and $@
# execute like this ./15_loops.sh yes sangam basav shiv raj 
# $*
echo "######## loop one ################"
for i in $*
do
    echo $i
done

echo "######## loop two ################"
for i in $@
do
    echo $i
done

echo "######## loop three ################"
for i in "$*" # accepts all arguments as single argument
do
    echo $i
done

echo "######## loop four ################"
for i in "$@" # accepts all arguments separately
do
    echo $i
done

for word in $(cat first.txt)
do
    echo $word # prints line by line
    sleep 0.20
done

# braek and continue
echo "######## break and continue #############"
anotherNum=1
while [[ $anotherNum -lt 10 ]]; 
do  
    echo $anotherNum
    if [[ $anotherNum -eq 5 ]]
    then
        echo "condition is true number is $anotherNum going to be break the loop"
        break;
    fi
    echo "######## break ${anotherNum}"
    ((anotherNum++))
done
nextNum=1
while [[ $nextNum -lt 10 ]]; 
do  
    echo $nextNum
    ((nextNum++))
    if [[ $nextNum -eq 5 ]]
    then
        echo "condition is true number is $nextNum going to continue the loop"
        continue
    fi
    echo 
        echo "######## continue ${nextNum}" # ######## continue 7 will not be printed
done

# nested loop
# by default break breaks the most inner loop
yetAnotherNum=1
while [[ $yetAnotherNum -lt 3 ]];
do
    for i in item1 item2 item3
    do
    echo "${yetAnotherNum} - ${i}"
    if [[ ${i} == item2 ]];
    then 
        break
    #  break 2
    fi
    done
    ((yetAnotherNum++))
done 
