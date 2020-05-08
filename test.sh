#!/bin/sh
wget https://install.direct/go.sh
sudo bash go.sh
sudo systemctl start v2ray
cat /etc/v2ray/config.json

