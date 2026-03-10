#!/bin/bash

# Get the user ID
userid=$(id -u)

# Define log path and logfile
path="/var/log/shell_script"
logfile="$path/$(basename $0).log"

# Check if running as root
if [ "$userid" -ne 0 ]; then
  echo "Please run this with root" | tee -a "$logfile"
  exit 1
fi

# Create log directory
mkdir -p "$path"

# Validation function
validate() {
  if [ $1 -ne 0 ]; then
    echo "$2...failure" | tee -a "$logfile"
    exit 1
  else
    echo "$2...success" | tee -a "$logfile"
  fi
}

# Install nginx
dnf install nginx -y &>> "$logfile"
validate $? "Installing nginx"

# Install mysql
dnf install mysql -y &>> "$logfile"
validate $? "Installing mysql"
