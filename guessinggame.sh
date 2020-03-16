#! usr/bin/bash
  
# File: guessinggame.sh
# Author: Srimanth Chandraiah
# This scrpt prompts the user to guess the number of files in the current directory. If the number guessed is too high or too low,
# the script continues to prompt till the user guesses the right number of files in the current directory

function getfc(){
    local file_count=`ls -l | wc -l`
    #file_count="$((file_count-1))"
    echo $file_count
 return "$((file_count - 1))"
}

clear
fileCount=$(getfc)

while true; do
    # Prompt the user for a number
    echo 'Guess the number of Files in the current directory: '
    read number
    echo 'You guessed' $number

    if [ "$number" -lt "$fileCount" ]
    then
        echo -e "Your guess was too Low, Try Again"
    elif [ "$number" -gt "$fileCount" ]
    then
        echo -e "Your guess was too high, Try again"
    else
       echo -e "Congrats! You guessed the amount of files in the current directory"
       break;
    fi
done
