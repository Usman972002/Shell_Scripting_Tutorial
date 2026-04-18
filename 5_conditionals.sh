#!/bin/bash

read -p "Enter your Name :" user

read -p "Enter your age :" age

if [[ $age > 18 ]];
then
	echo "$user you are Major"
elif [[ age == 18 ]];
then
	echo "$user you are Major"
else
	echo "$user you are Minor"
fi

