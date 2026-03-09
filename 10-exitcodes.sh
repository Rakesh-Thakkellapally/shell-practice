#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ];then
echo "please run this with root user"
fi [ $userid -e 0 ];then
echo "installing nginx"
dnf install nginx -y
fi