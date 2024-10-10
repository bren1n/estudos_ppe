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

#### carros

| Marca      | Modelo | Cor     | Valor  |
|------------|--------|---------|--------|
| Citroen    | C4     | Branco  | 90000  |
| Citroen    | C3     | Vermelho| 30000  |
| Chevrolet  | Onix   | Azul    | 95000  |
| Hyundai    | HB20   | Preto   | 55000  |
| Hyundai    | i30    | Preto   | 45000  |

3.1 - Retorne apenas uma ocorrência de cada marca dos carros desta tabela
```sql
SELECT DISTINCT(marca) FROM carros;
```

3.2 - Retorne apenas os carros pretos com o modelo em ordem decrescente
```sql
SELECT * FROM carros
WHERE cor = 'Preto'
ORDER BY modelo DESC;
```

3.3 Apresente a soma dos valores apenas dos carros da Citroen em um campo chamado “Soma_Citroen”
```sql
SELECT SUM(valor) AS Soma_Citroen FROM carros
WHERE marca = 'Citroen';
```

3.4 - Faça a média de valores apenas dos carros da Hyundai
```sql
SELECT AVG(valor) FROM carros
WHERE marca = 'Hyundai';
```

3.5 - Modifique o modelo do Onix para "Onix Plus"
```sql
UPDATE carros
SET modelo = 'Onix Plus'
WHERE modelo = 'Onix';
```

3.6 - Esta loja não trabalha mais com carros da Citroen. Exclua o Citroen C3 e o Citroen C4
```sql
DELETE FROM carros
WHERE marca = 'Citroen';
```