function getErrMsg()
{
if [ $? -ne 0 ]; then

    echo -e "\e[33m$1\e[0m"
    exit $?
fi

echo -e "\e[32$1 \e[0m"
}

getErrMsg "Frontend Installation started"

yum install nginx -y

if [ $? -ne 0 ]; then

    echo -e "\e[31mInstallation Failed with error code: $? \e[0m"
    exit $?
fi

echo -e "\e[33mRemoving existing files in directory\e[0m"

rm -rf /usr/share/nginx/html/*

if [ $? -ne 0 ]; then

echo -e "\e[31m Issue in removing files\e[0m"

fi

echo -e "\e[32mRemoved files in directory\e[0m"


echo -e "\e[32mInstallation sucess \e[0m"

getErrMsg "Nginx process steps starts"

systemctl enable nginx
systemctl restart nginx


getErrMsg "Nginx running"



