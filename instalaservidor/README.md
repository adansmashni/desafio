**TL,DR**: Esse procedimento foi escrito para configuração do servidor zerado para resolução do desafio.

## Procedimento para Instalação do Servidor

Esse procedimento foi escrito para configuração do servidor zerado para a resolução do desafio, utilizando um servidor com sistema operacional CentOS 7.7. A configuração foi realizada utilizando shell e python scripts e GitHub como repositório.

* Após logar-se no **servidor zerado** executar os seguintes passos:

1. Instalar o pacote git
```
$ sudo yum install -y git
```
2. Clonar o repositório
```
$ git clone https://github.com/adansmashni/desafio.git $HOME/desafio
```
3. Executar o ShellScript _inicio.sh_ no diretório _desafio/instalaservidor_ 
```
$ cd $HOME/desafio/instalaservidor
$ bash inicio.sh
```
4. Copiar os arquivos do Certificado SSL para o diretório _/etc/ssl/nginx_. Os arquivos devem possuir os nomes domain.crt e domain.key.

5. Executar o ShellScript _inicio.sh_ no diretório _desafio/instalaservidor_ 
```
$ cd $HOME/desafio/instalaservidor
$ sudo bash configura.sh
```

### Importante
A instalação irá perguntar se os arquivos do certificado SSL já foram copiados para o diretório _/etc/ssl/nginx_, caso a reposta sejá não a instalação irá continuar utilizando um certificado auto-assinado, sendo necessário substituir os arquivos e reiniciar o Nginx posteriormente.
Para que os e-mails não sejam considerados spam é necessário que a zona DNS do dominío da aplicação esteja com o ip de saída do servidor como um emissor servidor SMTP confiável.

### Todo:
1. Passar todas as tasks do ansible escritas com módulo _shell_ para módulos nativos.
2. Tratamento das entradas de usuário durante a instalação