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

for package in $@ 
do 
dnf list installed $package &>> $Logs_filename
if [ $? -ne 0 ]; then 
echo " $package is not installed please install it" 
dnf install $package -y &>> $Logs_filename  
validate $?  "$package Installation  ...."
else 
echo " $package is  installed please skip it"
exit 1
fi  
done 