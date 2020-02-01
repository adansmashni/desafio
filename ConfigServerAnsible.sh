#!/bin/bash

# Instala Python
sudo yum install -y git epel-release
sudo yum install -y python2-pip

# Aplica ansible playbook
ansible-playbook --become --connection=local -i 127.0.0.1 ConfiguraServer.yml
