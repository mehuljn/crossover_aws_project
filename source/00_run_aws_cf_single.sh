#!/bin/bash

bash 01_setupnode_aws.sh
bash 02_extract_MYBB.sh
bash 03_ready_db.sh
bash 04_config_mybb.sh
sudo service httpd start
