#!/bin/bash
source_dir="/home/ec2-user/Devops-Projects2026/var"
Backup_dir="/home/ec2-user/Devops-Projects2026/etc"
Date=$(date +%F_%H-%M-%S)

mkdir -p $Backup_dir
tar -czf $backup_$DATE.tar.gz $source_dir






