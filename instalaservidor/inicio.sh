# Questionário Inicial e criação de arquivo de parâmetros

values="$HOME/desafio/instalaservidor/arquivos/values.txt"
echo 'Qual é o nome da Aplicação?'
echo 'Exemplo: "web-app".'
read respappname && echo $respappname >> $values
echo "Qual é o DNS da Aplicação?"
echo 'Exemplo: "portal.meudominio.com".'
read respappdns && echo $respappdns >> $values
echo "Qual é o repositorio GitHub da Aplicação?"
echo 'Exemplo: "https://github.com/adansmashni/desafio.git".'
read respappgit && echo $respappgit >> $values
echo $respappgit | awk -F"/" '{print $4}' >> $values
echo $respappgit | awk -F"/" '{print $5}' | sed 's/.git//' >> $values

# Cria arquivo de vars no ansible

vall="$HOME/desafio/instalaservidor/group_vars/all/all.yml"
echo appname: "$(awk 'NR==1' $values)" >> $vall
echo appdomain: "$(awk 'NR==2' $values)" >> $vall
echo appgit: "$(awk 'NR==3' $values)" >> $vall
echo appgituser: "$(awk 'NR==4' $values)" >> $vall
echo appgitrepo: "$(awk 'NR==5' $values)" >> $vall
echo appdir: "$HOME/desafio/aplicacao" >> $vall
echo apprepo: "$HOME/desafio" >> $vall

















