#echo to print any content without quotes
echo This is our first shell script

#echo wiothout quotes will preserves any whitespace
echo This is our first                              shell script  
#echo - use quotes to preserve whitespace
echo "This is our first                              shell script"  

# in this case only "this" will be considered by echo if you don't put the printable content in quotes
echo this 
is 
multiline
string

echo ###########is considered as comment #########
echo "##########" # is a content

echo "this 
is 
multiline
string"

# '\' inside double quotes indicates that this next line is the part/continuation of previous command 
echo "My \
name \
is \
string \
"
echo `My \
name \
is \
string \
`
# -e flag is for escape backlash character
echo -e "This \t is \t bash \t script \t to \t print \t tab"
echo -e "This \v is \v bash \v script \v to \v print \v vertical \v tab"
echo -e "This \n is \n bash \n script \n to \n print \n next \n line"

# 033[0;31m is ascii value to print text in color
echo -e "\033[0;31m fail message here"
echo -e "\033[0;32m success message here"
echo -e "\033[0;33m warning message here"
