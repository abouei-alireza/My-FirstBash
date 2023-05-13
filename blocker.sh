#!/bin/bash

echo "enter your number: "
read A

awk -F ":" '{print $1 ","$2 ","$3}' nginx_logs_sample |sort -n | awk '{print $1 "," $4}' |uniq -c | sort -nr | awk ' { if ($1 > A) print $2}'| awk -F "," '{print $1}'| sort | uniq