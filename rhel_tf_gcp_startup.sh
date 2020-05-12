#!/bin/bash

systemctl stop firewalld
setenforc 0
yum install -y unzip wget
dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
dnf install docker-ce --nobest -y
systemctl start docker
systemctl enable docker

wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip terraform_0.12.24_linux_amd64.zip && cp terraform /usr/bin
wget https://raw.githubusercontent.com/NKStupid/Tools/master/main.tf 

terraform init
terraform plan 
terraform apply -auto-approve 

