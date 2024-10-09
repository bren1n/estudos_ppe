1.1 - Criar a arvore de diretório /tmp/sinsenhor, logo após crie o arquivo, no diretório sinsenhor, cujo nome é o número da sua identidade:
```shell
mkdir -p /tmp/sinsenhor ; touch /tmp/sinsenhor/002663830
```

1.2 - Criar o arquivo “sinsenhor.html” no home do usuário. Verificar as permissões do arquivo “sinsenhor.html” para o grupo, responda em octal.
```shell
touch ~/sinsenhor.html ; ls -l ~/sinsenhor.html
```
Permissão = 664

1.3 Qual o tamanho do arquivo teste.txt em MB?
```shell
du -m teste.txt 
#ou
du -h teste.txt
```

1.4 - Verificar a árvore de diretórios do diretório “/usr”.
``` shell
ls -p /usr/
# ou
tree /usr/
```

1.5 - Executar três comandos em sequência (cat, route /etc/shadow e top), na mesma linha de comando
``` shell
cat /etc/shadow ; route; top
```

2.1 - SC LC ST MTRJ

Questões de BD dentro do arquivo na máquina virtual
