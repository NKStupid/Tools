#!/bin/bash
INDEX=$1

az vm create \
    --resource-group yhu-ansible-test2 \
    --name myVM$INDEX \
    --location japaneast \
    --image RedHat:RHEL:8:lastest \
    --admin-username chenkiegcp2 \
    --custom-data cloud-init.txt \
    --ssh-key-values 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC69c3Z6HTUJ1ywmCoTGJuRVQwrw6NzWmeI3A37pvJLvFXOmkcQR0ILgY0b07F78mn0EgXYIjkjbBMIRS3IRlhd1JTWdsaG+vh3W7UCpBQ74VED29sxrLwcGZDlI5zmtVR0J4h9qjbf1TBWWPoEaj6QHeuM1T5tbfXW/wjE0OLMHzfxk2f4EuUZEllFaiCHI/wstxuYwXJNn4Fa7xod9hQgLdFEsU1cg98r/ujVu4dUwR5MvIjWC+O+IlHW5/QoUiw5Hr6vvKrVsp4nrEb7ofVdk8nA8Gai9KPG2PgpVXnw7lcYICBYSQQMFA9xrT/ESNXTUSPPqEZld4R5Bw2VCI2p chenkiegcp2@instance-3'

