installMongo() {
    cp mongo.repo /etc/yum.repos.d/mongo.repo

    ls /etc/yum.repos.d/

    yum install mongodb-org -y
    mongo --host ${mongoIp} </app/schema/${component}.js
}
