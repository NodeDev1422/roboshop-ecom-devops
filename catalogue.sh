component = "catalogue"
mongoIp = "127.0.0.1"

source functions.sh;

echo -e "\e[33mCatalogue Installtion started\e[0m"

cp catalogue.service /etc/systemd/system/catalogue.service

curl -sL curl -sL https://rpm.nodesource.com/setup_lts.x | bash

yum install nodejs -y

useradd roboshop


mkdir /app

curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip 
cd /app 
unzip /tmp/catalogue.zip

cd /app 
npm install 

installMongo

systemctl daemon-reload

systemctl enable catalogue 
systemctl restart catalogue