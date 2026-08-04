#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
if [ $USER_ID -ne 0 ]; then
    echo"Please run the script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "$2.... failure" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2.... success" | tee -a $LOGS_FILE
    fi

}

for package in $@ # pass the aruguments at the time of script exceution
do
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package is not installed Now installing..."
        dnf install $package -y &>>$LOGS_FILE
        VALIDATE $? "$package installation" 
    else
        echo "$package is already installed.. skipping"
    fi
done