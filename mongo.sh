echo  -e "\e[33mMongo process starts\e[0m"
cp mongo.repo /etc/yum.repos.d/mongo.repo

echo  -e "\e[33mMongo Installation process starts\e[0m"

yum install mongodb-org -y

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

if [ $? -ne 0 ]; then

echo  -e "\e[33mMongo Installation process has issue $?\e[0m"
exit $?
fi

systemctl restart mongod

echo  -e "\e[33mMongo Installation process ends\e[0m"
