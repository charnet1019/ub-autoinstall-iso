#/usr/bin/env bash

cd /home/docker
dpkg -i *.deb > /dev/null 2>&1

#systemctl enable --now docker > /dev/null 2>&1
#
#docker load -i /home/docker/mysql.tar > /dev/null 2>&1
#
#docker network create mysql > /dev/null 2>&1
#docker-compose -f /data/mysql/docker-compose.yml up -d > /dev/null 2>&1
#
#sleep 10

lvextend -l +100%free /dev/mapper/ubuntu--vg-ubuntu--lv > /dev/null 2>&1
resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv > /dev/null 2>&1

sleep 5

exit 0
