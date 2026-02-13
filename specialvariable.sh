#!/bin/bash
echo "all variables to scripts :$@"
echo "no.of variables passed to scripts : $#"
echo "script nme $0"
echo "Present working directory $PWD"
echo "present user $USER"
echo "PId Number $$"
sleep 100 &
echo "background process id :$!"
echo "all variables to scripts :$*"