component="catalogue"
mongoIp="100.24.67.143"

source functions.sh

echo -e "\e[33mCatalogue Installtion started\e[0m"

cp catalogue.service /etc/systemd/system/catalogue.service

curl -sL curl -sL https://rpm.nodesource.com/setup_lts.x | bash

yum install nodejs -y

if id "roboshop"; then

    echo -e "\e[31mUser exists\e[0m"
else
    useradd roboshop

fi



if [ -e "/tmp/catalogue.zip" ]; then

    echo -e "\e[31mFile exists\e[0m"

else
    mkdir /app
    curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
    cd /app
    unzip /tmp/catalogue.zip

fi

installMongo

cd /app
npm install

systemctl daemon-reload

systemctl enable catalogue
systemctl restart catalogue
systemctl enable catalogue
