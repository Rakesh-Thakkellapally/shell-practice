#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ];then
echo "please run this with root user"
exit 1
fi
echo "installing nginx"
dnf install nginx -y
if [ $? -ne 0 ];then
echo "nginx installation...failed"
exit 1
else
echo "nginx installation...success"
fi