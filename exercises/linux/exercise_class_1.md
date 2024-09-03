Abra uma janela de Terminal para abrir um shell do Linux, e teste e escreva os comandos que resolvem as solicitações seguintes:

1. Cancelar a sessão atual e iniciar uma nova sessão.
```shell
exit
login
```
2. Abrir o manual do comando top. A propósito, qual a função do comando top?
Rodar comando `man top`. O comando `top` lista processos.

3. No seu diretório home, escreva os comandos para criar os diretórios sinsenhor1 e sinsenhor2.
```shell
mkdir /home/sinsenhor1/
mkdir /home/sinsenhor2/
```

4. No seu diretório home, liste o conteúdo do diretório.
```shell
ls -la /home/
```
5. Entre no diretório sinsenhor1 e mostre o caminho do diretório corrente.
```shell
cd /home/sinsenhor1/
pwd
```

6. Crie o arquivo trabalho1.txt dentro do diretório sinsenhor1, e o arquivo trabalho2.txt dentro do diretório sinsenhor2.
```shell
echo '' > /home/sinsenhor1/trabalho1.txt
echo '' > /home/sinsenhor2/trabalho2.txt
```
7. Copie o arquivo trabalho1.txt para sinsenhor2.
```shell
cp sinsenhor1/trabalho1.txt sinsenhor2/
```

8. Limpe o terminal.
```shell
clear
```
9.  Mostre a data atual do sistema.
```shell
date
```

10.  Veja todas as informações sobre seu SO, e salve-as no arquivo trabalho1.txt.
```shell
uname -a > sinsenhor1/trabalho1.txt
```
