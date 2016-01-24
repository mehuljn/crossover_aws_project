#!/bin/bash

bash 01_setupnode_aws.sh
bash 02_extract_MYBB.sh
sudo mysql_secure_installation
bash 03_ready_db.sh localhost 3306 root dbroot mybbuser password
bash 04_config_mybb.sh root@localhost localhost 3306 mybbuser password 127.0.0.1:8080
sudo service httpd start
