1. Faça um agendamento de forma que seja criado no diretório tmp um arquivo que contenha o status da memória a cada minuto.
```shell
*/1 * * * * free > /tmp/memoria
```

2. Faça um agendamento que as 20:05 reinicie o servidor web.
```shell
5 20 * * * /etc/init.d/httpd restart
```

3. Faça um agendamento de forma que seja criado no diretório tmp um arquivo que contenha o status do uso do disco a cada duas horas. Agende na cron do usuário.
```shell
* */2 * * * df -h > /tmp/disco
```

4. Faça um agendamento de forma que seja executado o comando updatedb diariamente.
```shell

```

5. Executar o comando ls -l e salvar o conteúdo no arquivo arq.txt nos minutos 0 e 10, toda hora, todo dia:
```shell
0,10 * * * * ls -l > arq.txt
```

6. Executar o script backup.sh todo domingo as 3 horas da manhã:
```shell
0 3 * * 0 ./backup.sh
```

7. Executar o script backup.sh com periodicidade de 5 em 5 dias as 19h45:
```shell
45 19 * * */5 ./backup.sh
```

8. Com relação ao recurso de agendamento de tarefas no Linux, ao editar o CRONTAB e inserir o comando: 
0 8 * * sun,sat /scripts/script.sh 
o CRON será agendado para:

8h de todo sábado e domingo

9. A entrada correta em sua tabela do cron para executar um script chamado “script_backup” a cada hora, entre 15:00 e 17:00, toda segunda e quinta, é:
```shell
0 15-17 * * 1,4 ./script_backup
```

10. Nos primeiros cinco dias do mês as 17:25
```shell
25 17 1-5 * * ./script_backup
```