#!/bin/bash

read -p "Enter UserName" username

echo "hello $username"

sudo useradd -m $username

echo "New User Added"

cat /etc/passwd

