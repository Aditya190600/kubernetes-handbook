#! /bin/bash

sudo mkdir -p /usr/k8s/bin
sudo cp env.sh /usr/k8s/bin
sudo chown -R $USER:$USER /user/k8s/bin

cat <<EOF | sudo tee -a /etc/hosts
192.168.1.110   etcd1 master1
192.168.1.111   etcd2
192.168.1.112   etcd3
192.168.1.113   etcd4
192.168.1.114   etcd5
192.168.1.201   k8s-api.virtual.local
EOF
