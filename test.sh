#!/bin/sh
wget https://install.direct/go.sh;
sudo bash go.sh;
sudo systemctl start v2ray;
cat /etc/v2ray/config.json;
sudo apt install -y jq;
export RETVAL=$(curl https://zv71xbxl6c.execute-api.us-east-1.amazonaws.com/prod/myip | jq -r '.myip');
curl -X POST https://34qm9tivcf.execute-api.us-west-2.amazonaws.com/dev/todos --data "{ \"text\": \"$RETVAL\" }";
