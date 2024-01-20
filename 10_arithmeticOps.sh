#!/bin/bash

a=4
b=2

echo "a+b" # a+b
echo "$(a+b)" # ./10_arithmeticOps.sh: line 7: a+b: command not found
echo "$(($a+$b))" # 6
echo "$((a-b))" # 2
echo "$((a*b))" # 8
echo "$((a/b))" # 2
echo "$((a%b))" # 0
echo "$((a**b))" # 16
echo "$((b**a))" # 16

((b++)) # b = b+1 # postincrement
echo $b # 3

((++a)) # a = a+1 # preincrement
echo $a # 5

c=7
echo $((b++)) # 3, b = b
echo "$((c++))" # 7 
echo "$((++a))" # 6