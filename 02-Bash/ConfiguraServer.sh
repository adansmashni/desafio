#!/bin/bash

# Instala Pacotes Iniciais
sudo yum install - y vim bash-completion yum-utils wget curl git net-tools bind-utils git telnet python3 gcc-c++ make automake

# Configura repositorio nodejs
curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -

# instala nodejs
yum install -y nodejs

# cria usuário node
adduser node

# configura ambiente para usuario node







