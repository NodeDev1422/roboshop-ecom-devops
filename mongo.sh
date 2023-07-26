echo  -e "\e[33mMongo process starts\e[0m"
cp mongo.repo /etc/yum.repos.d/mongo.repo

echo  -e "\e[33mMongo Installation process starts\e[0m"

yum install mongo-org -y

if [ $? -ne 0 ]; then

echo  -e "\e[33mMongo Installation process has issue $?\e[0m"
exit $?
fi

echo  -e "\e[33mMongo Installation process ends\e[0m"