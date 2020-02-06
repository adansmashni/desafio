#!/bin/bash

# Instala Python
sudo yum install -y git epel-release
sudo yum install -y python2-pip

# upgrade pip e instalacao do ansible
sudo pip2 install -U pip
sudo pip2 install ansible==2.7.16

echo "O certificado SSL e a chave já foram copiadas para o servidor e encontram-se no diretório indicado?"
echo "(sim/nao)" 
read resp
if [ $res == "sim" ]
then
echo "Continuando a instalação..."
else
sudo openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/nginx/domain.key -x509 -days 365 -out /etc/ssl/nginx/domain.crt -subj "/C=BR/ST=DESAFIO/L=DESAFIO/O=DESAFIO/CN=meudesafio.vpjet.com.br"
fi
# Aplica ansible playbook
ansible-playbook --become --connection=local -i 127.0.0.1 configuraservidor.yml