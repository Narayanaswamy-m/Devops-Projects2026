#!/bin/bash
source_dir="var/Devops-Projects2026"
Backup_dir="etc"
Date=$(date +%F_%H-%M-%S)

mkdir -p $Backup_dir
tar -czf $Backup_dir/backup_$DATE.tar.gz $source_dir





