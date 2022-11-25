#!/bin/bash
#Предполагается что скрипт запускается из директории плейбука

echo "starting containers"
if docker ps --all | grep centos7; then docker start centos7; else docker run --name centos7 -d pycontribs/centos:7 /bin/bash -c "while true; do sleep 100; done"; fi
if docker ps --all | grep ubuntu; then docker start ubuntu; else docker run --name ubuntu -d pycontribs/ubuntu /bin/bash -c "while true; do sleep 100; done"; fi
if docker ps --all | grep fedora; then docker start fedora; else docker run --name fedora -d pycontribs/fedora /bin/bash -c "while true; do sleep 100; done"; fi

echo "ranning playbook"
ansible-playbook -i ./inventory/prod.yml --vault-password-file ./password site.yml

echo "stopping containers"
docker stop centos7
docker stop ubuntu
docker stop fedora