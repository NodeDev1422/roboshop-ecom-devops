echo -e "\e[31 m installationn started\e[om"

yum install nginxxxx -y

if($? == 0) then
echo -e "\e[32 m Install success \e[om";
else 
echo -e "\e[31 m installationn failed $? \e[om"
fi



