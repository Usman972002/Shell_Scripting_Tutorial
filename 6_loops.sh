#!/bin/bash

# for loop

for (( i=1; i<=3; i++ ))
do
	mkdir "demo$i"
done

# While Loop

num=1
while [[ $num -le 5 ]]
do
	echo "$num"
	((num++))
done
