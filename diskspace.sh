#!/bin/bash
set -e
trap 'echo "Error at line $LINENO: Command $BASH_COMMAND failed"' ERR

Thresholdvalue=80

# Get disk usage percentage of the first filesystem (root)
Diskuseage=$(df -hT | awk 'NR==2 {print $6}' | sed 's/%//')

if [ "$Diskuseage" -ge "$Thresholdvalue" ]; then
  echo "Disk usage $Diskuseage% is exceeding $Thresholdvalue%, it is almost full"
else
  echo "Disk usage value is not full ($Diskuseage%)"
fi
