#!/bin/bash
user_id=$(id -u)
if [$user_id -ne 0]; then 
echo "please run this script with root access"
exit 1 
fi 
# installing ngnix 
dnf install ngnix
if [$? -ne 0]; then 
echo "ngnix installation status failure ....."
exit 1 
else 
echo "ngnix installation status success...."
fi 
