#!/bin/bash



echo -e "What directory would you like to check for?\n"

read check_directory

echo -e ""

directory_checked=$(find ./ -name $check_directory -type d | grep $check_directory)

if [[ $directory_checked == "./$check_directory" ]]; then
        echo -e "The directory $check_directory already exist"
elif [[ $directory_checked != $check_directory ]]; then
        echo -e "does not exist would you like to create it? (Type \"yes\" or \"no\") \n"
        read answer1
        echo -e ""
        if [[ $answer1 == "yes" ]]; then
                mkdir $check_directory
                echo -e "$check_directory has been created\n"
        else
                echo -e "That was not an option please rerun the script and try again\n"
                exit
        fi
else
       exit
fi

echo ""

echo -e "What file  would you like to check for?\n"

read check_file

echo ""

file_checked=$(find ./$check_directory -name $check_file -type f | grep $check_file)

if [[ $file_checked == "./$check_directory/$check_file" ]]; then
        echo -e "The file $check_file already exist"
elif [[ $file_checked != $check_file ]]; then
        echo -e "does not exist would you like to create it? (Type \"yes\" or \"no\") \n"
        read answer1
        echo -e ""
        if [[ $answer1 == "yes" ]]; then
                touch ./$check_directory/$check_file
                echo "$check_file has been created"
        else
                echo "That was not an option please rerun the script and try again"
                exit
        fi
else
       exit
fi
