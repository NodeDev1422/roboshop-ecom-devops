echo -e "\e[33mFrontend Installation started \e[0m"

yum install nginx -y

if [ $? -ne 0 ]; then

    echo -e "\e[31mInstallation Failed with error code: $? \e[0m"
    exit $?
fi

rm -rf /tmp/frontend.zip
remove -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &> /tmp/frontendlogs

cd /usr/share/nginx/html

unzip /tmp/frontend.zip &> /tmp/frontendlogs



echo -e "\e[32mInstallation sucess \e[0m"

echo -e "\e[33mNginx process steps starts\e[0m"
systemctl enable nginx
systemctl restart nginx
if [ $? -ne 0 ]; then

    echo -e "\e[31mNginx failed to run \e[0m"
    exit $?
fi
echo -e "\e[32mNginx running\e[0m"
