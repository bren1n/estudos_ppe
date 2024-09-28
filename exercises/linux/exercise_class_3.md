1. Criar os arquivos senhas.txt e usuários.txt com os respectivos arquivos de configuração no Linux.
```shell
cat /etc/passwd > usuarios.txt ; cat /etc/shadow > senhas.txt
```

2. Concatenar os arquivos senhas.txt e usuários.txt no arquivo config.user.txt
```shell
cat senhas.txt usuarios.txt > config.user.txt
```

3. Inserir o conteúdo do arquivo de variáveis de ambiente global no arquivo config.user.txt.
```shell
cat /ete/profile >> config.user.txt
```

4. Mostrar o conteúdo do arquivo config.user.txt com as linhas numeradas.
```shell
nl config.user.txt
```

5. Ler somente as primeiras 9 linhas do arquivo config.user.txt
```shell
head -n 9 config.user.txt
```

6. Transforme o arquivo “config.user.txt” em um arquivo oculto no sistema.
```shell
mv config.user.txt .config.user.txt
```

7. Listar todos os usuários do sistema Linux.
```shell
cut -f 1 -d : /etc/passwd
```

8. Visualizar as últimas 40 linhas do principal arquivo do syslog
```shell
tail -n 40 /var/log/syslog
```

9. Informar somente o nome de todas as contas do arquivo /etc/passwd com seus respectivos UID e GID.
```shell
cut -f 1,3,4 -d : /etc/passwd
```

10. Crie um comando para converter todos os caracteres de um arquivo /etc/passwd para maiúsculo.
```shell
```

11. Usando o comando grep, crie um comando para exibir apenas os comentários do arquivo ~/.bashrc.
```shell
# O ^ filtra pelo início da linha (tudo que inicia com #)
grep '^#' ~/.bashrc
```
