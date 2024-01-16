#!/bin/sh
#/home/ec2-user/pages/script.sh
VAR3="This is var 3 in shell file"

echo "---" >> logs/file
echo $VAR1 >> logs/file
echo "---" >> logs/file
echo $VAR2 >> logs/file
echo "---" >> logs/file
echo $VAR3 >> logs/file
echo "---" >> logs/file

sleep 1000