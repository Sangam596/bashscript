#!/bin/bash

string="my name is Sangam"
# variableName^ is used to covert first character of variable to upper case
# variableName^^ is used to covert all characters of variable to upper case
echo "as it is ${string}" # my name is sangam
echo "first letter in capital ${string^}" # My name is sangam
echo "all content in capital ${string^^}" # MY NAME IS SANGAM

# variableName, is used to covert first character of variable to lower case
# variableName,, is used to covert all characters of variable to lower case

string="My name is Sangam"
echo "as it is ${string}" # My name is Sangam
echo "first letter in small ${string,}" # my name is Sangam
echo "all content isn small ${string,,}" # my name is sangam

# #variableName is used to get the legth of the variable
echo "length of string is ${#string}" # 17

string="abcsangamabcxyz sangamabc"

# after : one parameter = index from which to the legth of the variable(positive)
# after : one parameter = index from which to the legth of the variable(nagative)
# after : two parameters = index from which to the no. of characters of the variable
# starting index from left is zero wherein from right is one
echo "string is ${string}" 
echo "substring from 0th index to length ${string:0}" # abcsangamabcxyz sangamabc
echo "substring from 1st index to length is ${string:1}" # bcsangamabcxyz sangamabc
echo "substring from 3rd index to length is ${string:3}" # sangamabcxyz sangamabc
echo "substring from right is ${string:-1}"            # abcsangamabcxyz sangamabc
echo "substring from right to 5 chars is ${string: -1}" # c

echo "substring from 0th index to 3 chars is ${string:0:3}" # abc
echo "substring from 3rd index to 6 chars is ${string:3:6}" # sangam

echo "remove shortest string starting from substring ${string#a*c}" # sangamabcxyz sangamabc
echo "remove longest string starting from substring ${string##a*b}" # c
echo "remove shortest string from substring ${string#s*m}" #abcsangamabcxyz sangamabc because s is in between

echo "remove shortest string ending from substring ${string%m*c}" # abcsangamabcxyz sanga
echo "remove logest string ending from substring ${string%m*b}" # abcsangamabcxyz sangamabc because b is in between & string is ending with c 
echo "remove shortest string ending from substring ${string%%a*b}" # abcsangamabcxyz sangamabc because string is ending with c 
echo "remove shortest string ending from substring ${string%%a*c}" # empty  
echo "remove shortest string ending from substring ${string%%b*c}" # a 

echo "replace first occurence of substring from string ${string/abc/xyz}" # xyzsangamabcxyz sangamabc
echo "replace all occurences of substring from string ${string//abc/xyz}" # xyzsangamxyzxyz sangamxyz

echo "remove first occurence of substring from string ${string/abc}" # sangamabcxyz sangamabc
echo "remove all occurences of substring from string ${string//abc}" # sangamxyz sangam

modifiedString=${string//abc}

echo "remove all occurences of substring from string ${modifiedString//xyz}" # sangam sangam
modifiedString=${modifiedString//xyz}
echo "remove first occurence of substring from string ${modifiedString/sangam}" # sangam


