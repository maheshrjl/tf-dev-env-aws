#! /bin/bash
yum update #Userdata always runs as root
yum -y install docker
service docker start
usermod -a -G docker ec2-user
chkconfig docker on
pip3 install docker-compose
yum install -y git
yum install -y vim
pip3 install localstack
reboot