#!/bin/bash
set -e 
trap 'echo "there is an error $LINENO, COmmand:$BASH_COMMAND"' ERR
Diskuseage=$(df -hT | awk 'NR==1 {print $1,$5}')
Thresholdvalue=80
if [ "$Diskuseage" -gt "$Thresholdvalue" ]; then 
echo " Diskuseage $Diskuseage is exceeding $Thresholdvalue it is almost full"
else 
echo "Diskuseage value is not full"
fi 
