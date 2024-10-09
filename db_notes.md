## Sintaxe dos comandos
### Login
```shell
mysql -u <user> -p <password>
#ou
psql -h <host> -U <user> -W
```

### Comandos importantes
```sql
-- Exibir bancos
SHOW DATABASES;

-- Selecionar banco de dados
USE <databaseName>;

-- Exibir tabelas
SHOW TABLES;

-- Exibir informações de tabela
DESC <tableName>;
--ou
DESCRIBE <tableName>;
```
### CREATE
```sql
-- Criar banco de dados
CREATE DATABASE dbName;

-- Criar tabela
CREATE TABLE pessoa(
    id INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    profissao VARCHAR(40) DEFAULT 'Desenvolvedor'
);
```

### ALTER
```sql
-- Adicionar campo novo
ALTER TABLE pessoa
ADD cpf VARCHAR(15);

-- Alterar nome de uma tabela
ALTER TABLE pessoa
RENAME TO trabalhador;

-- Alterar nome de um campo
ALTER TABLE pessoa
CHANGE nome nome_pessoa VARCHAR(50);

-- Remover coluna
ALTER TABLE pessoa
DROP COLUMN cpf;

-- Adicionar depois de um campo ou como primeiro
ALTER TABLE pessoa
ADD dependentes INT AFTER nome;

ALTER TABLE pessoa
ADD dependentes INT FIRST;
```

### DROP
```sql
-- Remover tabela
DROP TABLE pessoa;

-- Remover banco de dados
DROP DATABASE <databasename>;
```

### INSERT
```sql
-- Não obrigatório inserir todos os campos da tabela. Valores inseridos na ordem de digitação
-- Para usar o valor default dos campos, usar essa variação
INSERT INTO pessoa(id, nome, profissao)
VALUES (1, 'Breno', 'Desenvolvedor backend');
-- ou
-- Valores inseridos na mesma ordem da criação da tabela
INSERT INTO pessoa
VALUES (1, 'Breno', 'Desenvolvedor backend');
```

### UPDATE
```sql
-- Where opcional. Caso não utilizado, altera todos os registros
UPDATE pessoa
SET profissao = '3º SGT da FAB', nome = 'Breno'
WHERE id = 1;
```

### DELETE
```sql
-- Where opcional. Caso não utilizado, deleta todos os registros
DELETE FROM pessoa
WHERE id = 1;

-- Deletar todos os registros da tabela
DELETE FROM pessoa;
-- ou
TRUNCATE pessoa;
```

### SELECT
```sql
SELECT id, profissao FROM pessoa WHERE id = 1;
```

### Operadores relacionais
- **=** : Igual
- **!= ou <>** : Diferente
- **>** : Maior que
- **<** : Menor que
- **>=** : Maior ou igual
- **<=** : Menor ou igual
- **BETWEEN X AND Y** : Dentro de um intervalo
- **IN (X, Y, ...)** : Dentro de uma lista
- **NOT IN** : Fora de uma lista
- **LIKE** : Padrão em string
- **IS NULL** : Valor é `NULL`
- **IS NOT NULL** : Valor não é `NULL`

### Operadores lógicos
- **AND**: E
- **OR**: Ou

### Algumas dicas
- Para checar se um valor é nulo, é necessário usar `IS NULL` ou `IS NOT NULL`. O `NULL` não aceita o uso do igual.
- No `LIKE`, % indica "qualquer coisa". _ indica que 
