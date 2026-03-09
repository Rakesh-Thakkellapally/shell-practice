#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ];then
echo "please run this with root user"
exit 1
fi 
echo "installing nginx"
dnf install nginx -y
if [ $? -ne 0 ];then
echo "installing nginx ..failure"
else 
echo "installing nginx success"
