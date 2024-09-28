1. No diretório /tmp criar 4 diretórios com os nomes: engenharia, diretoria, sac e publico.
```shell
cd /tmp/
mkdir engenharia diretoria sac publico
```

2. Criar 4 usuários com os nomes: funcionario1, funcionario2, funcionario3 e diretor. Criar suas senhas (123456)
```shell
useradd funcionario1 -p 123456; useradd funcionario2 -p 123456; useradd funcionario3 -p 123456; useradd funcionario4 -p 123456
```

3. Criar 3 grupos de usuários: engenharia, sac e diretoria.
```shell
groupadd engenharia sac diretoria
```

4. Alterar o grupo dono dos diretórios seguindo as orientações abaixo:
```shell
chown :engenharia engenharia/
chown :sac sac/
chown diretor:diretoria diretoria/
```

5. Adicionar o usuário funcionario1 no grupo engenharia, o usuário funcionario2 no grupo sac, o usuário diretor no grupo diretoria.
```shell
usermod -g engenharia funcionario1; usermod -g sac funcionario2; usermog -g diretoria diretor
```

6. Alterar as permissões dos diretórios seguindo as orientações abaixo:
- O usuário diretor tem permissão total em todos os diretórios
- O usuário do funcionario1 tem permissão total no diretório engenharia e pode apenas ler no diretório sac.
- O usuário funcionario2 somente tem permissão total no diretório sac.
- Todos os usuários tem permissão total no diretório público.
```shell

```
