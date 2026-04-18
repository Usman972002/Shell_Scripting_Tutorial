#!/bin/bash

# this is an function definition

function is_Eligible_To_Vote(){
read -p "Enter your Name :" user
read -p "Enter your age :" age

if [[ $age -ge 18 ]];
then
	echo "$user you are eligible to Vote"
else
	echo "$user you are not eligible to Vote"
fi
}

# Calling the function
is_Eligible_To_Vote
