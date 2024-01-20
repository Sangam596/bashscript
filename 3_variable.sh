#!/bin/bash

#Follow the basis naming convention to declear variables

#There two types of variables 1) System Defined variables 2) User Defined variables

#User Defined variables 1) Global variables 2) Local variables
#there shouldn't be space after the variable and value
 name="Sangam"
 age="27"

# Defined variables can be accesses in below ways
 echo "My name is $name and my age is $age"

#Best practice to use the variables
 echo "My name is ${name} and my age is ${age}"

 work="programm"
 var="ing"
 echo "i am working"
 echo "i am ${work}${var}"

 #System Defined variables
 # to print system variables
 #env remove # while priting system environment variable
 # man bash / help bash - to get more information on Shell Variables etc 
 echo SHELL ${SHELL} # which shell
 echo HOME ${HOME} 
 echo OSTYPE ${OSTYPE}
 echo process ID ${$} # process ID
 echo parent process ID ${PPID} # parent process ID / ${$}
 echo present working directory ${PWD}
 echo HOSTNAME ${HOSTNAME}
 echo user ID ${UID}
#  UID ="5000"
 echo user ID ${UID} # readonly varaible
#  echo user Name ${UNAME}
#  echo group ID ${GID}

sleep 5
 echo ${SECONDS} # to know time taken to execute the script
