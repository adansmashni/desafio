#!/bin/bash

# Instala Python
sudo yum install -y python3
sudo pip3 install ansible

# Aplica ansible playbook
ansible-playbook --become --connection=local -i 127.0.0.1 ConfiguraServer.yml
