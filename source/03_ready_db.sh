DBHOST=$1 
DBPORT=$2
DBROOT_USER=$3
DBROOT_PASS=$4
MYBB_DBUSER=$5
MYBB_DBPASS=$6

mysql -u ${DBROOT_USER} -p${DBROOT_PASS} -h $DBHOST -P $DBPORT -e "create database mybb;"
mysql -u ${DBROOT_USER} -p${DBROOT_PASS} -h $DBHOST -P $DBPORT -e "CREATE USER '${MYBB_DBUSER}'@'%' IDENTIFIED BY '${MYBB_DBPASS}';"
mysql -u ${DBROOT_USER} -p${DBROOT_PASS} -h $DBHOST -P $DBPORT -e "GRANT ALL PRIVILEGES ON mybb.* TO '${MYBB_DBUSER}'@'%' IDENTIFIED BY '${MYBB_DBPASS}';"

#now lets initialise the database
mysql -u ${DBROOT_USER} -p${DBROOT_PASS} -h $DBHOST -P $DBPORT mybb < mybb.sql
