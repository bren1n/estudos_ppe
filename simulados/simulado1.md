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

3.1 - Dentro do diretório /tmp/ppe, crie um arquivo chamado "script1.sql", dentro deste arquivo, digite o comando necessário para a criação da seguinte estrutura dentro da tabela "candidato":

**Campos:**
- id
- nome
- idade
- endereco

Nenhum dos três campos poderá receber valor nulo e o campo id precisa ser chave primária.

```sql
CREATE TABLE candidato(
    id INT PRIMARY_KEY,
    nome VARCHAR(50),
    idade INT,
    endereco VARCHAR(50)
);
```

3.2 - Dentro do mesmo arquivo, digite o comando para criar um Banco de Dados em MySQL
```sql
CREATE DATABASE banco;
```

3.3 - Em seguida, digite o comando em MySQL que altere a idade do João para 24 anos e a profissão para “Professor“ com apenas um comando.

#### alunos
| id  | nome  | profissão | idade |
|-----|-------|-----------|-------|
| 564 | Carlos| Motorista | 19    |
| 987 | João  | Militar   | 22    |

```sql
UPDATE alunos
SET idade = 24, profissão = 'Professor'
WHERE id = 987;
```

3.4 - Dentro do mesmo arquivo, digite 2 comandos em MySQL que excluiriam todos os registros mas manteriam a estrutura da tabela.`
```sql
TRUNCATE alunos;
DELETE FROM alunos;
```

3.5 - Por último, ainda neste arquivo, digite:

- O comando para retornar apenas os alunos que o nome comece com a letra "J";
- O comando para retornar apenas os alunos com mais de 20 anos (inclusive);

```sql
SELECT * FROM alunos WHERE nome LIKE 'J%';

SELECT * FROM ALUNOS WHERE idade >= 20;
```