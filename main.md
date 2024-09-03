### Comandos úteis para Linux
- `pwd` - Exibe o nome do caminho do diretório atual no terminal
- `ifconfig` - Exibe confirações de interface de rede
- `history` - Histórico de comandos. Para apagar o histórico, adicionar parâmetro `-c`.
- `ps aux` - Mostrar processos rodando na máquina
- `ls`: listagem de arquivos e diretórios
    - `-a`: mostra todos os arquivos, incluindo os ocultos
    - `-l`: lista longa
    - `-h`: exibe tamanho do arquivo de forma mais amigável. Normalmente utilizado com o parâmetro `-l`
    - `-t`: tempo de criação/utilização do arquivo
    - `-r`: listaegm reversa
    - `-R`: lista os diretórios e subdiretórios recursivamente
- `logout`, `exit` ou CTRL + D: logout
- `free`: Informações de uso de memória
- `rmdir`: remover diretório
- `date`: exibe ou seta informações atuais de data
- `uname`: exibe informações sobre o SO

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
- | redireciona saída de comandos. ; executa vários comandos em uma única linha