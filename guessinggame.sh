#! usr/bin/bash
​
# File: guessinggame.sh
# Author: Srimanth Chandraiah
# This scrpt prompts the user to guess the number of files in the current directory. If the number guessed is too high or too low,
# the script continues to prompt till the user guesses the right number of files in the current directory
​
function getfc(){
    local file_count=`ls -1A | wc -l`
    echo $file_count
}
​
clear
fileCount=$(getfc)
​
while true; do
    # Prompt the user for a number
    echo 'Guess the number of Files in the current directory(Non numeric input will be ignored): '
    read number
​
    #Sanitize the user input
    number="`echo "${number}"|tr -cd '[:digit:]'`"
​
    if [[ $((number)) != $number ]]; then
        echo "Please enter a valid number!"
        continue
    fi
​
    echo 'You guessed' $number
​
    if [ "$number" -lt "$fileCount" ]
    then
        echo -e "Your guess was too Low, Try Again"
    elif [ "$number" -gt "$fileCount" ]
    then
        echo -e "Your guess was too high, Try again"
    else
       echo -e "Congrats! You guessed the correct number  of files in the current directory"
       break;
    fi
done
