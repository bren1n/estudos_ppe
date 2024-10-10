1.1 - Exibir as informações sobre tempo de conexão de todos os usuários
```shell
w
```
1.2 - Atualize sua lista de repositórios.
```shell
apt-get update
```
1.3 - Criar um apelido, chamado cerol, para remoção recursiva de um arquivo.
```shell
alias cerol='rm -rf'
```

1.4 - Visualizar a partição do diretório /etc.
```shell
df /etc/
```

1.5 - Exibir as últimas 30 linhas da saída do comando dmesg.
```shell
dmesg | tail -n 30
```

1.6 - Listar todos os processos do sistema, em execução, em forma de árvore
```shell
pstree
```
2.1
    B - slot de RAM
    E - conexão de disquete (floppy drive disk)
    J - conector de alimentação do drive

2.2 - 1

3.1 - Dentro do ambiente Linux, no diretório /tmp, crie um subdiretório de nome “bd”, dentro dele um arquivo chamado script2.sql e siga as instruções:
```shell
mkdir /tmp/bd
nano /tmp/bd/script2.sql
```

3.2 - 3.2 Digite o comando para excluir o(s) candidato(s) que possua(m) 28 anos e também o(s) candidato(s) cujo ID seja 4.
```sql
DELETE FROM aluno
WHERE idade > 28 or id = 4;
```

3.3 Houve um erro de digitação. Digite o comando para alterar, dentro da tabela, o nome de "Sara Souza" para "Sara Sousa"
```sql
UPDATE aluno
SET nome = 'Sara Sousa'
WHERE id = 5;
```

3.4 Digite o comando para mostrar a estrutura desta tabela acima. Para isso, considere as informações da imagem
```sql
DESC aluno;
```

3.5 Adicione o campo "PESO" após o campo "ALTURA"
```sql
ALTER TABLE aluno
ADD peso FLOAT AFTER altura;
```

3.6 Digite o comando para alterar o nome desta tabela acima para "CANDIDATOS"
```sql
ALTER TABLE aluno
RENAME TO candidatos;
```