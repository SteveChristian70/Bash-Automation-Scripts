#!/bin/bash

# Purpose: Set CentOS 7 Server to AD Timeserver
# Author: Steve Christian
# Date: 13 MAR 2016
# Version: 1.0


yum -y install ntp
sed -i '$ a server your-ad-server.example.com iburst' /etc/ntp.conf
systemctl start ntpd 
systemctl enable ntpd 
ntpq -p
