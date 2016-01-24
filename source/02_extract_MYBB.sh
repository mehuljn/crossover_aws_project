#!/bin/bash

tar -xvf mybb.tar.gz

mkdir MYBBCONF

cp -p MYBB/inc/settings.php MYBBCONF/.
cp -p MYBB/inc/config.php MYBBCONF/.
