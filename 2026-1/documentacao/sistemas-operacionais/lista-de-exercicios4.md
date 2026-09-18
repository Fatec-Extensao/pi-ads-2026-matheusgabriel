# Lista de Exercícios - Sistemas Operacionais 4

**Nome:** Matheus Gabriel dos Santos Silva  
**Curso:** 1º ADS  

---

## Comandos e Respostas

### 1, 2 e 3. Criação de Grupos, Usuários e Diretórios
```bash
groupadd professores
groupadd alunos
groupadd administrativos

adduser bruno
groupmod -g professores bruno

adduser jeferson
groupmod -g professores jeferson

adduser patricia
groupmod -g professores aroldo

mkdir /home/professores /home/alunos /home/administrativos
```

### 4. Permissões de Propriedade do Grupo (chown)
```bash
chown :professores /home/professores/
chown :alunos /home/alunos/
chown :administrativos /home/administrativos/
```

### 5. Permissões de Acesso (chmod)
```bash
chmod 770 /home/professores/
chmod 770 /home/alunos/
chmod 770 /home/administrativos/
```

### 6. Adicionar usuário ao grupo
```bash
usermod -aG alunos Aroldo
```

---

### Questões Teóricas e Práticas

* **7.** Comando `kill`
* **8.** `bg`
* **9.** `-19`
* **10.** Digitar `top` no terminal e depois pressionar `Ctrl + Z` no teclado.
* **11.** Para retomar digite `fg` e ele retornará o último processo que foi pausado.
* **12.** O comando `top -i` serve para exibir todos os processos que estão atualmente ociosos, não exibindo os processos ativos.
* **13.** O comando para exibir naquele exato momento os processos ativos seria o `ps aux`.
* **14.** `kill -9 2500`
* **15.** `top &`
* **16.** `jobs`
* **17.** `kill %1`
* **18.** Ao pressionar `Ctrl + Z`, o processo `top` é pausado via sinal `TSTP` (ou `SIGTSTP`), que é um sinal de parada do terminal.
* **19.** `nice -n -14 top`
* **20.** `renice -n -18 -p 2500`