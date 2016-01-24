#!/bin/bash

#install requirements
sudo yum install -y httpd mysql mysql-server php php-mysql php-gd

#start db
#sudo service mariadb start
sudo service mysqld start

#Only for vagrant super security 
# Stop selinux and firewalld

#sudo setenforce 0
#sudo service firewalld stop
