#!/bin/bash

sudo yum update -y
sudo yum install -y ruby wget
cd /home/ec2-user
wget https://aws-codedeploy-<region>.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

sudo service codedeploy-agent start
sudo chkconfig codedeploy-agent on

cd /var/www/html
sudo rm -rf *
