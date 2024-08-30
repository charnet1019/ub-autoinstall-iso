#!/usr/bin/env bash
# 修改IP配置信息后执行此脚本

cp /etc/netplan/50-cloud-init.yaml /etc/netplan/50-cloud-init.yaml.bak-$(date +"%F-%H-%M-%S")
cat > /etc/netplan/50-cloud-init.yaml <<EOF
network:
    version: 2
    ethernets:
        enp1s0:
            dhcp4: no
            dhcp6: no
            addresses:
                - 192.168.30.102/24
            routes:
                - to: default
                  via: 192.168.30.1
            nameservers:
                addresses:
                    - 114.114.114.114
EOF

netplan apply
