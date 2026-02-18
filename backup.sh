#!/bin/bash
source_dir="Devops-Projects2026/var"
Backup_dir="etc"
Date=$(date +%F_%H-%M-%S)

mkdir -p $Backup_dir
tar -czf $Backup_dir/backup_$DATE.tar.gz $source_dir





