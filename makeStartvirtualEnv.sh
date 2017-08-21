#!/bin/bash

# Purpose: Makes and starts a Python3 Virtual Env. 
# Written By: Steve Christian
# July 20th, 2017

# Makes a virtualenv that uses Python 3
virtualenv -p python3 VirtualEnvNAME

echo Starting Your VirtualEnv

# Activates the VirtualEnv
source VirtualEnvNAME/bin/activate
# Gives it time to spin up
sleep 2s

# Install requirements.txt for needed packages
cd path/to/directory/
if pip install -r requirements.txt ; then
	sleep 120s
	echo Installed requirements.txt
else
	echo "Whoops something happened, try to install the requirements.txt manually"
fi
echo Starting Webserver

# Runs the manage.py with the port 8080
python manage.py runserver 0.0.0.0:8080
