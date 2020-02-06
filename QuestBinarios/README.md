TLDR: Resolução da primeira parte do desafio, investigação dos binários.

# Procedimento:

O Procedimento realizado foi realizar o download dos arquivos em uma máquina virtual e executálos.
Primeiramente verifiquei o tipo dos arquivos com o comando: file.
Enquanto os mesmos estavam em execução verifiquei a lista de processos, utilização de memoria, sistema de arquivos e rede utilizando os comandos: ls, lsof, netstat e ps.
Procurei informações dos arquivos utilizando os comandos: hexdump e strings.
Por fim, executei os arquivos utilizando o comando strace.

# Resultado:

Arquivo cc9621:
Este arquivo cria um arquivo no diretório /tmp. O nome do arquivo é o nome de usuário que executou o binário.
O binário fica aguardando a digitação de uma palavra, a qual é o conteúdo do arquivo criado.

Arquivo d3ea79:
Este arquivo é o jogo Conway's Game of Life (https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life). O arquivo gerado também fica no diretório /tmp e o nome do arquivo é o nome de usuário que executou o binário. O conteúdo é a saída do jogo.

Arquivo da87fa:
Este arquivo quando executado fica em um loop infinito gerando 10 forks de um outro programa o qual acredito que seja /bin/sleep. Cada fork espera 1 segundo, então a cada 10 segundos ele gera mais 10 forks.

Arquivo ddb1c9:
Este arquivo está servindo um webserver na porta 8011.

# Evidências:
Nos subdiretórios com os nomes dos arquivos estão contidas as evidências de cada ação que me permetiram chegar nas conclusões anteriores. 


