#!/bin/bash

# readonly key word is used to make the variable constant or unchanged
name=sangam
readonly name

echo " name $name"
name=Shiv 
echo "name $name" #ERROR - ./7_readOnlyVar.sh: line 6: name: readonly variableline 6: name: readonly variable

person=Sangamesh
echo "person $person"

# we can unset the variable by using two below methods by assigning a empty or using unset keyword
person=
echo "person $person"

person=Sangamesh Bagalkot # ERROR - ./7_readOnlyVar.sh: line 18: Bagalkot: command not found
person=`Sangamesh Bagalkot` # ERROR -./7_readOnlyVar.sh: line 19: Sangamesh: command not found
person="Sangamesh Bagalkot"
echo "person $person"


unset person
echo "person $person"

# o/p :- ./7_readOnlyVar.sh: line 3: name: readonly variable
# sangam