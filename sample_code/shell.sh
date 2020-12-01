#!/bin/sh

# This is a comment!
# echo, with two parameters, or arguments - the first is Hello; the second is World.
# Note that echo will automatically put a single space between its parameters.
# --------------------------------------------------------------------------------------------------------------------------------------------------
# echo Hello World         # This is a comment, too!
# echo "1. Hello      World"       # This is a comment, too!
# echo "2. Hello      World"       # This is a comment, too!
# echo "3. Hello World"
# echo "4. Hello * World"
# echo 5. Hello      World
# echo "6. Hello" World
# echo 7. Hello "     " World
# echo "8. Hello "*" World"
# echo `ls -l` world
# echo '10. hello' world
# echo 11. Hello * World


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # Variables # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# The shell does not care about types of variables; they may store strings, integers, real numbers - anything you like.
# Note though that special characters must be properly escaped to avoid interpretation by the shell.
# --------------------------------------------------------------------------------------------------------------------------------------------------
# MY_MESSAGE="Hello World"
# echo $MY_MESSAGE
# MY_SHORT_MESSAGE=hi
# echo $MY_SHORT_MESSAGE
# MY_NUMBER=1
# echo $MY_NUMBER
# MY_PI=3.142
# echo $MY_PI
# MY_OTHER_PI="3.142"
# echo $MY_OTHER_PI
# MY_MIXED=123abc
# echo $MY_MIXED

# We can interactively set variable names using the read command; the following script asks you for your name then greets you personally:
# --------------------------------------------------------------------------------------------------------------------------------------------------
# echo "What is your name?"
# read MY_NAME
# echo "Hello $MY_NAME - hope you're well."
# echo "MYVAR is: $MYVAR"
# MYVAR="hi there"
# echo "MYVAR is: $MYVAR"

# Reading parameters passed while execution
# echo "I was called with $# parameters"
# echo "My name is $0"
# echo "My first parameter is $1"
# echo "My second parameter is $2"
# echo "All parameters are $@"

# Default variables
echo -n "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
  myname=`whoami`
fi
echo "Your name is : $myname"

# Creating file programitacally
# --------------------------------------------------------------------------------------------------------------------------------------------------
# echo "What is your name?"
# read USER_NAME
# echo "Hello $USER_NAME"
# echo "I will create you a file called ${USER_NAME}_file"
# touch "${USER_NAME}_file"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # Loops # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# For Loops
# --------------------------------------------------------------------------------------------------------------------------------------------------
# for i in 1 2 3 4 5
# do
#   echo "Looping ... number $i"
# done

# for i in hello 1 * 2 goodbye 
# do
#   echo "Looping ... i is set to $i"
# done

# While Loops
# --------------------------------------------------------------------------------------------------------------------------------------------------
# INPUT_STRING=hello
# while [ "$INPUT_STRING" != "bye" ]
# do
#   echo "echo 1"
#   echo "echo 2"
#   echo "Please type something in (bye to quit)"
#   read INPUT_STRING
#   echo "echo 3"
#   echo "You typed: $INPUT_STRING"
#   echo "echo 4"
#   echo "echo 5"
# done

# while :
# do
#   echo "Please type something in (^C to quit)"
#   read INPUT_STRING
#   echo "You typed: $INPUT_STRING"
# done

# If .. Then .. Else
# --------------------------------------------------------------------------------------------------------------------------------------------------
# if [ "a" != "b" ]
# then
#   echo "TRUE";
# else
#   echo "FALSE";
# fi

# VARIABLE="test"
# if  [ "$VARIABLE" == "test" ]; then
#     echo "test"
# elif if  [ "$VARIABLE" == "test2" ]; then
#     echo "test2"
# else
#     echo "None of the above"
# fi