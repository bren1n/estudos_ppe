-- Crie o banco de dados “ppe”
CREATE DATABASE ppe;

-- Crie o banco de dados “alunos”
CREATE DATABASE alunos;

-- Exclua o banco de dados “alunos”
DROP DATABASE alunos;

-- Selecione o banco de dados “ppe”
USE ppe;

-- Crie uma tabela chamada “candidatos” com a seguinte estrutura:
CREATE TABLE candidatos(
    nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(20) NOT NULL,
    data_de_nasc DATE,
    cidade VARCHAR(30),
    email VARCHAR(40),
    nome_mae VARCHAR(50),
    nome_pai VARCHAR(50)
);

-- Crie uma tabela chamada “provas” com apenas um campo chamado “eags” do tipo varchar(5) e de forma que se eu não entre com nenhum dado neste campo, por padrão ele seja preenchido com “cfs”
CREATE TABLE provas(
    eags VARCHAR(5) DEFAULT 'cfs'
);

-- Crie uma tabela chamada “faltosos” com os campos: “cod_faltoso”, “nome_faltoso”, “data_hora_chegada” e “justificativa”. Lembre-se que “cod_faltoso” e “nome_faltoso” NÃO poderão aceitar valor nulo ou em branco
CREATE TABLE faltosos(
   cod_faltoso INT NOT NULL,
   nome_faltoso VARCHAR(50) NOT NULL,
   data_hora_chegada DATETIME,
   justificativa VARCHAR(100)
);

-- Apague a tabela “faltosos”
DROP TABLE faltosos;

-- Insira os seguintes dados na tabela “candidatos”:
-- Joao 123123 1998-06-01 RJ joao@joao Maria Carlos
-- Andre 232323 1992-07-21 SP andre@andre Maria Marcos
-- Camila 545454 1995-02-01 RJ camila@camila Joana Ricardo
-- Aline 656565 1997-05-09 MG aline@aline Francisca Antônio

INSERT INTO candidatos VALUES ('Joao', '123123', '1998-06-01', 'RJ', 'joao@joao', 'Maria', 'Carlos');
INSERT INTO candidatos VALUES ('Andre', '232323', '1992-07-21', 'SP', 'andre@andre', 'Maria', 'Marcos');
INSERT INTO candidatos VALUES ('Camila', '545454', '1995-02-01', 'RJ', 'camila@camila', 'Joana', 'Ricardo');
INSERT INTO candidatos VALUES ('Aline', '656565', '1997-05-09', 'MG', 'aline@aline', 'Francisca', 'Antônio');

-- Na tabela “candidatos”, altere o CPF de João para “989898”
UPDATE candidatos
SET CPF = '989898'
WHERE nome = 'Joao';

--Na tabela “candidatos” , altere o Nome da Mãe do candidato de CPF “232323” para “Juliana”
UPDATE candidatos
SET nome_mae = 'Juliana'
WHERE CPF = '232323';

-- Na tabela “candidatos”, altere o email do candidato de SP “candidato@candidato”
UPDATE candidatos
SET email = 'candidato@candidato'
WHERE cidade = 'SP';

-- Inclua o campo “RG” na tabela “candidatos”
ALTER TABLE candidatos
ADD RG VARCHAR(20);

-- Dentro da tabela “candidatos”, exclua todos os candidatos paulistas
DELETE FROM candidatos
WHERE cidade = 'SP';

-- Dentro da tabela “candidatos”, exclua o registro do João
DELETE FROM candidatos
WHERE nome = 'Joao';

-- Exclua a tabela “candidatos”
DROP TABLE candidatos;

-- Exiba todas as tabelas criadas
SHOW TABLES;

-- Caso tenha tabela(s) já criada, exiba a estrutura dela(s)
DESC provas;

-- Na tabela “provas”, que já existe, crie a seguinte estrutura:
ALTER TABLE provas
ADD data DATE;

INSERT INTO provas VALUES ('sin', '2016-01-01');
INSERT INTO provas VALUES ('sad', '2016-01-01');
INSERT INTO provas VALUES ('sef', '2016-01-02');
INSERT INTO provas VALUES ('sob', '2016-01-03');
INSERT INTO provas VALUES ('bet', '2016-01-04');
INSERT INTO provas VALUES ('smu', '2016-01-05');

-- Exclua os registros das provas que ocorrerão no dia 01/01/2016
DELETE FROM provas
WHERE data = '2016-01-01';

-- No campo “eags”, onde se encontra “smu”, substitua por “sel”
UPDATE provas
SET eags = 'sel'
WHERE eags = 'smu';

-- Mude o nome do campo “eags” para “eags_especialidades”
ALTER TABLE provas
CHANGE eags eags_especialidades VARCHAR(5);

-- Mude o nome do campo “data” para “data_da_prova”
ALTER TABLE provas
CHANGE data data_da_prova DATE;

-- Mude o nome da tabela “provas” para “EEAR”
ALTER TABLE provas
RENAME TO EEAR;


