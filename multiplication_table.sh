#!/bin/bash
#
# Question 3 - Multipliation Table
# Operating Systems Midterm Exam
#
# Daniel Dreise
# Student ID: 7996630
#
# All Rights Reserved
#
# October 19, 2019


# Main menu

echo
echo "************** Multiplication Table **************"
echo
echo "This program multiplies a user given number with" 
echo "numbers between 0 and 10. The user will be"
echo "prompted to input two variables. The first is the"
echo "number they wish to multiply, and the second is "
echo "the filename they wish to output it to."
echo
echo "An error code will display if user inputs"
echo "incorrectly."
echo
echo "Type \"Quit\" to exit program."
echo
echo "**************************************************"
echo


# Infinite loop until user exits
while true 
do

    echo 
    echo -n "Enter a multiplier and filename (Format: MULTIPLIER FILENAME): "


    read -a usr_input                   # wait for user input, turn string into array separatad by spaces with "-a"

    
    # if user types "Quit", exit program
    if [ ${usr_input[0]} = 'Quit' ]     
    then
        exit
    fi

    # if user does not input exactly 2 values, exit with error message
    if [ ${#usr_input[@]} != 2 ]        
    then
        echo "E: Need a multiplier and a file name to invoke this program properly!"
        exit 1
    fi


    # loop 10 times multiplying user chosen value by incrementing value
    for (( i = 0; i <= 10; i++ ));
    do
        # Multiply incrementing value by user chosen value
        a=$(( i*${usr_input[0]} ))

        # Output new table to file. Exit with error code if file was unable to be opened.
        echo "$a" >> ${usr_input[1]} || { echo "E: Failed to open file"; exit 2; }

    done


    cat ${usr_input[1]}         # output file contents to terminal
    

    rm ${usr_input[1]}          # delete created file


done
