#!/bin/bash
echo "Script is executed at $date"
Start_time=($date+%s);
echo "script start time $Start_time"
Sleep 10
End_time=($date+%s);
Total_time=((Start_time-End_time));
echo " script executed totaltime in seconds $Total_time"
