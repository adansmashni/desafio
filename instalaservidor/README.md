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
3. Executar os ShellScripts no diretório _desafio/instalaservidor_ 
```
$ cd $HOME/desafio/instalaservidor
$ bash inicio.sh
$ sudo bash configura.sh
```
