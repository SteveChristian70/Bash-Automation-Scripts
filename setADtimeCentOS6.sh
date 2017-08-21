#!/bin/bash

# Purpose: Set CentOS 6 Server to AD Timeserver
# Author: Steve Christian
# Date: 13 MAR 2016
# Version: 1.2

yum install ntp

# Add line to the file so server uses the desired time server
sed -i '$ a server your_ad_timserver.example.com iburst' /etc/ntp.conf

# Start the service
/etc/rc.d/init.d/ntpd start
chkconfig ntpd on
