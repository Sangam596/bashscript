#!/bin/bash

# read is used to take the input from the user
read user
read age
echo ${REPLY}

echo "Hello ${user}, your age is ${age}"
#by default the user i/p will be stored in REPLY variable

# -p flag is used for prompting the user
echo ""
#here echo is used to give the line spacing
read  -p "Please enter your Name " user
read  -p "Please enter your password " pass

echo "Hello ${user}, \
your age is ${pass}"

# Now the the is visible on the terminal when user types his password so to avoid that 
# use secret flag as -s or -sp for secret with prompt flag
echo ""
read  -p "Please enter your Full Name " user
read  -sp "Please enter your secret " secret

echo "Hello ${user}, \
your age is ${secret}"

echo "Please enter your 3 fevorite colours"
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]}:-)"