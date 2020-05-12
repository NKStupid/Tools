#!/bin/bash

systemctl stop firewalld
setenforc 0
yum install -y docker unzip wget
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip terraform_0.12.24_linux_amd64.zip && cp terraform /usr/bin

wget https://raw.githubusercontent.com/NKStupid/Tools/master/setupWebServer.sh;
chmod +x setupWebServer.sh;
./setupWebServer.sh;
