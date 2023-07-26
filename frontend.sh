echo -e "\e[33mInstallation started\e[0m"

yum install nginxxxx -y

if [ $? -ne 0 ]; then

    echo -e "\e[31mInstallationn failed with error: $?\e[0m"
fi



