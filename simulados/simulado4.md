1.1 - Adicionar permissão de execução e escrita para o dono, retira permissão de escrita para o grupo e, para os outros usuários permite apenas leitura para o arquivo script.sh;
```bash
chmod u+wx,g-w,o=r script.sh
```

1.2 - Alterar o dono do “diretorio1” para aluno.
```bash
chown aluno diretorio1
```

1.3 - Ativar o stickbit no “diretório1”;
```bash
chmod o+t diretorio1
# ou
chmod +t diretorio1
```

```bash
# SUID
chmod u+s arquivo

#SGID
chmod g+s arquivo
```

1.4 - Alterar o umask para que somente o usuário dono possa ler e escrever os arquivos e diretórios recém criados;
```shell
# o 7 é mais abrangente (diretórios, arquivos e scripts)
umask 077
```

1.5 - Faça sua máquina responder pelo nome hostaluno.
```shell
hostname hostaluno
# definitivamente alterar /etc/hosts
```

```sql
SELECT * FROM clientes
WHERE ativo = 1 AND idade > 30 and cidade = 'São Paulo';

SELECT COUNT(*) as qtd_produtos FROM produtos
WHERE categoria = 'Eletrônicos' AND estoque > 50;

SELECT SUM(valor_pagamento) FROM pagamentos
WHERE status = 'Confirmado';
```