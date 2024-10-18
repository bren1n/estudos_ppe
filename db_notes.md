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

### Tipos Essenciais de Dados no MySQL

#### Numéricos

- **INT**
  - Armazena inteiros normais.
  - Faixa: -2,147,483,648 a 2,147,483,647 (ou 0 a 4,294,967,295 se UNSIGNED).
  - Tamanho: 4 bytes.

- **DECIMAL(M,D)**
  - Armazena números decimais.
  - M representa o número total de dígitos.
  - D representa o número de dígitos após o ponto decimal.
  - Tamanho: Dependente de M e D.

- **FLOAT**
  - Armazena números de ponto flutuante de precisão simples.
  - Precisão: Aproximadamente 7 dígitos decimais.
  - Tamanho: 4 bytes.

- **DOUBLE**
  - Armazena números de ponto flutuante de precisão dupla.
  - Precisão: Aproximadamente 15 dígitos decimais.
  - Tamanho: 8 bytes.

#### Textos

- **CHAR(N)**
  - Armazena uma string de comprimento fixo.
  - N é o comprimento da string (máximo de 255 caracteres).
  - Tamanho: N bytes.

- **VARCHAR(N)**
  - Armazena uma string de comprimento variável.
  - N é o comprimento máximo da string (máximo de 65.535 bytes).
  - Tamanho: Depende do valor armazenado.

- **TEXT**
  - Armazena grandes cadeias de caracteres.
  - Limite: 65.535 caracteres.
  - Tamanho: Dependente do valor armazenado.

#### Data e Hora

- **DATE**
  - Armazena uma data no formato `AAAA-MM-DD`.
  - Faixa: 1000-01-01 a 9999-12-31.
  - Tamanho: 3 bytes.

- **DATETIME**
  - Armazena data e hora no formato `AAAA-MM-DD HH:MM:SS`.
  - Faixa: 1000-01-01 00:00:00 a 9999-12-31 23:59:59.
  - Tamanho: 8 bytes.

- **TIMESTAMP**
  - Armazena data e hora como uma representação UNIX (desde 1970-01-01).
  - Faixa: 1970-01-01 00:00:01 UTC a 2038-01-19 03:14:07 UTC.
  - Tamanho: 4 bytes.

### Algumas dicas
- Para checar se um valor é nulo, é necessário usar `IS NULL` ou `IS NOT NULL`. O `NULL` não aceita o uso do igual.
- No `LIKE`, % indica "qualquer coisa". _ indica que 
- Para contar quantos objetos existem em cada valor de algum atributo, use `GROUP BY`. Normalmente utilizado com funções de agregação, como `SUM`, `AVG`, `COUNT`, `MIN` e `MAX`
    ```sql
    SELECT COUNT(*) AS qtd, profissao FROM pessoa
    GROUP BY profissao;
    ```
- `LIMIT <n>` limita o comando a n linhas.