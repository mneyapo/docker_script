#!/bin/bash
# Bash Menu Script Example
echo "Save python-mysql-controll-access docker image"

sudo docker image save -o python-mysql-controll-access.tar python-mysql-controll-access

echo  "Remove python-mysql-controll-access docker image"

sudo docker image rm -f python-mysql-controll-access

echo "Load python-mysql-controll-access docker image"
sudo docker image load –i python-mysql-controll-access.tar
