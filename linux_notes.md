### Comandos úteis para Linux
- `pwd` - Exibe o nome do caminho do diretório atual no terminal
- `ifconfig` - Exibe confirações de interface de rede
- `history` - Histórico de comandos. Para apagar o histórico, adicionar parâmetro `-c`.
- `ps aux` - Mostrar processos rodando na máquina
- `top` - Mostrar processos rodando na máquina EM TEMPO REAL
- `ls`: listagem de arquivos e diretórios
    - `-a`: mostra todos os arquivos, incluindo os ocultos
    - `-l`: lista longa
    - `-h`: exibe tamanho do arquivo de forma mais amigável. Normalmente utilizado com o parâmetro `-l`
    - `-t`: tempo de criação/utilização do arquivo
    - `-r`: listaegm reversa
    - `-R`: lista os diretórios e subdiretórios recursivamente
- `logout`, `exit` ou CTRL + D: logout
- `free`: Informações de uso de memória
- `rmdir`: remover diretório vazio
- `date`: exibe ou seta informações atuais de data
- `uname`: exibe informações sobre o SO
- `du`: exibe uso do disco (tamanho) para arquivos e diretórios
- `man <comando>`: exibir manual de comando. Uma opção útil para visualizar o guia do comando é usar o parâmetro `--help`. Os manuais estão disponíveis no diretório `/usr/share/man/`
- `touch`: criar arquivos
- `wc`: quantidade de linhas, palavras e bytes de um arquivo
- `grep`: filtragem de palavras
- `cut`: listagens a partir de arquivos com separadores de colunas definidos. Ex: `cut -f 1 -d: /etc/passwd`, para obter a primeira coluna cujo delimitador é :
- `file`: determinar tipo de arquivo
- `find`: encontrar arquivos
- `locate`: comando mais rápido para encontrar arquivos
- `help`: `[comando] --help` para retornar um guia rápido para comandos internos do interpretador de comandos
- `apropos`: utilizado quando não se sabe comando nem documentação para um determinado assunto. Retorna as manpages que contém a palavra-chave utilizada
- `whatis`: retorna a manpage de um comando, com um mecanismo de busca mais específico
- `info`: retorna informações traduzidas do comando
- `whereis`: retorna localização dos dados do comando e a manpage
- `which`: retorna localiazção do binário do comando
- `tar`: empacotamento e compressão
- `df -h`: tamanho do dispositivo de armazenamento, sistema de arquivos, etc
- `mount`: visualizar partições montadas. Montar dispositivos
- `fdisk -l`: similar ao df, porém mais completo e somente usado pelo admin
- `tr`: traduzir ou transformar caracteres
- `chmod`: alterar permissão em arquivos e diretórios no modo UGOA ou octal
- `adduser`: criar novo usuário. Comando mais completo. Versão mais simples é o `useradd`
- `userdel`: apagar usuário
- `usermod`: renomear e modificar usuário
- `chage`: expirar senha
- `umask`: máscara de proteção nas permissões de um arquivo, diretório ou script
- `chgrp`: alterar grupo de arquivos
- `chown`: altera dono e/ou grupo de arquivos e diretórios. Formato `chown dono:grupo arquivo`
- `passwd`: alterar ou adicionar senha para usuário
- `gpasswd`: administrar o arquivo gpasswd. Adicionar ou remover usuários de grupos

### Tipos de arquivos retornados pelo ls -l
- **`-`**: Arquivo regular. Pode ser um arquivo de texto, binário, ou qualquer outro tipo de arquivo comum.
- **`d`**: Diretório. Representa uma pasta que pode conter outros arquivos e subdiretórios.
- **`l`**: Link simbólico (ou soft link). Um arquivo que aponta para outro arquivo ou diretório.
- **`b`**: Arquivo de dispositivo de bloco. Usado para comunicação com hardware que lida com dados em blocos, como discos rígidos.
- **`c`**: Arquivo de dispositivo de caractere. Usado para comunicação com hardware que lida com dados por caracteres, como terminais e impressoras.
- **`p`**: Pipe nomeado (FIFO). Um tipo especial de arquivo que facilita a comunicação entre processos.
- **`s`**: Socket. Utilizado para comunicação interprocessual (como rede).


### Arquivos úteis do Linux
- `/etc/network/interfaces` - Arquivo de configuração de rede
- `/boot/grub/` - Diretório do Grub (gerenciador de boot)
- `/etc/passwd` - Arquivo que contém usuários do sistema
- `/etc/shadow` - Arquivo que contém senhas do sistema
- `/etc/profile` - Arquivo que contém configurações e variáveis de ambiente do usuário
- `/var/log/syslog` - Principal arquivo de syslog. Caso o syslog não esteja instalado, `/var/messages`.


