#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then 
echo "please run this script with root access"
exit 1 
fi 
validate () {
    if [ $1 -ne 0 ]; then 
echo "$2 installation status failure ....."
exit 1 
else 
echo "$2 installation status success...."
fi 

}

# installing mysql 
dnf install mysql -y 
validate $?  "Installing mysql  ...."
# installing ngnix
dnf install nginx -y 
validate $? "Installing nginx..."
#installing nodejs 
dnf install nodejs -y 
validate $? " Installing nodejs..."