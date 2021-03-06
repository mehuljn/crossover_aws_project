#!/bin/bash 

MYBB_EXTERNAL_DNS=$1
MYBB_ADMINEMAIL=$2
MYBB_DATABASE_NAME=$3
MYBB_DATABASE_USER=$4
MYBB_DATABASE_PASS=$5
MYBB_DATABASE_HOST=$6
MYBB_DATABASE_PORT=$7
DBROOT_USER=$8
DBROOT_PASS=$9


WWWROOT="/var/www/html"

#Lets Move our crafted MyBB Package to WWWROOT

sudo mv MYBB/* $WWWROOT

#Lets Reconfigure Settings.conf 

sudo sed -e "s/MYBB_ADMINEMAIL/${MYBB_ADMINEMAIL}/g" \
     	 -e "s/MYBB_EXTERNAL_DNS/${MYBB_EXTERNAL_DNS}/g" \
	    "MYBBCONF/settings.php" > "$WWWROOT/inc/settings.php"

sudo sed -e "s/MYBB_DATABASE_HOST/${MYBB_DATABASE_HOST}/g" \
	 -e "s/MYBB_DATABASE_PORT/${MYBB_DATABASE_PORT}/g" \
    	 -e "s/MYBB_DATABASE_USER/${MYBB_DATABASE_USER}/g" \
    	 -e "s/MYBB_DATABASE_PASS/${MYBB_DATABASE_PASS}/g" \
    	    "MYBBCONF/config.php" > "$WWWROOT/inc/config.php"

cd "$WWWROOT"

sudo chmod -R 0777 cache uploads inc/settings.php inc/config.php 
