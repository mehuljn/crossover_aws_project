#!/bin/bash

#install requirements
sudo yum install -y httpd mariadb mariadb-server php php-mysql php-gd

#start db
sudo service mariadb start

#Only for vagrant super security 
# Stop selinux and firewalld

sudo setenforce 0
sudo service firewalld stop