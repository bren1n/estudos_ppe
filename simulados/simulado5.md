```sql
INSERT INTO funcionarios
VALUES(7, 'Pedro Mendes', 'Estagiário', 1500, 'TI', '2024-05-10', 1);

UPDATE funcionarios
SET salario = salario + (salario * 0,15)
WHERE departamento = 'Vendas';

DELETE FROM funcionarios
WHERE id = 3;

SELECT * FROM funcionarios
WHERE ativo = 1 AND salario > 5000;

SELECT AVG(salario) as media_salario FROM funcionarios
WHERE ativo = 1;
```