#This is called shebang - which indicates the type of shell to use for script execution
#!/bin/bash
# - is used for comments or non executable content

#You can use the commands directly inside the script the way you write commands on command
echo "This is my first shell script" # This is the comment
ls 
pwd 

sleep 10

echo done

#while running any script you need to run that script with the ./ because that represents current working directory
#run the command type -a command to know the command/word is shell builtin or reserved keyword
#echo $PATH - to know the all builtin/binary paths available in system
#cat /etc/shells to know what are shell types available on system

