#!/bin/bash
userid=$(id -u)
Logs_folder="var/log/Devops-Projects2026"
Logs_filename="var/log/Devops-Projects2026/$0.log"
if [ $userid -ne 0 ]; then 
echo "please run this script with root access"
exit 1 
fi 
mkdir -p $Logs_folder;
validate () {
    if [ $1 -ne 0 ]; then 
echo "$2 installation status failure ....." | tee -a $Logs_filename
exit 1 
else 
echo "$2 installation status success...." | tee -a $Logs_filename
fi 

}

# installing mysql 
dnf install mysql -y &>> $Logs_filename  
validate $?  "Installing mysql  ...." 
# installing ngnix
dnf install nginx -y &>> $Logs_filename
validate $? "Installing nginx..." 
#installing nodejs 
dnf install nodejs -y &>> $Logs_filename
validate $? " Installing nodejs..."