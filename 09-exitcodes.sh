#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ];then
dnf install nginx -y
echo "please run this with root"
fi