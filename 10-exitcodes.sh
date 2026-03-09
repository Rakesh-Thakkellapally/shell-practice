#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ];then
echo "please run this with root user"
exit 1
else
dnf install nginx -y
echo "installing nginx ...success"
fi