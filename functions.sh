source mongo.repo;

function getErrMsg()
{
if [ $? -ne 0 ]; then

    echo -e "\e[33m$1\e[0m"
    exit $?
fi

echo -e "\e[32$1\e[0m"
}


function installMongo()
{
    cp mongo.repo /etc/yum.repos.d/mongo.repo
    yum install mongodb-org-shell -y
    mongo --host ${mongoIp} </app/schema/${component}.js
}

