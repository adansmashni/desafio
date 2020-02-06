#!/bin/bash

# Instala Python
sudo yum install -y git epel-release
sudo yum install -y python2-pip

# upgrade pip e instalacao do ansible
sudo pip2 install -U pip
sudo pip2 install ansible==2.7.16

# Aplica ansible playbook
ansible-playbook --become --connection=local -i 127.0.0.1 configuraservidor.yml