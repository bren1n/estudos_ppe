### Comandos importantes de rede para Linux
- `nslookup`: informações de DNS da máquina. `nslookup localhost` para visualizar informações ativas na máquina
- `ifconfig`: informações de IP e MAC de todas as interfaces de rede ou de uma interface específica. Pode ser utilizado para habilitar ou desabilitar interfaces de rede, definir máscara de rede, broadcast, etc.
- `route`: visualiza e altera informações sobre gateway
- `route -n`: tabela de roteamento no kernel
- `hostname`: visualiza nome da máquina ou do servidor. Também é possível alterar dinamicamente o nome da máquina com ele
- `traceroute`: traça rota para um endereço de destino
- `netstat`: informações sobre as conexões de rede, tabelas de roteamento e estatísticas da utilização da interface na rede. `netstat -tulpn` verifica portas abertas na máquina
- `ssh nome@endereco`: acesso remoto
- `scp arquivo nome@endereco:caminho`: enviar arquivos remotamente
- `uptime`: exibe tempo de login
- `w`: exibe tempo de conexão

### Conceitos importantes
- **DNS**: resolve IPs em nomes. Se o DNS falha, `/etc/hosts` é utilizado
- **DHCP**: distribuição de IPs dinamicamente. Se o DHCP falha, o dispositivo gera um APIPA (faixa de endereço 169.254...)
- **IP**: endereço lógico da máquina na rede
- **Gateway**: intermediário de comunicação entre redes. Porta de entrada e saída da rede. Normalmente, esse dispositivo é um roteador. Levar dados de uma rede interna para uma rede externa (seja intranet ou internet)
- **Máscara de sub-rede**: usado principalmente para limitar a quantidade de dispositivos na rede.
- O principal arquivo para configuração de redes no Linux é o `/etc/network/interfaces`. Alteração de informações como o gateway são feitas por ele
- Arquivo para mapear nomes em endereços IP é o `/etc/hosts`. A sintaxe é "IP nome apelido"
- `/proc/net/wireless` mostra informações de redes sem fio.
- `/etc/resolv.conf`: configurações de DNS
- `/etc/services` lista as portas usadas pelos serviços da máquina
- `/etc/init.d/networking`: principal serviço de rede

### Padrão para crimpagem de cabos par trançado
- 568A: BV - V - BL - A - BA - L - BM - M
- 568B: BL - L - BV - A - BA - V - BM - M

### Tipos de cabos par trançado
- UTP: sem blindagem
- STP: blindagem nos pares
- FTP: blindagem total

### Lembretes
- Estudar conceito de subredes, gateway, endereço de broadcast, etc.