echo -e "\e[33mFrontend Installation started \e[0m"

yum install nginx -y

if [ $? -ne 0 ]; then

echo -e "\e[31mInstallation Failed with error code: $? \e[0m"
exit $?

fi

echo -e "\e[32mInstallation sucess \e[0m"



