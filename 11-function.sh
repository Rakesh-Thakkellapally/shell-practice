#!/bin/bash
userid=$(id -u)

if [ $userid -ne 0 ];then
echo "please run this command with root user"
exit 1
fi
Validate () {
    if [ $1 -ne 0 ]; then
    echo "$2 ....failure"
    exit 1
    else 
    echo "$2 ...success"
    fi
}
dnf install nginx -y
Validate $? "Installing nginx"
dnf install mysql -y
validate $? "installing mysql"
dnf install nodejs -y
validate $? "installing nodejs"