#!/usr/local/Cellar/bash/5.0.11/bin/bash
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



while [ "$usr_input" != "Quit" ]; do

    #echo ${BASH_VERSION}
    echo 
    echo -n "Enter a multiplier and filename (separated by a space): "

    read -a usr_input     # wait for user input

    if [ ${usr_input[0]} = 'Quit' ]
    then
        exit
    fi

    #echo "first word ${usr_input[0]} "
    #echo "second word ${usr_input[1]} "


    for (( i = 0; i <= 10; i++ ));
    do
        a=$(( i*${usr_input[0]} ))
        echo "$a" >> ${usr_input[1]}

    done

    cat ${usr_input[1]}
    
    rm ${usr_input[1]}








done
