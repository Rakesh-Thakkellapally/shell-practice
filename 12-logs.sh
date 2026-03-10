#!/bin/bash
userid=(id -u)
path="/var/log/shell_script"
logfile="/var/log/shell_script/$0.log
if [ $userid -ne 0 ];then
echo "please run this with root" |tee -a $logfile
exit 1
fi
mkdir -p $path
validate(){
if [ $1 -ne 0 ];then
echo "$2...failure" | tee -a $logfile
exit 1
else
echo "$2...success" | tee -a $logfile
fi
}
dnf install nginx -y &>> $logfile
validate $? "installing nginx"
dnf install mysql -y &>> $logfile
validate $? "installing mysql"
fi
