component = "user"
mongoIp = "127.0.0.1"
source functions.sh

echo -e "\e[33mUSer installation starts\e[0m"

curl -sL https://rpm.nodesource.com/setup_lts.x | bash

yum install nodejs -y

copy user.service /etc/systemd/system/user.service

useradd roboshop

mkdir /app 

curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip 
cd /app 
unzip /tmp/user.zip


cd /app 
npm install 

installMongo

systemctl daemon-reload

systemctl enable user 
systemctl restart user