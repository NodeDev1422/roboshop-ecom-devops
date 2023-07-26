echo -e "\e[33mInstallationn started\e[0m"

yum install nginxxxx -y

if[$? -eq 0] then
echo -e "\e[32mInstall success\e[0m"
else 
echo -e "\e[31mInstallationn failed with error: $?\e[0m"
fi



