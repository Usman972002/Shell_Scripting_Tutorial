#!/bin/bash

<< task
Deploy a Django App and 
handle the code for errors
task

code_clone(){
	echo "Cloning the Django app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y
}

required_restarts(){
	echo "Restarting"
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	echo "Deploying....."
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "********************* DEPLOYMENT PROCESS *******************"
if ! code_clone; then
	echo "The Code Directory exists"  
	cd django-notes-app
fi

if ! install_requirements; then
	echo "Installation Failed"
	exit 1
fi

if ! required_restarts; then
	echo "System Fault Identified"
	exit 1
fi

deploy

echo "****************** SUCEESSFULLY DEPLOYED ****************"
