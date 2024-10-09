1.1 - Criar o usuário sinsenhor e definir a senha “sin123”, sem aspas;
```shell
useradd sinsenhor -p sin123
```

1.2 - Crie o grupo “ppesin”, nesse grupo, adicione a senha “ninguemnuncasabera”, sem aspas;
```shell
groupadd ppesin -p ninguemnuncasabera
```

1.3 - Remover o usuário sinsenhor, juntamente com todos os seus arquivos pessoais;
```shell
userdel -r sinsenhor
```

1.4 - Informar o tamanho do diretório /usr em GB;
```shell
du -h /usr
```

1.5 - Exibir as mensagens de kernel.
```shell
dmesg
``` 

1.6 - Faça com que o updatedb seja executado todas as quartas-feiras de 2 em 2 horas.
```shell
* */2 * * 3 updatedb
```

2.1 - B G E NA C D

Questões de BD dentro do arquivo na máquina virtual
