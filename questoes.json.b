[
  {
    "id": 1,
    "tipo": "fill_blank",
    "enunciado": "Which command is used to set the hostname of the local system? (Specify only the command without any path or parameters.)",
    "resposta_correta": ["hostname", "hostnamectl"],
    "explicacao": "O comando 'hostname' exibe ou define o nome do host do sistema[cite: 1]. \n\n• **Exemplo de uso:** `sudo hostname meu-servidor`\n• **Alternativa moderna:** `sudo hostnamectl set-hostname novo-nome`"
  },
  {
    "id": 2,
    "tipo": "single_choice",
    "enunciado": "Which of the following is a valid IPv6 address?",
    "opcoes": [
      "2001:db8:0g21::1",
      "2001::db8:4581::1",
      "2001:db8:3241::1",
      "2001%db8%9990%%1",
      "2001.db8.819f..1"
    ],
    "resposta_correta": "2001:db8:3241::1",
    "explicacao": "Endereços IPv6 usam 8 grupos hexadecimais separados por dois-pontos[cite: 1].\n\n• **Por que C está correta:** Apenas ela possui sintaxe válida e usa o operador de compressão `::` uma única vez[cite: 1].\n• **Erros nas outras:** 'g' não existe em hexadecimal (A), múltiplos `::` (B), uso incorreto de `%` (D) e pontos de IPv4 (E)[cite: 1]."
  },
  {
    "id": 3,
    "tipo": "fill_blank",
    "enunciado": "What command, depending on its options, can display the open TCP connections, the routing tables, as well as network interface statistics? (Specify only the command without any path or parameters.)",
    "resposta_correta": "netstat",
    "explicacao": "O comando 'netstat' é tradicionalmente usado para inspecionar conexões de rede, tabelas de roteamento e estatísticas de interfaces[cite: 1].\n\n• **Exemplo de uso:** `netstat -tuln` (mostra portas TCP/UDP abertas em escuta)."
  },
  {
    "id": 4,
    "tipo": "fill_blank",
    "enunciado": "Which command included in NetworkManager is a curses application which provides easy acces to the NetworkManager on the command line? (Specify only the command without any path or parameters.)",
    "resposta_correta": "nmtui",
    "explicacao": "'nmtui' (NetworkManager Text User Interface) fornece uma interface baseada em modo texto (curses) para gerenciar redes facilmente no terminal[cite: 1].\n\n• **Exemplo de uso:** `nmtui`"
  },
  {
    "id": 5,
    "tipo": "single_choice",
    "enunciado": "Which if the following tools, used for DNS debugging, reports not only the response from the name sever but also details about the query?",
    "opcoes": [
      "dnsq",
      "hostname",
      "dig",
      "dnslookup",
      "zoneinfo"
    ],
    "resposta_correta": "dig",
    "explicacao": "O comando 'dig' (Domain Information Groper) é a ferramenta padrão para consultas de DNS, exibindo detalhes completos da resposta e da requisição[cite: 1].\n\n• **Exemplo de uso:** `dig example.org`"
  },
  {
    "id": 6,
    "tipo": "single_choice",
    "enunciado": "Which of the following statements is valid in the file /etc/nsswitch.conf?",
    "opcoes": [
      "multi on",
      "192.168.168.4 dns-server",
      "namespaces: net mount procs",
      "include /etc/nsswitch.d/",
      "hosts: files dns"
    ],
    "resposta_correta": "hosts: files dns",
    "explicacao": "O arquivo `/etc/nsswitch.conf` define a ordem das fontes de serviços de nomes (Name Service Switch)[cite: 1].\n\n• **Por que E está correta:** `hosts: files dns` indica que o sistema deve consultar primeiro os arquivos locais (`/etc/hosts`) e depois o DNS[cite: 1]."
  },
  {
    "id": 7,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following connection types, as seen in nmcli connection show, may exist in NetworkManager? (Choose three.)",
    "opcoes": [
      "tcp",
      "ethernet",
      "wifi",
      "ipv6",
      "bridge"
    ],
    "resposta_correta": ["ethernet", "wifi", "bridge"],
    "explicacao": "O NetworkManager gerencia tipos de conexões de hardware e virtuais de rede[cite: 1]. \n\n• **Respostas corretas:** `ethernet`, `wifi` e `bridge` são tipos válidos de perfis de conexão no `nmcli`[cite: 1]."
  },
  {
    "id": 8,
    "tipo": "single_choice",
    "enunciado": "On a Linux workstation, the route command takes a long time before printing out the routing table. Which of the following errors does that indicate?",
    "opcoes": [
      "The local routing information may be corrupted and must be re-validated using a routing protocol.",
      "One of the routers in the routing table is not available which causes the automatic router failure detection mechanism (ARF-D) to wait for a timeout.",
      "There may accidentally be more than one default router in which case a default router election has to be done on the network in order to choose one router as the default.",
      "The Linux Kernel Routing Daemon (LKRD) is not running and should be started using its init script or systemd unit.",
      "DNS resolution may not be working as route by default tries to resolve names of routers and destinations and may run into a timeout."
    ],
    "resposta_correta": "E",
    "explicacao": "Por padrão, o comando `route` tenta reverter endereços IP para nomes de host via DNS. Se o DNS estiver falhando ou lento, o comando demora a responder[cite: 1].\n\n• **Dica:** Use `route -n` para desabilitar a resolução de nomes e acelerar a exibição."
  },
  {
    "id": 9,
    "tipo": "single_choice",
    "enunciado": "What is true about the Hop Limit field in the IPv6 header?",
    "opcoes": [
      "The field is not changed during the transport of a package.",
      "The field is transmitted within a hop-by-hop extension header.",
      "Each router forwarding the packet increases the field's value.",
      "Each router forwarding the packet decreases the field's value.",
      "For multicast packages, the field's value is always 1."
    ],
    "resposta_correta": "D",
    "explicacao": "O campo 'Hop Limit' no IPv6 (equivalente ao TTL no IPv4) serve para evitar loops de rede infinitos, sendo decrementado em 1 por cada roteador que encaminha o pacote[cite: 1]."
  },
  {
    "id": 10,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following nmcli subcommands exist? (Choose two.)",
    "opcoes": [
      "nmcli ethernet",
      "nmcli device",
      "nmcli wifi",
      "nmcli address",
      "nmcli connection"
    ],
    "resposta_correta": ["nmcli device", "nmcli connection"],
    "explicacao": "O `nmcli` opera principalmente sobre objetos como `device` (dispositivos de hardware) e `connection` (perfis de configuração)[cite: 1]."
  },
  {
    "id": 11,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following changes may occur as a consequence of using the command ip? (Choose three.)",
    "opcoes": [
      "Network interfaces may become active or inactive.",
      "New name servers may be added to the resolver configuration.",
      "The system's host name may change.",
      "IP addresses may change.",
      "The routing table may change."
    ],
    "resposta_correta": ["Network interfaces may become active or inactive.", "IP addresses may change.", "The routing table may change."],
    "explicacao": "O comando `ip` manipula endereços IP (`ip addr`), estado de interfaces (`ip link`) e rotas (`ip route`), mas não mexe em resolução de nomes ou hostname[cite: 1]."
  },
  {
    "id": 12,
    "tipo": "single_choice",
    "enunciado": "How many IP addresses can be used for unique hosts inside the IPv4 subnet 192.168.2.128/26?",
    "opcoes": [
      "6",
      "14",
      "30",
      "62",
      "126"
    ],
    "resposta_correta": "D",
    "explicacao": "Uma máscara `/26` deixa 6 bits para hosts ($2^6 = 64$ endereços totais). Subtraindo o endereço de rede e o de broadcast, restam $64 - 2 = 62$ IPs utilizáveis[cite: 1]."
  },
  {
    "id": 13,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following IPv4 networks are reserved by IANA for private address assignment and private routing? (Choose three.)",
    "opcoes": [
      "10.0.0.0/8",
      "127.0.0.0/8",
      "169.255.0.0/16",
      "172.16.0.0/12",
      "192.168.0.0/16"
    ],
    "resposta_correta": ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"],
    "explicacao": "As faixas IPv4 privadas definidas pela RFC 1918 são `10.0.0.0/8`, `172.16.0.0/12` e `192.168.0.0/16`[cite: 1]. (Nota: 127 é loopback e 169.254 é APIPA)."
  },
  {
    "id": 14,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following commands configure network interfaces based on the system’s existing distribution-specific configuration files? (Choose two.)",
    "opcoes": [
      "ifconf",
      "ifdown",
      "ifpause",
      "ifstart",
      "ifup"
    ],
    "resposta_correta": ["ifdown", "ifup"],
    "explicacao": "`ifup` e `ifdown` são os comandos clássicos baseados em scripts de distribuição para ativar e desativar interfaces de rede[cite: 1]."
  },
  {
    "id": 15,
    "tipo": "single_choice",
    "enunciado": "Which of the following statements is true if the UID of a regular user is identical to the GID of a group?",
    "opcoes": [
      "UID have precedence over GIDs, therefore the user is available while the group doesn’t.",
      "The user as well as the group are not available to avoid ambiguity due to the ID conflict.",
      "UIDs and GIDs are independent of each other, therefore the user as well as the group are still available.",
      "The user is the only member of the group, even if the group configuration contains other members.",
      "GIDs have precedence over UIDs, therefore the group is available while the user isn’t."
    ],
    "resposta_correta": "C",
    "explicacao": "No Linux, o espaço de numeração de UIDs (usuários) e GIDs (grupos) são estritamente independentes uns dos outros, podendo haver números idênticos sem conflito estrutural[cite: 1]."
  },
  {
    "id": 16,
    "tipo": "single_choice",
    "enunciado": "Which of the following information is stored in /etc/shadow for each user?",
    "opcoes": [
      "The timestamp of the user’s last login",
      "The user’s private SSH keys",
      "The hashed password of the user",
      "The numerical user ID (UID)",
      "The path to the user’s home directory"
    ],
    "resposta_correta": "C",
    "explicacao": "O arquivo `/etc/shadow` armazena as senhas criptografadas (hashes) e informações de expiração de senha de forma segura (acessível apenas pelo root)[cite: 1]."
  },
  {
    "id": 17,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands shows all active systemd timers?",
    "opcoes": [
      "systemctl-timer show",
      "timectl list",
      "systemctl –t",
      "systemctl list-timers",
      "timeq"
    ],
    "resposta_correta": "D",
    "explicacao": "O comando `systemctl list-timers` lista todas as unidades de temporizador (timers) ativas no systemd[cite: 1].\n\n• **Exemplo:** `systemctl list-timers`"
  },
  {
    "id": 18,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following tasks can the date command accomplish? (Choose two.)",
    "opcoes": [
      "Set the system's date and time.",
      "Set the system's date but not the time.",
      "Calculate the time span between two dates.",
      "Print a calendar for a month or a year.",
      "Display time in a specific format."
    ],
    "resposta_correta": ["Set the system's date and time.", "Display time in a specific format."],
    "explicacao": "O comando `date` pode exibir a data formatada (ex: `date +'%Y-%m-%d'`) e alterar a data/hora do sistema (com privilégios de root)[cite: 1]."
  },
  {
    "id": 19,
    "tipo": "fill_blank",
    "enunciado": "Which file, if present, must contain all users that are allowed to use the cron scheduling system? (Specify the full name of the file, including path.)",
    "resposta_correta": "/etc/cron.allow",
    "explicacao": "O arquivo `/etc/cron.allow` define explicitamente quais usuários têm permissão para criar e gerenciar tarefas no cron[cite: 1]."
  },
  {
    "id": 20,
    "tipo": "multiple_choice",
    "enunciado": "What can be specified with useradd? (Choose two.)",
    "opcoes": [
      "Commands the user can run using sudo.",
      "The absolute path to the user's home directory.",
      "Which printers are available for the new user.",
      "The SSH keys used to login to the new account.",
      "The numeric user ID (UID) of the user."
    ],
    "resposta_correta": ["The absolute path to the user's home directory.", "The numeric user ID (UID) of the user."],
    "explicacao": "Com o `useradd`, você pode definir o diretório home (`-d`) e o UID numérico (`-u`), entre outras opções[cite: 1]."
  },
  {
    "id": 21,
    "tipo": "single_choice",
    "enunciado": "What is true about the file /etc/localtime?",
    "opcoes": [
      "It is a plain text file containing a string such as Europe/Berlin",
      "It is created and maintained by the NTP service based on the location of the system's IP address.",
      "It is a symlink to /sys/device/clock/ltime and always contains the current local time.",
      "After changing this file, newtzconfig has to be run to make the changes effective.",
      "It is either a symlink to or a copy of a timezone information file such as /usr/share/zoneinfo/Europe/Berlin."
    ],
    "resposta_correta": "E",
    "explicacao": "O arquivo `/etc/localtime` aponta (via link simbólico) ou copia o arquivo binário de fuso horário correspondente em `/usr/share/zoneinfo/`[cite: 1]."
  },
  {
    "id": 22,
    "tipo": "single_choice",
    "enunciado": "Which of the following statements is true regarding systemd timer units?",
    "opcoes": [
      "Timer units can only be defined within a service unit's file.",
      "The command executed by the timer is specified in the timer unit's [Cmd] section.",
      "A dedicated system service, systemd-cron, handles the execution of timer units.",
      "Timer units only exist in the system scope and are not available for users.",
      "Each systemd timer unit controls a specific systemd service unit."
    ],
    "resposta_correta": "E",
    "explicacao": "Um timer do systemd (arquivo `.timer`) serve para disparar e controlar uma unidade de serviço (`.service`) correspondente de mesmo nome[cite: 1]."
  },
  {
    "id": 23,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following fields are available in the standard format of both the global /etc/crontab file as well as in user-specific crontab files? (Choose two.)",
    "opcoes": [
      "Year",
      "Minute",
      "Username",
      "Effective group ID",
      "Command"
    ],
    "resposta_correta": ["Minute", "Command"],
    "explicacao": "Tanto o cron global quanto o de usuário compartilham os campos de minutos e o comando a ser executado[cite: 1]. (O crontab global inclui o campo de usuário após o agendamento)."
  },
  {
    "id": 24,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands should be executed when starting a login shell in order to change the language of messages for an internationalized program to Portuguese (pt)?",
    "opcoes": [
      "export LANGUAGE=\"pt\"",
      "export LC_MESSAGES=\"pt\"",
      "export UI_MESSAGES=\"pt\"",
      "export MESSAGE=\"pt\"",
      "export ALL_MESSAGES=\"pt\""
    ],
    "resposta_correta": "B",
    "explicacao": "A variável de ambiente padrão para definir mensagens de localização de programas é `LC_MESSAGES` (ou `LANG`)[cite: 1]."
  },
  {
    "id": 25,
    "tipo": "single_choice",
    "enunciado": "Which of the following files assigns a user to its primary group?",
    "opcoes": [
      "/etc/pgroup",
      "/etc/shadow",
      "/etc/passwd",
      "/etc/group",
      "/etc/gshadow"
    ],
    "resposta_correta": "C",
    "explicacao": "O quarto campo do arquivo `/etc/passwd` define o GID primário do usuário, associando-o ao seu grupo principal[cite: 1]."
  },
  {
    "id": 26,
    "tipo": "single_choice",
    "enunciado": "Which of the following steps prevents a user from obtaining an interactive login session?",
    "opcoes": [
      "Setting the UID for the user to 0.",
      "Running the command chsh –s /bin/false with the user name.",
      "Removing the user from the group staff.",
      "Adding the user to /etc/noaccess.",
      "Creating a .nologin file in the user’s home directory."
    ],
    "resposta_correta": "B",
    "explicacao": "Alterar o shell do usuário para `/bin/false` ou `/sbin/nologin` impede que ele abra uma sessão interativa no terminal[cite: 1].\n\n• **Exemplo:** `chsh -s /bin/false nomeusuario`"
  },
  {
    "id": 27,
    "tipo": "fill_blank",
    "enunciado": "Which command included in systemd supports selecting messages from the systemd journal by criteria such as time or unit name? (Specify only the command without any path or parameters.)",
    "resposta_correta": "journalctl",
    "explicacao": "'journalctl' é o utilitário para consultar e filtrar os logs coletados pelo systemd-journald[cite: 1].\n\n• **Exemplo:** `journalctl -u nginx.service`"
  },
  {
    "id": 28,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following statements about systemd-journald are true? (Choose three.)",
    "opcoes": [
      "It is incompatible with syslog and cannot be installed on a system using regular syslog.",
      "It only processes messages of systemd and not messages of any other tools.",
      "It can pass log messages to syslog for further processing.",
      "It maintains metadata such as _UID or _PID for each message.",
      "It supports syslog facilities such as kern, user, and auth."
    ],
    "resposta_correta": ["It can pass log messages to syslog for further processing.", "It maintains metadata such as _UID or _PID for each message.", "It supports syslog facilities such as kern, user, and auth."],
    "explicacao": "O journald coleta metadados avançados, suporta facilidades tradicionais do syslog e pode encaminhar os logs para um daemon syslog clássico se configurado[cite: 1]."
  },
  {
    "id": 29,
    "tipo": "fill_blank",
    "enunciado": "Which command must be run after adding a new email alias to the configuration in order to make this change effective? (Specify the command without any path but including all required parameters.)",
    "resposta_correta": "newaliases",
    "explicacao": "O comando `newaliases` reconstrói a base de dados de apelidos de e-mail (aliases) para que o MTA reconheça as alterações[cite: 1]."
  },
  {
    "id": 30,
    "tipo": "single_choice",
    "enunciado": "Which option in the chrony configuration file changes the initial interval of polls to a NTP server in order to speed up the initial synchronization?",
    "opcoes": [
      "iburst",
      "quickstart",
      "fast",
      "fsync",
      "flood"
    ],
    "resposta_correta": "A",
    "explicacao": "A opção `iburst` no arquivo `chrony.conf` envia um lote inicial de pacotes rápidos para acelerar a sincronização com o servidor NTP[cite: 1]."
  },
  {
    "id": 31,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands is used to rotate, compress, and mail system logs?",
    "opcoes": [
      "logrotate",
      "striplog",
      "syslogd --rotate",
      "rotatelog",
      "logger"
    ],
    "resposta_correta": "A",
    "explicacao": "O `logrotate` gerencia a rotação, compressão, remoção e envio por e-mail de arquivos de log automaticamente[cite: 1]."
  },
  {
    "id": 32,
    "tipo": "single_choice",
    "enunciado": "Why is the correct configuration of a system's time zone important?",
    "opcoes": [
      "Because the timezone is included in checksum calculations and timezone changes invalidate existing checksums.",
      "Because the time zone is saved as part of the modification times of files and cannot be changed after a file is created.",
      "Because the environment variables LANG and LC_MESSAGES are, by default, set according to the time zone.",
      "Because NTP chooses servers nearby based on the configured time zone.",
      "Because the conversion of Unix timestamps to local time relies on the time zone configuration."
    ],
    "resposta_correta": "E",
    "explicacao": "A conversão correta de carimbos de data/hora do sistema (timestamps em segundos desde 1970) para a hora local legível depende estritamente do fuso horário configurado[cite: 1]."
  },
  {
    "id": 33,
    "tipo": "fill_blank",
    "enunciado": "Which command, available with all sendmail-compatible MTAs, is used to list the contents of the MTA’s mail queue? (Specify only the command without any path or parameters.)",
    "resposta_correta": "mailq",
    "explicacao": "O comando `mailq` exibe as mensagens pendentes na fila de correio do MTA[cite: 1]."
  },
  {
    "id": 34,
    "tipo": "fill_blank",
    "enunciado": "What is the top-level directory which contains the configuration files for CUPS? (Specify the full path to the directory.)",
    "resposta_correta": "/etc/cups/",
    "explicacao": "O diretório principal onde ficam os arquivos de configuração do servidor de impressão CUPS é `/etc/cups/`[cite: 1]."
  },
  {
    "id": 35,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands lists all queued print jobs?",
    "opcoes": [
      "lpd",
      "lpr",
      "lp",
      "lsq",
      "lpq"
    ],
    "resposta_correta": "E",
    "explicacao": "O comando `lpq` (Line Printer Queue) mostra o status e os trabalhos de impressão atualmente enfileirados[cite: 1]."
  },
  {
    "id": 36,
    "tipo": "single_choice",
    "enunciado": "Which of the following entries in /etc/syslog.conf writes all mail related events to the file /var/log/maillog and sends all critical events to the remote server logger.example.com?",
    "opcoes": [
      "mail.* /var/log/maillog \n mail,crit @logger.example.com",
      "mail.* /var/log/maillog \n mail.crit @logger.example.com",
      "mail /var/log/maillog \n mail.crit @logger.example.com",
      "mail.* /var/log/maillog \n mail.crit @logger.example.com",
      "mail * /var/log/maillog \n mail crit @logger.example.com"
    ],
    "resposta_correta": "D",
    "explicacao": "A sintaxe padrão do syslog usa seletor e ação separados por tabulação/espaço, direcionando logs locais com caminhos absolutos e remotos usando o prefixo `@`[cite: 1]."
  },
  {
    "id": 37,
    "tipo": "fill_blank",
    "enunciado": "Which option in the /etc/ntp.conf file specifies an external NTP source to be queried for time information? (Specify only the option without any values or parameters.)",
    "resposta_correta": "server",
    "explicacao": "A diretiva `server` no arquivo de configuração do NTP especifica um servidor de tempo externo de referência[cite: 1]."
  },
  {
    "id": 38,
    "tipo": "single_choice",
    "enunciado": "Which of the following protocols is related to the term open relay?",
    "opcoes": [
      "SMTP",
      "POP3",
      "NTP",
      "IMAP",
      "LDAP"
    ],
    "resposta_correta": "A",
    "explicacao": "Um 'open relay' refere-se a um servidor de e-mail SMTP mal configurado que aceita e retransmite mensagens de qualquer remetente para qualquer destino, sendo muito usado por spammers[cite: 1]."
  },
  {
    "id": 39,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands displays all environment and shell variables?",
    "opcoes": [
      "getargs",
      "1senv",
      "1s",
      "env",
      "1sshell"
    ],
    "resposta_correta": "D",
    "explicacao": "O comando `env` (ou `printenv`) exibe as variáveis de ambiente ativas na sessão atual[cite: 1]."
  },
  {
    "id": 40,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following comparison operators for test work on elements in the file system? (Choose two.)",
    "opcoes": [
      "-z",
      "-eq",
      "-d",
      "-f",
      "-lt"
    ],
    "resposta_correta": ["-d", "-f"],
    "explicacao": "No comando `test` (ou colchetes `[ ]`), `-d` verifica se um caminho é um diretório e `-f` verifica se é um arquivo regular[cite: 1]."
  },
  {
    "id": 41,
    "tipo": "single_choice",
    "enunciado": "What information is provided by the echo $$ command?",
    "opcoes": [
      "The process ID of the current shell.",
      "The process ID for the following command.",
      "The process ID of the last command executed.",
      "The process ID of the last command which has been placed in the background.",
      "The process ID of the echo command."
    ],
    "resposta_correta": "A",
    "explicacao": "A variável especial `$$` expande para o PID (Process ID) da instância atual do interpretador de comandos (shell)[cite: 1]."
  },
  {
    "id": 42,
    "tipo": "single_choice",
    "enunciado": "Which command makes the shell variable named VARIABLE visible to subshells?",
    "opcoes": [
      "export $VARIABLE",
      "env VARIABLE",
      "set $VARIABLE",
      "set VARIABLE",
      "export VARIABLE"
    ],
    "resposta_correta": "E",
    "explicacao": "O comando `export` torna uma variável de shell visível para os subshell gerados a partir dele[cite: 1].\n\n• **Exemplo:** `export VARIABLE=valor`"
  },
  {
    "id": 43,
    "tipo": "single_choice",
    "enunciado": "What output is produced by the following command sequence?\necho 1 2 3 4 5 6 | while read a b c; do\n done\n echo result $c $b $a;",
    "opcoes": [
      "result: 6 5 4",
      "result: 1 2 3 4 5 6",
      "result: 3 4 5 6 2 1",
      "result: 6 5 4 3 2 1",
      "result: 3 2 1"
    ],
    "resposta_correta": "C",
    "explicacao": "O comando `read a b c` lê os primeiros valores (`a=1`, `b=2`), e o último (`c`) absorve o restante da linha (`3 4 5 6`). Ao inverter na saída `$c $b $a`, resulta em `3 4 5 6 2 1`[cite: 1]."
  },
  {
    "id": 44,
    "tipo": "single_choice",
    "enunciado": "Which of the following configuration files should be modified to globally set shell variables for all users?",
    "opcoes": [
      "/etc/profile",
      "/etc/bashrc",
      "~/.bash_profile",
      "/etc/.bashrc",
      "/etc/shellenv"
    ],
    "resposta_correta": "A",
    "explicacao": "O arquivo `/etc/profile` é executado globalmente para todos os usuários ao iniciarem uma shell de login[cite: 1]."
  },
  {
    "id": 45,
    "tipo": "single_choice",
    "enunciado": "What output does the command seq 10 produce?",
    "opcoes": [
      "A continuous stream of numbers increasing in increments of 10 until the command is stopped.",
      "It creates no output because a second parameter is missing.",
      "The number 0 through 9 with one number per line.",
      "The number 10 to standard output.",
      "The numbers 1 through 10 with one number per line."
    ],
    "resposta_correta": "E",
    "explicacao": "O comando `seq 10` gera uma sequência de números de 1 até 10, com um número por linha[cite: 1]."
  },
  {
    "id": 46,
    "tipo": "fill_blank",
    "enunciado": "What command list the aliases defined in the current Bash shell? (Specify only the command without any path or parameters.)",
    "resposta_correta": "alias",
    "explicacao": "Executar `alias` sem parâmetros lista todos os apelidos configurados na sessão atual do Bash[cite: 1]."
  },
  {
    "id": 47,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands can be used to limit the amount of memory a user may use?",
    "opcoes": [
      "umask",
      "usermod",
      "passwd",
      "ulimit",
      "chage"
    ],
    "resposta_correta": "D",
    "explicacao": "O comando `ulimit` permite definir ou restringir recursos do sistema (como uso de memória, tamanho de arquivos e processos) para os usuários[cite: 1]."
  },
  {
    "id": 48,
    "tipo": "single_choice",
    "enunciado": "What is a purpose of an SSH host key?",
    "opcoes": [
      "It must be sent by any SSH client in addition to a user key in order to identify the client’s host.",
      "It is root key by which all user SSH keys must be signed.",
      "It provides the server’s identity information to connecting SSH clients.",
      "It authenticates any user that logs into a remote machine from the key’s host.",
      "It is used by system services like cron, syslog or a backup job to automatically connect to remote hosts."
    ],
    "resposta_correta": "C",
    "explicacao": "A chave de host SSH serve para identificar de forma confiável o servidor perante o cliente, prevenindo ataques de *man-in-the-middle*[cite: 1]."
  },
  {
    "id": 49,
    "tipo": "single_choice",
    "enunciado": "What is the purpose of TCP wrapper?",
    "opcoes": [
      "Manage and adjust bandwidth used by TCP services.",
      "Bind a network service to a TCP port.",
      "Encapsulate TCP messages in IP packets.",
      "Add SSL support to plain text TCP services.",
      "Limit access to a network service."
    ],
    "resposta_correta": "E",
    "explicacao": "O TCP Wrapper (`/etc/hosts.allow` e `/etc/hosts.deny`) funciona como um controle de acesso baseado em host para serviços de rede[cite: 1]."
  },
  {
    "id": 50,
    "tipo": "multiple_choice",
    "enunciado": "Given the following excerpt of the sudo configuration:\njane ANY=NOPASSWD: /bin/kill, /bin/id, PASSWD: /sbin/fdisk\nWhich of the following statements are true? (Choose three.)",
    "opcoes": [
      "Jane can run /bin/id only after specifying her password.",
      "Jane can run /sbin/fdisk after specifying root’s password.",
      "Jane can run /sbin/fdisk after specifying her password.",
      "Jane can run /bin/kill without specifying a password.",
      "Jane can run /bin/id without specifying her password."
    ],
    "resposta_correta": ["Jane can run /sbin/fdisk after specifying her password.", "Jane can run /bin/kill without specifying a password.", "Jane can run /bin/id without specifying her password."],
    "explicacao": "A regra declara NOPASSWD para kill e id (portanto sem senha), e exige senha (`PASSWD`) para o comando fdisk[cite: 1]."
  },
  {
    "id": 51,
    "tipo": "single_choice",
    "enunciado": "Which configuration file contains the default options for SSH clients?",
    "opcoes": [
      "/etc/ssh/sshd_config",
      "/etc/ssh/ssh",
      "/etc/ssh/ssh_config",
      "/etc/ssh/client",
      "/etc/ssh/ssh_client"
    ],
    "resposta_correta": "C",
    "explicacao": "O arquivo `/etc/ssh/ssh_config` contém as configurações globais padrão para os clientes SSH, enquanto `sshd_config` é para o servidor[cite: 1]."
  },
  {
    "id": 52,
    "tipo": "single_choice",
    "enunciado": "Depending on a system’s configuration, which of the following files can be used to enable and disable network services running on this host?",
    "opcoes": [
      "/etc/profile",
      "/etc/xinetd.conf",
      "/etc/ports",
      "/etc/services",
      "/etc/host.conf"
    ],
    "resposta_correta": "B",
    "explicacao": "O super-servidor `xinetd` (configurado em `/etc/xinetd.conf` ou `/etc/xinetd.d/`) gerencia e controla a ativação de vários serviços de rede sob demanda[cite: 1]."
  },
  {
    "id": 53,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands can identify the PID od a process which opened a TCP port?",
    "opcoes": [
      "ptrace",
      "strace",
      "debug",
      "lsof",
      "nessus"
    ],
    "resposta_correta": "D",
    "explicacao": "O comando `lsof` (List Open Files) lista arquivos e sockets abertos, permitindo identificar qual processo (PID) está usando uma porta TCP[cite: 1].\n\n• **Exemplo:** `lsof -i :80`"
  },
  {
    "id": 54,
    "tipo": "fill_blank",
    "enunciado": "When using X11 forwarding in SSH, what environment variable is automatically set in the remote shell in order to help applications to connect to the correct X11 server? (Specify only the environment variable without any additional commands or values.)",
    "resposta_correta": "DISPLAY",
    "explicacao": "A variável de ambiente `DISPLAY` é configurada automaticamente no redirecionamento X11 via SSH para direcionar a interface gráfica ao cliente local[cite: 1]."
  },
  {
    "id": 55,
    "tipo": "fill_blank",
    "enunciado": "The presence of what file will temporarily prevent all users except root from logging into a system? (Specify the full name of the file, including path.)",
    "resposta_correta": "/etc/nologin",
    "explicacao": "Se o arquivo `/etc/nologin` existir, o sistema impede logins de usuários comuns, exibindo a mensagem contida nele[cite: 1]."
  },
  {
    "id": 56,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands preloads and manages existing SSH keys that are used for automatic authentication while logging in to order machines using SSH?",
    "opcoes": [
      "sshd",
      "ssh-keyring",
      "ssh-keygen",
      "ssh-pki",
      "ssh-agent"
    ],
    "resposta_correta": "E",
    "explicacao": "O `ssh-agent` é um gerenciador de chaves que armazena chaves privadas em memória para autenticação sem senha repetitiva[cite: 1]."
  },
  {
    "id": 57,
    "tipo": "single_choice",
    "enunciado": "On a machine running several X servers, how do programs identify the different instances of the X11 server?",
    "opcoes": [
      "By a fixed UUID that is defined in the X11 configuration file.",
      "By a display name like :1.",
      "By the name of the user that runs the X server like x11:bob.",
      "By a device name like /dev/X11/xservers/1.",
      "By a unique IPv6 address from the fe80::/64 subnet."
    ],
    "resposta_correta": "B",
    "explicacao": "Instâncias do servidor X11 são diferenciadas por números de display, como `:0`, `:1`, etc[cite: 1]."
  },
  {
    "id": 58,
    "tipo": "single_choice",
    "enunciado": "What is the purpose of a screen reader?",
    "opcoes": [
      "It manages virtual keyboards on touch screen displays.",
      "It reads the parameters of the attached monitors and creates an appropriate X11 configuration.",
      "It displays lines and markers to help people use speed reading techniques.",
      "It manages and displays files that contain e-books.",
      "It reads displayed text to accommodate the needs of blind or visually impaired people."
    ],
    "resposta_correta": "E",
    "explicacao": "Um leitor de tela (*screen reader*) é uma tecnologia assistiva que converte texto exibido na tela em áudio ou saída braille para deficientes visuais[cite: 1]."
  },
  {
    "id": 59,
    "tipo": "single_choice",
    "enunciado": "The X11 configuration file xorg.conf is grouped into section. How is the content of the section SectionName represented?",
    "opcoes": [
      "It is placed in curly brackets as in Section SectionName {…}.",
      "It is placed between the tags <Section name=\"SectionName\"> and </Section>.",
      "It is placed between a line containing Section “SectionName” and a line containing EndSection.",
      "It is placed after the row [SectionName].",
      "It is placed after an initial unindented Section “SectionName” and must be indented by exactly one tab character."
    ],
    "resposta_correta": "C",
    "explicacao": "Seções no arquivo `xorg.conf` iniciam com a palavra `Section \"Nome\"` e terminam com a linha `EndSection`[cite: 1]."
  },
  {
    "id": 60,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following features are provided by SPICE? (Choose two.)",
    "opcoes": [
      "Connecting local USB devices to remote applications.",
      "Accessing graphical applications on a remote host.",
      "Replacing Xorg as local X11 server.",
      "Downloading and locally installing applications from a remote machine.",
      "Uploading and running a binary program on a remote machine."
    ],
    "resposta_correta": ["Connecting local USB devices to remote applications.", "Accessing graphical applications on a remote host."],
    "explicacao": "O protocolo SPICE (Simple Protocol for Independent Computing Environments) é usado em virtualização para acesso gráfico remoto de alta performance e redirecionamento de USB[cite: 1]."
  },
  {
    "id": 61,
    "tipo": "single_choice",
    "enunciado": "What is the systemd journal stored?",
    "opcoes": [
      "/var/jlog/and/var/jlogd/",
      "/proc/log/and/proc/klog/",
      "/run/log/journal/or/var/log/journal/",
      "/var/log/syslog.bin or /var/log/syslog.jrn",
      "/etc/systemd/journal/ or /usr/lib/systemd/journal/"
    ],
    "resposta_correta": "C",
    "explicacao": "Os logs binários do systemd journal são armazenados em `/run/log/journal/` (volátil, em memória) ou `/var/log/journal/` (persistente no disco)[cite: 1]."
  },
  {
    "id": 62,
    "tipo": "single_choice",
    "enunciado": "Which of the following is true regarding the command sendmail?",
    "opcoes": [
      "With any MTA, the sendmail command must be run periodically by the cron daemon.",
      "When using systemd, sendmail is an alias to relayctl.",
      "The sendmail command prints the MTA's queue history of which mails have been sent successfully.",
      "It is only available when the sendmail MTA is installed.",
      "All common MTAs, including Postfix and Exim, provide a sendmail command."
    ],
    "resposta_correta": "E",
    "explicacao": "Para manter compatibilidade com scripts legados, todos os principais MTAs (Postfix, Exim, Sendmail) disponibilizam o comando `sendmail`[cite: 1]."
  },
  {
    "id": 63,
    "tipo": "single_choice",
    "enunciado": "Which file inside the CUPS configuration directory contains the settings of the printers?",
    "opcoes": [
      "cups-devices.conf",
      "snmp.conf",
      "printers.conf",
      "printcap.conf",
      "cupsd.conf"
    ],
    "resposta_correta": "C",
    "explicacao": "O arquivo `printers.conf` localizado no diretório do CUPS armazena as definições e configurações das impressoras cadastradas[cite: 1]."
  },
  {
    "id": 64,
    "tipo": "fill_blank",
    "enunciado": "Which file is processed by newaliases? (Specify the full name of the file, including path.)",
    "resposta_correta": "/etc/mail/aliases",
    "explicacao": "O comando `newaliases` lê e compila o arquivo de apelidos localizado em `/etc/aliases` ou `/etc/mail/aliases`[cite: 1]."
  },
  {
    "id": 65,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following are syslog facilities? (Choose two.)",
    "opcoes": [
      "local5",
      "accounting",
      "mail",
      "postmaster",
      "remote"
    ],
    "resposta_correta": ["local5", "mail"],
    "explicacao": "`mail` e `local5` (além de auth, cron, daemon, kern, etc.) são facilidades padrão aceitas pelo protocolo syslog[cite: 1]."
  },
  {
    "id": 66,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following parameters are used for journalctl to limit the time frame of the output? (Choose two.)",
    "opcoes": [
      "--since=",
      "--from=",
      "--until=",
      "--upto=",
      "--date="
    ],
    "resposta_correta": ["--since=", "--until="],
    "explicacao": "O `journalctl` usa os parâmetros `--since` e `--until` para delimitar o intervalo de tempo dos logs exibidos[cite: 1].\n\n• **Exemplo:** `journalctl --since \"2026-01-01\"`"
  },
  {
    "id": 67,
    "tipo": "single_choice",
    "enunciado": "What is true regarding the file ~/.forward?",
    "opcoes": [
      "When configured correctly ~/.forward can be used to forward each incoming mail to one or more other recipients.",
      "After editing ~/.forward the user must run newaliases to make the mail server aware of the changes.",
      "Using ~/.forward, root may configure any email address whereas all other users may configure only their own addresses.",
      "As ~/.forward is owned by the MTA and not writable by the user, it must be edited using the editaliases command.",
      "By default, only ~/.forward files of users in the group mailq are processed while all other user's ~/.forward files are ignored."
    ],
    "resposta_correta": "A",
    "explicacao": "O arquivo `.forward` no diretório home de um usuário serve para redirecionar suas mensagens de e-mail recebidas para outros endereços[cite: 1]."
  },
  {
    "id": 68,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following commands display a list of jobs in the print queue? (Choose two.)",
    "opcoes": [
      "cups -list",
      "1prm -1",
      "lpstat",
      "1pr -q",
      "1pq"
    ],
    "resposta_correta": ["lpstat", "1pq"],
    "explicacao": "Tanto `lpq` quanto `lpstat` (especialmente com a flag `-o`) são utilizados para verificar o estado da fila de impressão[cite: 1]."
  },
  {
    "id": 69,
    "tipo": "multiple_choice",
    "enunciado": "On a system using systemd-journald, which of the following commands add the message Howdy to the system log? (Choose two.)",
    "opcoes": [
      "append Howdy",
      "logger Howdy",
      "systemd-cat echo Howdy",
      "echo Howdy > /dev/journal",
      "journalctl add Howdy"
    ],
    "resposta_correta": ["logger Howdy", "systemd-cat echo Howdy"],
    "explicacao": "O utilitário `logger` envia entradas diretamente ao syslog/journal, e `systemd-cat` redireciona a saída padrão de um comando para o journal do systemd[cite: 1]."
  },
  {
    "id": 70,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following options in the chrony configuration file define remote time sources? (Choose two.)",
    "opcoes": [
      "source",
      "clock",
      "remote",
      "pool",
      "server"
    ],
    "resposta_correta": ["pool", "server"],
    "explicacao": "As diretivas `server` e `pool` são usadas no `chrony.conf` para especificar fontes ou agrupamentos de servidores de tempo remotos[cite: 1]."
  },
  {
    "id": 71,
    "tipo": "fill_blank",
    "enunciado": "Which command is used to sync the hardware clock to the system clock? (Specify only the command without any path or parameters.)",
    "resposta_correta": "hwclock",
    "explicacao": "O comando `hwclock` gerencia o relógio de hardware (RTC). A opção `--systohc` sincroniza o relógio do sistema para o hardware, e `--hctosys` faz o inverso[cite: 1]."
  },
  {
    "id": 72,
    "tipo": "single_choice",
    "enunciado": "Which of the following situations is observed and corrected by an NTP client?",
    "opcoes": [
      "The skew in time between the system clock and the computer’s hardware clock.",
      "The physical location and the timezone configuration.",
      "Changes in the time zone of the current computer’s location.",
      "Adjustment needed to support Daylight Saving Time.",
      "The skew in time between the system clock and the reference clock."
    ],
    "resposta_correta": "E",
    "explicacao": "O objetivo principal de um cliente NTP é detectar e corrigir o desvio (*skew/drift*) entre o relógio do sistema operacional e o relógio de referência remoto[cite: 1]."
  },
  {
    "id": 73,
    "tipo": "single_choice",
    "enunciado": "If an alias ls exists, which of the following commands updates the alias to point to the command ls -l instead of the alias’s current target?",
    "opcoes": [
      "set ls=’ls -l’",
      "alias ls=’ls -l’",
      "alias --force ls=’ls -l’",
      "alias --update ls ls=’ls -l’",
      "realias ls=’ls -l’"
    ],
    "resposta_correta": "B",
    "explicacao": "Reutilizar o comando `alias nome='novo_comando'` sobrescreve facilmente um apelido já existente no shell[cite: 1]."
  },
  {
    "id": 74,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands puts the output of the command date into the shell variable mydate?",
    "opcoes": [
      "mydate=\"date\"",
      "mydate=\"exec date\"",
      "mydate=\"$((date))\"",
      "mydate=\"$(date)\"",
      "mydate=\"${date}\""
    ],
    "resposta_correta": "D",
    "explicacao": "A substituição de comando usando crases ou a sintaxe moderna `$(...)` armazena a saída da execução do comando na variável[cite: 1]."
  },
  {
    "id": 75,
    "tipo": "single_choice",
    "enunciado": "What information is shown by the echo $? command?",
    "opcoes": [
      "The process ID of the echo command.",
      "The exit value of the command executed immediately before echo.",
      "The process ID which will be used for the next command.",
      "The exit value of the echo command.",
      "The process ID of the current shell."
    ],
    "resposta_correta": "B",
    "explicacao": "A variável especial `$?` armazena o código de saída (*exit status*) do último comando executado (0 indica sucesso, e valores de 1 a 255 indicam erros)[cite: 1]."
  },
  {
    "id": 76,
    "tipo": "single_choice",
    "enunciado": "Which of the following files is not read directly by a Bash login shell?",
    "opcoes": [
      "~/.bashrc",
      "~/.bash_profile",
      "~/.bash login",
      "~/.profile",
      "/etc/profile"
    ],
    "resposta_correta": "A",
    "explicacao": "O arquivo `~/.bashrc` é lido por shells interativos não-login. Shells de login leem o `/etc/profile` e arquivos como `~/.bash_profile` ou `~/.profile`[cite: 1]."
  },
  {
    "id": 77,
    "tipo": "single_choice",
    "enunciado": "What is true about the file .profile in a user's home directory?",
    "opcoes": [
      "It must be executable.",
      "It must call the binary of the login shell.",
      "It must use a valid shell script syntax.",
      "It must start with a shebang.",
      "It must be readable for its owner only."
    ],
    "resposta_correta": "C",
    "explicacao": "O arquivo `.profile` é interpretado pelo shell de login, exigindo portanto uma sintaxe de script válida[cite: 1]."
  },
  {
    "id": 78,
    "tipo": "multiple_choice",
    "enunciado": "What is true regarding the statement beginning with #! that is found in the first line of script? (Choose two.)",
    "opcoes": [
      "It prevents the scripts from being executed until the ! is removed.",
      "it triggers the installation of the script’s interpreter.",
      "It specifies the path and the arguments of the interpreter used to run the script.",
      "It defines the character encoding of the script.",
      "It is a comment that is ignored by the script interpreter."
    ],
    "resposta_correta": ["It specifies the path and the arguments of the interpreter used to run the script.", "It is a comment that is ignored by the script interpreter."],
    "explicacao": "Conhecido como *shebang* (`#!`), ele instrui o kernel sobre qual interpretador usar para executar o script e, por começar com `#`, é tratado como comentário pelo próprio interpretador[cite: 1]."
  },
  {
    "id": 79,
    "tipo": "single_choice",
    "enunciado": "What output does the command seq 1 5 20 produce?",
    "opcoes": [
      "1 \n 5 \n 10 \n 15",
      "1 \n 6 \n 11 \n 16",
      "1 \n 2 \n 3 \n 4",
      "2 \n 3 \n 4 \n 5",
      "5 \n 10 \n 15 \n 20"
    ],
    "resposta_correta": "B",
    "explicacao": "A sintaxe `seq início incremento fim` (ou seja, `seq 1 5 20`) gera números começando em 1, somando de 5 em 5 até atingir o limite: 1, 6, 11 e 16[cite: 1]."
  },
  {
    "id": 80,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands lists all defines variables and functions within Bash?",
    "opcoes": [
      "env",
      "export",
      "env -a",
      "set",
      "echo $ENV"
    ],
    "resposta_correta": "D",
    "explicacao": "O comando `set` exibe todas as variáveis de shell, variáveis de ambiente e funções definidas na sessão do Bash[cite: 1]."
  },
  {
    "id": 81,
    "tipo": "single_choice",
    "enunciado": "What information related to a user account is modified using the chage command?",
    "opcoes": [
      "Default ownership for new files",
      "Group membership",
      "Set of commands available to the user",
      "Password expiry information",
      "Default permissions for new files"
    ],
    "resposta_correta": "D",
    "explicacao": "O comando `chage` (change age) altera as políticas de expiração e envelhecimento de senhas dos usuários no `/etc/shadow`[cite: 1].\n\n• **Exemplo:** `chage -m 2 -M 90 usuario`"
  },
  {
    "id": 82,
    "tipo": "single_choice",
    "enunciado": "Which command is used to set restrictions on the size of a core file that is created for a user when a program crashes?",
    "opcoes": [
      "core",
      "edquota",
      "quota",
      "ulimit",
      "ktrace"
    ],
    "resposta_correta": "D",
    "explicacao": "O comando `ulimit -c` restringe o tamanho máximo de arquivos de despejo de memória (*core dumps*) gerados em falhas de programas[cite: 1]."
  },
  {
    "id": 83,
    "tipo": "single_choice",
    "enunciado": "How do shadow passwords improve the password security in comparison to standard no-shadow password?",
    "opcoes": [
      "Regular users do not have access to the password hashes of shadow passwords.",
      "Every shadow password is valid for 45 days and must be changed afterwards.",
      "The system’s host key is used to encrypt all shadow passwords.",
      "Shadow passwords are always combined with a public key that has to match the user’s private key.",
      "Shadow passwords are stored in plain text and can be checked for weak passwords."
    ],
    "resposta_correta": "A",
    "explicacao": "Nos sistemas sem *shadow*, os hashes ficavam no `/etc/passwd` (que precisa ser legível por todos). O sistema shadow move os hashes para o `/etc/shadow`, legível apenas pelo root[cite: 1]."
  },
  {
    "id": 84,
    "tipo": "single_choice",
    "enunciado": "After editing the TCP wrapper configuration to grant specific hosts access to a service, when do these changes become effective?",
    "opcoes": [
      "The new configuration becomes effective after restarting the respective service.",
      "The new configuration becomes effective at the next system reboot.",
      "The new configuration becomes effective when the last established connection to the service is closed.",
      "The new configuration becomes effective after restarting the tcpd service.",
      "The new configuration becomes effective immediately for all new connections."
    ],
    "resposta_correta": "E",
    "explicacao": "Como os arquivos `/etc/hosts.allow` e `/etc/hosts.deny` são lidos dinamicamente a cada nova tentativa de conexão, as alterações entram em vigor imediatamente[cite: 1]."
  },
  {
    "id": 85,
    "tipo": "multiple_choice",
    "enunciado": "What is true regarding public and private SSH keys? (Choose two.)",
    "opcoes": [
      "For each user account, there is exactly one key pair that can be used to log into that account.",
      "The private key must never be revealed to anyone.",
      "Several different public keys may be generated for the same private key.",
      "To maintain the private key’s confidentiality, the SSH key pair must be created by its owner.",
      "To allow remote logins, the user’s private key must be copied to the remote server."
    ],
    "resposta_correta": ["The private key must never be revealed to anyone.", "To maintain the private key’s confidentiality, the SSH key pair must be created by its owner."],
    "explicacao": "A chave privada deve permanecer estritamente confidencial com seu dono, enquanto a chave pública é a que deve ser copiada para o servidor remoto (`authorized_keys`)[cite: 1]."
  },
  {
    "id": 86,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands finds all files owned by root that have the SetUID bit set?",
    "opcoes": [
      "find / -user root -perm -4000",
      "find / -user 0 -mode +s",
      "find / -owner root -setuid",
      "find / -owner 0 -permbits 0x100000000",
      "find / --filter uid=1 --filter pers=u+s"
    ],
    "resposta_correta": "A",
    "explicacao": "O comando `find / -user root -perm -4000` busca corretamente arquivos pertencentes ao root que contenham a permissão SUID ativada[cite: 1]."
  },
  {
    "id": 87,
    "tipo": "fill_blank",
    "enunciado": "What command is used to add OpenSSH private keys to a running ssh-agent instance? (Specify the command name only without any path.)",
    "resposta_correta": "ssh-add",
    "explicacao": "O utilitário `ssh-add` é responsável por carregar chaves privadas no agente de autenticação em execução (`ssh-agent`)[cite: 1].\n\n• **Exemplo:** `ssh-add ~/.ssh/id_rsa`"
  },
  {
    "id": 88,
    "tipo": "fill_blank",
    "enunciado": "Which directory holds configuration files for xinetd services? (Specify the full path to the directory.)",
    "resposta_correta": "/etc/xinetd.d/",
    "explicacao": "O diretório `/etc/xinetd.d/` armazena os arquivos de configuração individuais para cada serviço gerenciado pelo xinetd[cite: 1]."
  },
  {
    "id": 89,
    "tipo": "single_choice",
    "enunciado": "Which mechanism does ssh use to interact with the SSH agent?",
    "opcoes": [
      "Connecting to port 2222 which is used by the system-wide SSH agent.",
      "Using the fixed socket .ssh-agent/ipc.",
      "Creating an alias replacing ssh with calls to ssh-agent.",
      "Starting ssh-agent as a child process for each ssh invocation.",
      "Evaluating environment variables such as SSH_AUTH_SOCK."
    ],
    "resposta_correta": "E",
    "explicacao": "O cliente SSH localiza e interage com o agente avaliando variáveis de ambiente essenciais como `SSH_AUTH_SOCK`[cite: 1]."
  },
  {
    "id": 90,
    "tipo": "fill_blank",
    "enunciado": "Which parameter of the ssh command specifies the location of the private key used for login attempts? (Specify only the option name without any values or parameters.)",
    "resposta_correta": "-i",
    "explicacao": "A opção `-i` do comando `ssh` permite informar explicitamente o caminho do arquivo de chave privada a ser utilizado na autenticação[cite: 1].\n\n• **Exemplo:** `ssh -i ~/.ssh/minha_chave user@host`"
  },
  {
    "id": 91,
    "tipo": "single_choice",
    "enunciado": "Which of the following is true about IPv6?",
    "opcoes": [
      "IPv6 no longer supports broadcast addresses.",
      "With IPv6, the TCP port numbers of most services have changed.",
      "IPv4 addresses can be used without any change with IPv6.",
      "IPv6 no longer supports multicast addresses.",
      "For IPv6, UDP and TCP have been replaced by the Rapid Transmission Protocol RTP."
    ],
    "resposta_correta": "A",
    "explicacao": "O protocolo IPv6 substituiu totalmente o conceito de broadcast por endereçamentos de multicast e anycast[cite: 1]."
  },
  {
    "id": 92,
    "tipo": "single_choice",
    "enunciado": "What is true about the following command?\nnmcli device wifi connect WIFIOI",
    "opcoes": [
      "NetworkManager opens a new public hotspot with the SSID WIFIOI.",
      "NetworkManager creates an unconfigured new virtual network interface named WIFIOI.",
      "NetworkManager creates a new wifi connection WIFIOI and activates it.",
      "NetworkManager returns an error in case the connection WIFIOI does not exist.",
      "NetworkManager returns an error because WIFIOI is an invalid wifi device."
    ],
    "resposta_correta": "C",
    "explicacao": "Este comando do `nmcli` cria automaticamente um perfil de conexão wi-fi para a rede informada e o ativa imediatamente[cite: 1]."
  },
  {
    "id": 93,
    "tipo": "single_choice",
    "enunciado": "Which of the commands below might have produced the following output?\n global options: +cmd\nGot answer:\n;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 40997\n flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1\n...",
    "opcoes": [
      "digt mx www.example.org",
      "dig www.example.org",
      "digt ns www.example.org",
      "digt a www.example.org",
      "digt soa www.example.org"
    ],
    "resposta_correta": "B",
    "explicacao": "A saída apresentada é o formato padrão gerado pelo comando de consulta DNS `dig`[cite: 1]."
  },
  {
    "id": 94,
    "tipo": "fill_blank",
    "enunciado": "Which parameter is missing in the command ip link set dev eth0 to activate the previously inactive network interface eth0? (Specify the parameter only without any command, path or additional options.)",
    "resposta_correta": "up",
    "explicacao": "Para ativar uma interface de rede via iproute2, usa-se o comando `ip link set dev eth0 up`[cite: 1]."
  },
  {
    "id": 95,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following states can NetworkManager show regarding the system's network connectivity? (Choose two.)",
    "opcoes": [
      "up",
      "portal",
      "full",
      "login-required",
      "firewalled"
    ],
    "resposta_correta": ["portal", "full"],
    "explicacao": "O NetworkManager avalia o estado da conectividade global da rede, reportando estados como `portal` (rede cativa exigindo login) ou `full` (conectividade total)[cite: 1]."
  },
  {
    "id": 96,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following are valid host addresses for the subnet 203.0.113.64/28? (Choose two.)",
    "opcoes": [
      "203.0.113.64",
      "203.0.113.78",
      "203.0.113.65",
      "203.0.113.80",
      "203.0.113.81"
    ],
    "resposta_correta": ["203.0.113.78", "203.0.113.65"],
    "explicacao": "A sub-rede `/28` vai de `203.0.113.64` (endereço de rede) até `203.0.113.79` (broadcast). Os IPs válidos para hosts ficam entre `.65` e `.78`[cite: 1]."
  },
  {
    "id": 97,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following keywords can be used in the file /etc/resolv.conf? (Choose two.)",
    "opcoes": [
      "substitute",
      "lookup",
      "search",
      "nameserver",
      "method"
    ],
    "resposta_correta": ["search", "nameserver"],
    "explicacao": "O arquivo `/etc/resolv.conf` utiliza diretivas essenciais como `nameserver` (para indicar o IP do DNS) e `search` (para domínios de busca padrão)[cite: 1]."
  },
  {
    "id": 98,
    "tipo": "single_choice",
    "enunciado": "How does the ping command work by default?",
    "opcoes": [
      "Is sends an ICMP Echo Request to a remote host and waits to receive an ICMP Echo Response in return.",
      "It sends an ARP request to a remote host and waits to receive an ARP response in return.",
      "It sends a TCP SYN packet to a remote host and waits to receive an TCP ACK response in return.",
      "Is sends a broadcast packet to all hosts on the net and waits to receive, among others, a response from the target system.",
      "It sends a UDP packet to port 0 of the remote host and waits to receive a UDP error response in return."
    ],
    "resposta_correta": "A",
    "explicacao": "O comando `ping` utiliza por padrão pacotes ICMP do tipo Echo Request para testar a acessibilidade de um host remoto[cite: 1]."
  },
  {
    "id": 99,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following commands display the number of bytes transmitted and received via the eth0 network interface? (Choose two.)",
    "opcoes": [
      "route -v via eth0",
      "ip stats show dev eth0",
      "netstat -s -i eth0",
      "ifconfig eth0",
      "ip -s link show eth0"
    ],
    "resposta_correta": ["netstat -s -i eth0", "ip -s link show eth0"],
    "explicacao": "Tanto o comando clássico `netstat -i` quanto o moderno `ip -s link show eth0` exibem estatísticas detalhadas de tráfego e bytes nas interfaces[cite: 1]."
  },
  {
    "id": 100,
    "tipo": "single_choice",
    "enunciado": "Given the following routing table:\nDestination Gateway Genmask Iface\n0.0.0.0 192.168.178.1 0.0.0.0 wlan0\n192.168.1.0 0.0.0.0 255.255.255.0 eth0\n192.168.2.0 192.168.1.1 255.255.255.0 eth0\n\nHow would an outgoing packet to the destination 192.168.2.150 be handled?",
    "opcoes": [
      "It would be passed to the default router 192.168.178.1 on wlan0.",
      "It would be directly transmitted on the device eth0.",
      "It would be passed to the default router 255.255.255.0 on eth0.",
      "It would be passed to the router 192.168.1.1 on eth0.",
      "It would be directly transmitted on the device wlan0."
    ],
    "resposta_correta": "D",
    "explicacao": "O IP `192.168.2.150` corresponde à regra da rede `192.168.2.0`, cujo gateway configurado é `192.168.1.1` através da interface `eth0`[cite: 1]."
  },
  {
    "id": 101,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following commands will delete the default gateway from the system’s IP routing table? (Choose two.)",
    "opcoes": [
      "ifconfig unset default",
      "route del default",
      "ip route del default",
      "netstat -r default",
      "sysctl ipv4.default_gw=0"
    ],
    "resposta_correta": ["route del default", "ip route del default"],
    "explicacao": "Para remover a rota padrão, utilizam-se os comandos clássicos e modernos de gerenciamento de rotas (`route del default` ou `ip route del default`)[cite: 1]."
  },
  {
    "id": 102,
    "tipo": "fill_blank",
    "enunciado": "What command enables a network interface according to distribution-specific configuration, such as /etc/network/interfaces or /etc/sysconfig/network-scripts/ifcfg-eth0? (Specify only the command without any path or parameters.)",
    "resposta_correta": "ifup",
    "explicacao": "O comando `ifup` lê os arquivos de configuração específicos da distribuição para ativar e configurar a interface de rede[cite: 1]."
  },
  {
    "id": 103,
    "tipo": "multiple_choice",
    "enunciado": "What is true about NetworkManager on a Linux system that uses its distribution’s mechanisms to configure network interfaces? (Choose two.)",
    "opcoes": [
      "NetworkManager reconfigures all network interfaces to use DHCP unless they are specifically managed by NetworkManager.",
      "NetworkManager must be explicitly enabled for each interface it should manage.",
      "NetworkManager by default does not change interfaces which are already configured.",
      "NetworkManager disables all interfaces which were not configured by NetworkManager.",
      "NetworkManager can be configured to use the distribution’s network interface configuration."
    ],
    "resposta_correta": ["NetworkManager by default does not change interfaces which are already configured.", "NetworkManager can be configured to use the distribution’s network interface configuration."],
    "explicacao": "O comportamento padrão do NetworkManager preserva interfaces que já estejam ativas ou configuradas externamente, respeitando as diretrizes locais[cite: 1]."
  },
  {
    "id": 104,
    "tipo": "single_choice",
    "enunciado": "Which standardized TCP port is used by HTTPS services?",
    "opcoes": [
      "25",
      "80",
      "8080",
      "443",
      "636"
    ],
    "resposta_correta": "D",
    "explicacao": "A porta TCP padrão padronizada para tráfego web seguro via HTTPS é a **443** (enquanto a porta 80 é utilizada para HTTP plano)[cite: 1]."
  },
  {
    "id": 105,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following environment variables can be defined in locale.conf? (Choose two.)",
    "opcoes": [
      "LC_ALL",
      "LC_USERNAME",
      "LC_UTF8",
      "LC_GEOGRAPHY",
      "LC_TIME"
    ],
    "resposta_correta": ["LC_ALL", "LC_TIME"],
    "explicacao": "O arquivo `/etc/locale.conf` aceita variáveis padrão de localização do sistema como `LANG`, `LC_ALL`, `LC_TIME`, entre outras[cite: 1]."
  },
  {
    "id": 106,
    "tipo": "single_choice",
    "enunciado": "Which of the following commands sets the system's time zone to the Canadian Eastern Time?",
    "opcoes": [
      "localegen -t -f /usr/share/zoneinfo/Canada/Eastern > /etc/locate.tz",
      "tzconf /etc/localtime",
      "sysctl -w clock.tz='Canada/Eastern'",
      "modprobe tz_ca_est",
      "ln -sf /usr/share/zoneinfo/Canada/Eastern /etc/localtime"
    ],
    "resposta_correta": "E",
    "explicacao": "A forma padrão no Linux para alterar o fuso horário é criar um link simbólico forçado (`ln -sf`) do arquivo de zona desejado para `/etc/localtime`[cite: 1]."
  },
  {
    "id": 107,
    "tipo": "fill_blank",
    "enunciado": "What option to useradd creates a new user's home directory and provisions it with a set of standard files? (Specify only the option name without any values or parameters.)",
    "resposta_correta": "-m",
    "explicacao": "A opção `-m` (ou `--create-home`) do comando `useradd` cria o diretório home do usuário populando-o com os arquivos padrão do esqueleto (`/etc/skel`)[cite: 1]."
  },
  {
    "id": 108,
    "tipo": "single_choice",
    "enunciado": "How can a specific user be prevented from scheduling tasks with at?",
    "opcoes": [
      "By adding the specific user to the /etc/at.allow file.",
      "By adding the specific user to the [deny] section in the /etc/atd.conf file.",
      "By adding the specific user to the nojobs group.",
      "By adding the specific user to the /etc/at.deny file.",
      "By executing the atd-deny [user] command."
    ],
    "resposta_correta": "D",
    "explicacao": "O arquivo `/etc/at.deny` lista os usuários que estão expressamente proibidos de utilizar o comando `at` para agendamento[cite: 1]."
  },
  {
    "id": 109,
    "tipo": "single_choice",
    "enunciado": "Which file contains the data of the last change of a user’s password?",
    "opcoes": [
      "/etc/gshadow",
      "/etc/passwd",
      "/etc/pwdlog",
      "/var/log/shadow",
      "/etc/shadow"
    ],
    "resposta_correta": "E",
    "explicacao": "O arquivo `/etc/shadow` armazena a data da última alteração de senha (em dias contados a partir de 1 de janeiro de 1970) no terceiro campo de cada registro de usuário[cite: 1]."
  },
  {
    "id": 110,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following fields can be found in the /etc/group file? (Choose two.)",
    "opcoes": [
      "The home directory of the group.",
      "The list of users that belong to the group.",
      "The name of the group.",
      "The default group ACL.",
      "The description of the group."
    ],
    "resposta_correta": ["The list of users that belong to the group.", "The name of the group."],
    "explicacao": "O arquivo `/etc/group` contém o nome do grupo, senha (geralmente x), GID numérico e a lista de membros secundários separados por vírgula[cite: 1]."
  },
  {
    "id": 111,
    "tipo": "single_choice",
    "enunciado": "Which of the following sections exists in a systemd timer unit?",
    "opcoes": [
      "[Events]",
      "[Timer]",
      "[cron]",
      "[Schedule]",
      "[Trigger]"
    ],
    "resposta_correta": "B",
    "explicacao": "Arquivos de unidades systemd do tipo timer contêm obrigatoriamente a seção `[Timer]` para definir as regras de agendamento[cite: 1]."
  },
  {
    "id": 112,
    "tipo": "single_choice",
    "enunciado": "Which of the following getent invocations lists all existing users?",
    "opcoes": [
      "getent homes",
      "getent uids",
      "getent passwd",
      "getent users",
      "getent logins"
    ],
    "resposta_correta": "C",
    "explicacao": "O comando `getent passwd` consulta o banco de dados de nomes de usuários do sistema (incluindo fontes configuradas no NSS), listando todos eles[cite: 1]."
  },
  {
    "id": 113,
    "tipo": "single_choice",
    "enunciado": "Given the following user's crontab entry:\n15 14 1-5 * * /usr/local/bin/example.sh\nWhen will the script /usr/local/bin/example.sh be executed?",
    "opcoes": [
      "At 14:15 local time, January till May.",
      "At 15:14 local time, 1st to 5th day of month.",
      "At 14:15 local time, February till June.",
      "At 14:15 local time, 1st to 5th day of month.",
      "At 14:15 local time, Monday to Friday"
    ],
    "resposta_correta": "D",
    "explicacao": "Análise da sintaxe cron `15 14 1-5 * *`: minuto 15, hora 14, dias 1 a 5 do mês, qualquer mês, qualquer dia da semana[cite: 1]."
  },
  {
    "id": 114,
    "tipo": "single_choice",
    "enunciado": "If neither cron.allow nor cron.deny exist in /etc/, which of the following is true?",
    "opcoes": [
      "Without additional configuration, all users may create user specific crontabs.",
      "Without additional configuration, only root may create user specific crontabs.",
      "The cron daemon will refuse to start and report missing files in the system's logfile.",
      "When a user creates a user specific crontab the system administrator must approve it explicitly.",
      "The default settings of /etc/crond.conf define whether or not user specific crontabs are generally allowed or not."
    ],
    "resposta_correta": "A",
    "explicacao": "Se nenhum dos arquivos de controle (`cron.allow` ou `cron.deny`) existir, a política padrão do sistema permite que todos os usuários criem seus próprios crontabs[cite: 1]."
  },
  {
    "id": 115,
    "tipo": "single_choice",
    "enunciado": "What is the purpose of the iconv command?",
    "opcoes": [
      "It converts bitmap images from one format to another such as PNG to JPEG.",
      "It verifies that the root directory tree compiles to all conventions from the Filesystem Hierarchy Standard (FHS).",
      "It converts files from one character set to an other.",
      "It changes the mode of an inode in the ext4 filesystem.",
      "It displays additional meta information from icon files ending in .ico."
    ],
    "resposta_correta": "C",
    "explicacao": "O comando `iconv` é utilizado para converter a codificação de caracteres de arquivos de texto de um formato para outro (ex: ISO-8859-1 para UTF-8)[cite: 1].\n\n• **Exemplo:** `iconv -f ISO-8859-1 -t UTF-8 arquivo.txt`"
  },
  {
    "id": 116,
    "tipo": "single_choice",
    "enunciado": "Which character in the password field of /etc/passwd is used to indicate that the encrypted password is stored in /etc/shadow?",
    "opcoes": [
      "*",
      "-",
      "s",
      "#",
      "x"
    ],
    "resposta_correta": "E",
    "explicacao": "A presença da letra `x` no campo de senha do `/etc/passwd` indica que a senha real foi migrada e está protegida no arquivo `/etc/shadow`[cite: 1]."
  },
  {
    "id": 117,
    "tipo": "single_choice",
    "enunciado": "What does the term Braille Display refer to?",
    "opcoes": [
      "A standardized high contract graphical theme for desktop applications?",
      "A Linux desktop environment similar to KDE and GNOME.",
      "A legacy display technology superseded by LCD.",
      "A physical representation of characters using small dots.",
      "A standard file format for data exchange, similar to XML."
    ],
    "resposta_correta": "D",
    "explicacao": "Uma linha braille (*Braille Display*) é um dispositivo eletromecânico que exibe caracteres através de pinos que se elevam formando pontos em relevo para deficientes visuais[cite: 1]."
  },
  {
    "id": 118,
    "tipo": "fill_blank",
    "enunciado": "Which environment variable is used by an X11 client to determine the X Server to connect to? (Specify only the variable name without any preceding commands or values.)",
    "resposta_correta": "DISPLAY",
    "explicacao": "A variável de ambiente `DISPLAY` informa aos programas gráficos onde está localizado o servidor X11 para renderização[cite: 1]."
  },
  {
    "id": 119,
    "tipo": "multiple_choice",
    "enunciado": "Which of the following tasks are handled by a display manager like XDM or KMD? (Choose two.)",
    "opcoes": [
      "Configure additional devices like new monitors or projectors when they are attached.",
      "Start and prepare the desktop environment for the user.",
      "Create an X11 configuration file for the current graphic devices and monitors.",
      "Lock the screen when the user was inactive for a configurable amount of time.",
      "Handle the login of a user."
    ],
    "resposta_correta": ["Start and prepare the desktop environment for the user.", "Handle the login of a user."],
    "explicacao": "Gerenciadores de exibição gráfico (como GDM, SDDM, XDM) gerenciam a tela de login inicial e iniciam a sessão de desktop escolhida após a autenticação[cite: 1]."
  },
  {
    "id": 120,
    "tipo": "single_choice",
    "enunciado": "Which of the following protocols is designed to access the video card output of a virtual machine?",
    "opcoes": [
      "KDE",
      "X11",
      "Xfce",
      "SPICE",
      "XDMCP"
    ],
    "resposta_correta": "D",
    "explicacao": "O protocolo SPICE foi projetado especificamente para permitir acesso eficiente ao vídeo, áudio e dispositivos USB de máquinas virtuais[cite: 1]."
  }
]