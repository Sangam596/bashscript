#!/bin/bash

#to debug the script enter the command bash -x ./scriptname from command
# to add debug command inside the script use set -x as below
# set -e used to terminate the script when error occurs 
# or use set -ex or set -xe

set -x
set -e
# set -xe
echo "My name is Sangam"
var=5
echo "var is ${var}"
testVariable = 10
echo "testVariable is ${testVariable}"
echo "command 1"
echo "command 2"
echo "command 3"