#!/bin/bash

# Purpose: Install PostgreSQL 9.6 on CentOS 6 Server
# Author: Steve Christian
# Date: 14 MAR 2017
# Version: 2.0

cd /

# Need this or dependencies might resolve to the postgresql supplied by the base repository
sed -i '$ a exclude=postgresql*' /etc/yum.repos.d/CentOS-Base.repo

# If performing manually this will list your avail. postgreSQL installs:
#yum list postgresql*

#Install PostgreSQL
yum install postgresql96-server

#Initialize the DB
service postgresql-9.6 initdb

#If you want PostgreSQL to start automatically when the OS starts
chkconfig postgresql-9.6 on

#Start the service
service postgresql-9.6 start

#Removing PostgreSQL
#yum erase postgresql96*
