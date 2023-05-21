#!/bin/bash 

echo "Enter process name :"
read procname
kill $(ps aux | grep $procname | grep -v grep | awk '{print $2}')
