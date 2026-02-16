#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then 
echo "please run this script with root access"
exit 1 
fi 
# installing ngnix 
dnf install nginx
if [ $? -ne 0 ]; then 
echo "nginx installation status failure ....."
exit 1 
else 
echo "nginx installation status success...."
fi 
# installing mysql 
dnf install mysql -y 
if [ $? -ne 0 ]; then 
echo "mysql installation status failure ....."
exit 1 
else 
echo "mysql installation status success...."
fi 