### Visualizadores de arquivos
- `cat`: visualização completa do arquivo, sem navegação. Também pode ser utilizado para concatenar arquivos
- `less`: permite navegação bidirecional no arquivo, com pg up e pg down
- `more`: navegação unidirecional do arquivo, com a tecla de espaço

### Algumas dicas para a prova
- O diretório `/etc/` está relacionado a configurações. Diretório `/boot/` está relacionado a inicialização.
- ID do usuário: $ (usuário comum) ou # (root). Numericamente, o id do root é 0 e id do usuário comum é >= 1000. Para usuário de apps, o valor é 1<=ID<=999.
- Sistema de permissões de arquivos UGOA: user, group, owner, all. Abaixo uma tabela que descreve melhor o sistema.
    | Valor Octal | Valor Binário | rwx  | Caracteres | Significado                              |
    |-------------|---------------|------|------------|------------------------------------------|
    | 0           | 000           | ---  | −−−        | nenhuma permissão de acesso              |
    | 1           | 001           | --x  | −−x        | permissão de execução                    |
    | 2           | 010           | -w-  | -w-        | permissão de gravação                    |
    | 3           | 011           | -wx  | -wx        | permissão de gravação e execução         |
    | 4           | 100           | r--  | r−−        | permissão de leitura                     |
    | 5           | 101           | r-x  | r-x        | permissão de leitura e execução          |
    | 6           | 110           | rw-  | rw-        | permissão de leitura e gravação          |
    | 7           | 111           | rwx  | rwx        | permissão de leitura, gravação e execução|
- CTRL + R abre busca para procurar último comando digitado por uma string
- `;` executa vários comandos em uma única linha independente do resultado deles. `&&` executa o próximo comando somente se o anterior for bem sucedido. `||` executa o próximo comando somente se o anterior for mal sucedido.
- `mkdir -p` cria os diretórios que não existem também
- `cp -r` copia diretórios recursivamente
- `>` redireciona a saída de um comando em um arquivo, sobrescrevendo seu conteúdo caso exista ou criando o arquivo caso ele não exista. `>>` adiciona ao final do arquivo. `|` redireciona saída de um comando para outro.
- `head` mostra as primeiras 10 linhas. Já o `tail` mostra as primeiras 10 últimas. Para alterar o número de linhas, adicionar o parâmetro `-n`, seguido da quantidade desejada.
- No modo texto, para abrir novos terminais, usa-se CTRL + Alt + F1-F6

### Arquivos referentes a usuários
Há quatro arquivos básicos (todos localizados no diretório `/etc/`) que dizem respeito à administração de usuários, sendo eles:
- `passwd`: contém as informações dos usuários;
- `shadow`: contém as informações das senhas dos usuários;
- `group`: contém informação dos grupos e usuários que fazem parte dele;
- `gshadow`: contém informações a respeito das senhas de grupo.

### Arquivo passwd
- Arquivo de configurações do usuário
- Localizado no `/etc/passwd`
- As senhas vem do arquivo `/etc/shadow`
- Contém 7 colunas: nome, senha (substituída por um x), UID, GID, informações do usuário (GECOS), diretório base e shell

### Colunas do `ls -l`
- Possui 7 colunas: permissões no modo ugoa, link de acesso, dono, grupo, tamanho, data de modificação e nome e/ou diretório.

### Permissão padrão para diretórios e arquivos
- Ao criar um diretório com o comando `mkdir`, a permissão padrão é 777 (leitura, escrita e execução) para dono, grupo e outros.
- Ao criar um arquivo com o comando `touch`, a permissão padrão é 666 (leitura e escrita) para dono, grupo e outros.

### FACL (File Access Control List)
- Lista de controle de acesso a arquivos e diretórios
- `getfacl`: busca a permissão de um arquivo ou diretório
- `setfacl` define permissão para arquivos e diretórios. Para definir a permissão para um usuario, usar o comando abaixo
```shell
setfacl -m u:usuario:rwx arquivo
```
A permissão é no formato "triplex". Formato UGOA utilizado para indicar para quem estamos definindo a permissão. Opção -m indica modificação. Para alterar todos os diretórios, usar *.

### Permissões especiais
- SUID (Set User ID): Focada em arquivos. Octal 4.
- SGID (Set Group ID): Focada em diretórios. Octal 2.
- Sticky bit: Focada no diretório /tmp/. Octal 1.
- No modo triplex, o rws no triplex 1 indica SUID, o rws no triplex 2 indica SGID e rwt no triplex 3 indica sticy bit.
- No modo octal, a permissão especial assumme o primeiro dígito. Ex.: 4777

### Alias
- Apelidos definidos para um comando ou conjunto de comandos
- Definidos localmente no `~/.bashrc` e globalmente no `/etc/bash.bashrc`
- Formato:
```shell
alias nomealias='comando'
```
- Para listar alias criados, utilizar comando `alias`. Para remover um alias, `unalias nomealias`.