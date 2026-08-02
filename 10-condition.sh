#!/bin/bash

USER_ID= $(id -u)

if [ $USER_ID -ne 0 ]; then
echo "run the script with the root user access"
exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
echo "Installing nginx....Failure"
exit 1
else 
echo "Installing nginx....Success"
fi

