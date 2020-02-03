TLDR: Resolução da primeira parte do desafio, investigação dos binários.

# Procedimento:

O Procedimento realizado foi realizar o download dos arquivos em uma máquina virtual e executálos.
Primeiramente verifiquei o tipo dos arquivos com o comando: file.
Enquanto os mesmos estavam em execução verifiquei a lista de processos, utilização de memoria, sistema de arquivos e rede utilizando os comandos: ls, lsof, netstat e ps.
Procurei informações dos arquivos utilizando os comandos: hexdump e strings.
Por fim, executei os arquivos utilizando o comando strace.

# Resultado:

Arquivo cc9621:

Arquivo d3ea79:

Arquivo da87fa:

Arquivo ddb1c9:

# Evidências:
Nos subdiretórios com os nomes dos arquivos estão contidas as evidências de cada ação que me permetiram chegar nas conclusões anteriores. 


