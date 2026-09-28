# Sistema Web para Gestão de Pesquisas por Questionário
**Estudo de Caso — Projeto Integrador (Versão Atualizada Final)**

---

## 👥 Integrantes do Grupo
* Giovanni Vieira Pereira da Silva
* Gustavo Martins da Silva Ilescas
* Matheus Gabriel dos Santos Silva
* Alex Marola Barbosa Junior
* Erick Gustavo Miiller Dos Santos

---

## 📌 Apresentação
O projeto tem como objetivo proporcionar aos estudantes uma experiência prática de desenvolvimento de software, envolvendo análise de requisitos, modelagem de dados, desenvolvimento de aplicações web, usabilidade, segurança da informação e geração de relatórios analíticos[cite: 6]. O sistema a ser desenvolvido deverá permitir a criação, aplicação e análise de pesquisas institucionais, garantindo o anonimato dos participantes e a organização das respostas por categorias de respondentes[cite: 6].

---

## 🎯 Objetivo do Projeto
Desenvolver um Sistema Web para Gestão de Pesquisas por Questionários, permitindo[cite: 6]:
* Cadastro e gerenciamento de pesquisas[cite: 6];
* Definição de categorias de participantes[cite: 6];
* Criação de questionários específicos por categoria[cite: 6];
* Aplicação da pesquisa com acesso por senha anônima[cite: 6];
* Coleta e armazenamento das respostas[cite: 6];
* Monitoramento da participação[cite: 6];
* Geração de relatórios estatísticos[cite: 6].

---

## 🏗️ Escopo do Sistema

### 1. Módulo de Cadastro de Pesquisa
Responsável pela criação e configuração das pesquisas[cite: 6].
* **Cadastro de pesquisas:** Definição de título, descrição, período de aplicação (data início e fim) e status (ativa/inativa)[cite: 6].
* **Cadastro de categorias de participantes:** Exemplo: *Alunos*, *Professores*, *Colaboradores*[cite: 6]. Cada pesquisa poderá possuir uma ou mais categorias[cite: 6].

### 2. Módulo de Questionários
Responsável pela criação das perguntas da pesquisa[cite: 6].
* Cadastro de questões associadas a uma categoria de participante[cite: 6].
* Cadastro de alternativas de resposta[cite: 6].
* **Tipos de questões sugeridos:** Múltipla escolha (uma resposta), Múltipla escolha (várias respostas), Escala (ex: 1 a 5) e Resposta aberta (texto)[cite: 6].
* Cada categoria poderá possuir o seu próprio questionário[cite: 6].

### 3. Módulo de Geração de Senhas
Permite a geração de senhas de acesso anônimas[cite: 6].
* **Características:** Senhas aleatórias associadas a uma categoria que não identificam o respondente (uso único por resposta)[cite: 6].
* **Funcionalidades:** Gerar lote de senhas por categoria, exportar senhas (PDF/CSV) e marcar senha como utilizada[cite: 6].

### 4. Módulo de Aplicação da Pesquisa (Coleta de Dados)
Interface para os participantes responderem à pesquisa[cite: 6].
* **Fluxo:** O participante acede ao sistema $\rightarrow$ digita a senha anônima $\rightarrow$ o sistema identifica a categoria e exibe o questionário $\rightarrow$ o participante responde e envia $\rightarrow$ as respostas são gravadas e a senha é marcada como utilizada[cite: 6].
* **Requisitos:** Interface simples e responsiva, validação de respostas obrigatórias e bloqueio de múltiplas respostas com a mesma senha[cite: 6].

### 5. Módulo de Gestão (Dashboard)
Interface administrativa para acompanhamento da pesquisa em tempo real[cite: 6].
* **Indicadores:** Total de senhas geradas, total de respostas recebidas, taxa de participação e participação por categoria[cite: 6].

### 6. Módulo de Relatórios
Geração de relatórios analíticos com visualização em tela (gráficos) e exportação de resultados em PDF ou CSV[cite: 6].
* **Relatórios sugeridos:** Resultado por pergunta, resultado por categoria e comparação entre categorias[cite: 6].

---

## ⚙️ Requisitos Funcionais e Não Funcionais

### Requisitos Funcionais (RF)
| ID | Descrição do Requisito Funcional |
| :--- | :--- |
| **RF01** | Cadastrar e gerenciar pesquisas (título, descrição, período, status)[cite: 6]. |
| **RF02** | Cadastrar categorias de participantes[cite: 6]. |
| **RF03** | Criar questionários específicos por categoria, cadastrando perguntas e alternativas[cite: 6]. |
| **RF04** | Gerar lotes de senhas anônimas por categoria e permitir exportação[cite: 6]. |
| **RF05** | Aplicar questionários via autenticação por senha anônima[cite: 6]. |
| **RF06** | Registrar respostas no banco de dados e impedir reutilização de senhas[cite: 6]. |
| **RF07** | Monitorar participação em tempo real via dashboard[cite: 6]. |
| **RF08** | Gerar relatórios estatísticos e analíticos com opção de exportação (PDF/CSV)[cite: 6]. |
| **RF09** | Definir limites e validações de formato para respostas (ex: texto mínimo/máximo)[cite: 6]. |
| **RF10** | Permitir pausar, retomar ou ativar/desativar pesquisas[cite: 6]. |
| **RF11** | Autenticação e gestão de diferentes níveis de acesso para administradores[cite: 6]. |

### Requisitos Não Funcionais (RNF)
| Categoria | Descrição |
| :--- | :--- |
| **Usabilidade** | Interface web amigável e layout responsivo[cite: 6]. |
| **Segurança** | Senhas criptografadas no banco de dados, validação rigorosa de acesso e proteção contra respostas duplicadas[cite: 6]. |
| **Performance** | Sistema capaz de suportar múltiplos acessos simultâneos durante a aplicação das pesquisas[cite: 6]. |
| **Portabilidade** | Funcionamento garantido nos principais navegadores modernos[cite: 6]. |

---

## 👤 Atores do Sistema

| Ator | Descrição e Interações |
| :--- | :--- |
| **Aluno** | Representa os participantes da categoria "Alunos"[cite: 6]. Acessa o sistema via senha anônima, responde ao questionário atribuído e envia as respostas[cite: 6]. |
| **Professor** | Representa os participantes da categoria "Professores"[cite: 6]. Acessa o sistema via senha anônima, responde ao questionário específico e envia as respostas[cite: 6]. |
| **Gestor Educacional** | Administrador do sistema[cite: 6]. Realiza login, gerencia pesquisas, categorias, questionários, perguntas, gera senhas anônimas, acompanha o dashboard, visualiza estatísticas e exporta relatórios[cite: 6]. |

---

## 📖 User Stories

| Ator | Requisito do Sistema | Comportamento Esperado |
| :--- | :--- | :--- |
| **Gestor Educacional** | Manter pesquisas | Possibilidade de criar pesquisas informando nome, descrição, período de aplicação e status (ativa/inativa), com permissões para editar ou excluir registros[cite: 6]. |
| **Gestor Educacional** | Manter questionários | Criar questionários definindo enunciados e opções de respostas, permitindo a edição e exclusão de perguntas[cite: 6]. |
| **Gestor Educacional** | Gerar senhas para o anonimato | Gerar lotes de senhas de acesso aos questionários divididas pelas suas respetivas categorias[cite: 6]. |
| **Gestor Educacional** | Baixar senhas | Permitir o download/exportação das senhas geradas[cite: 6]. |
| **Gestor Educacional** | Criar Dashboard | Exibir indicadores com total de senhas geradas, total de respostas, taxa de participação e participação por categoria[cite: 6]. |
| **Gestor Educacional** | Criar Relatórios das pesquisas | Gerar relatórios analíticos com base nos resultados por pergunta, por categoria, comparações e gráficos[cite: 6]. |
| **Gestor Educacional** | Exportar relatórios e gráficos | Permitir a exportação dos dados e gráficos gerados no sistema[cite: 6]. |
| **Aluno** | Responder o Questionário | Inserir a senha anônima recebida para visualizar e responder ao questionário correspondente[cite: 6]. |
| **Professor** | Responder o Questionário | Inserir a senha anônima recebida para visualizar e responder ao questionário correspondente[cite: 6]. |

---

## 📐 Modelagem UML e Casos de Uso Detalhados

### 1. Manter Pesquisas

![Diagrama UML - Manter Pesquisas](./assets/uml-manter-pesquisas.png)

#### FP1: Criar Pesquisa
1. Abre formulário para criar pesquisa[cite: 6].
2. Opção para selecionar para qual grupo é a pesquisa aparece:
   * 2.1 Opção 1: "Alunos"[cite: 6]
   * 2.2 Opção 2: "Professores"[cite: 6]
   * 2.3 Opção 3: "Alunos e Professores"[cite: 6]
3. Gestor seleciona a opção[cite: 6].
4. O Gestor preenche o nome, descrição e o período de aplicação da pesquisa[cite: 6].
5. Campo Status aparece[cite: 6].
6. Se período de aplicação for igual ao dia que a pesquisa está sendo criada, o sistema automaticamente deixa o status da pesquisa como "ATIVA"[cite: 6].
7. O Gestor clica em "Finalizar Cadastro Pesquisa"[cite: 6].
8. O sistema valida os dados inseridos (nome, descrição e consistência das datas)[cite: 6].
9. Sistema salva a pesquisa e exibe uma notificação no canto superior direito: "Pesquisa Cadastrada no Sistema"[cite: 6].

* **FA1: Status Inativo Inicial**
  * INICIA NO FP1 (etapa 6)[cite: 6].
  * Se o período de aplicação for diferente do dia em que a pesquisa está sendo criada, o sistema altera automaticamente o status da pesquisa para "INATIVA"[cite: 6].
  * O fluxo retorna para a etapa 7 do FP1[cite: 6].

#### FP2: Editar Pesquisa
1. Sistema exibe uma tela com todas as pesquisas cadastradas[cite: 6].
2. Gestor seleciona uma pesquisa[cite: 6].
3. Sistema retorna os dados do formulário referente à pesquisa[cite: 6].
4. Gestor faz as alterações necessárias[cite: 6].
5. Gestor seleciona o botão "Concluir"[cite: 6].
6. Sistema valida as informações inseridas[cite: 6].
7. Sistema salva as alterações no banco de dados[cite: 6].
8. Sistema retorna a seguinte mensagem: "Pesquisa editada com êxito"[cite: 6].

* **FA2: Cancelar Edição**
  * INICIA NO FP2 (etapa 4)[cite: 6].
  * Gestor desiste de fazer alterações e clica no botão "Cancelar"[cite: 6].
  * Sistema descarta todas as alterações feitas e retorna a tela[cite: 6].

#### FP3: Excluir Pesquisa
1. Gestor solicita a exclusão da pesquisa[cite: 6].
2. O sistema exibe uma lista com as pesquisas cadastradas[cite: 6].
3. Gestor seleciona a pesquisa que deseja remover[cite: 6].
4. O sistema exibe os dados da pesquisa em modo de leitura e o botão "Excluir Pesquisa"[cite: 6].
5. O sistema exibe uma mensagem de confirmação: "Deseja excluir esta Pesquisa?" com as opções "Confirmar" e "Sair"[cite: 6].
6. Gestor clica em "Confirmar"[cite: 6].
7. O sistema deleta a pesquisa com todas as questões cadastradas no banco de dados[cite: 6].

* **FA3: Cancelar Exclusão da Pesquisa**
  * INICIA NO FP3 (etapa 6)[cite: 6].
  * Gestor clica em "Cancelar"[cite: 6].
  * Sistema não realiza nenhuma exclusão no banco de dados e retorna para a etapa 2 do FP3[cite: 6].

---

### 2. Gerar Senhas para o Anonimato

![Diagrama UML - Gerar Senhas](./assets/uml-gerar-senhas.png)

#### FP1: Geração de Senhas Anônimas
1. O Gestor Educacional realiza o login no sistema[cite: 6].
2. O Gestor acessa o Módulo de Geração de Senhas[cite: 6].
3. O Gestor seleciona uma pesquisa previamente cadastrada e ativa[cite: 6].
4. O Gestor seleciona a categoria de participantes desejada (ex: Alunos, Professores)[cite: 6].
5. O Gestor informa a quantidade de senhas que deseja gerar (geração em lote)[cite: 6].
6. O sistema processa a requisição e gera as senhas aleatórias[cite: 6].
7. O sistema associa as senhas à categoria escolhida e as configura para uso único[cite: 6].
8. O sistema salva as senhas no banco de dados com o status inicial de "não utilizada"[cite: 6].
9. O sistema atualiza a base de dados do Módulo de Gestão (Dashboard), somando a nova quantidade ao indicador de "Total de senhas geradas" daquela pesquisa[cite: 6].
10. O sistema registra o universo amostral para aquela categoria específica, estabelecendo a base matemática que o Módulo de Relatórios usará futuramente para calcular a "Taxa de participação" e a "Participação por categoria"[cite: 6].
11. O sistema exibe uma mensagem de sucesso na tela para o Gestor e disponibiliza os botões para exportação (PDF/CSV)[cite: 6].

* **FA1: Exportação Imediata das Senhas**
  * Após a etapa 11 do FP1, o Gestor decide baixar o lote gerado[cite: 6].
  * O Gestor seleciona o formato desejado (PDF ou CSV)[cite: 6].
  * O sistema compila as senhas e inicia o download do arquivo[cite: 6].

* **FA2: Bloqueio por Ausência de Questionário**
  * Na etapa 4 do FP1, o Gestor seleciona uma categoria que ainda não possui perguntas cadastradas[cite: 6].
  * O sistema interrompe o fluxo e exibe um alerta informando que é necessário criar o questionário da categoria antes de gerar as senhas[cite: 6].
  * Nenhuma alteração é feita no banco de dados e os indicadores do Dashboard permanecem intactos[cite: 6].

* **FA3: Validação de Quantidade (Erro de Input)**
  * Na etapa 5 do FP1, o Gestor insere um valor inválido (zero, negativo ou texto)[cite: 6].
  * O sistema impede a geração e exibe uma mensagem solicitando um número válido[cite: 6].

---

### 3. Responder Questionários

![Diagrama UML - Responder Questionários](./assets/uml-responder-questionarios.png)

#### FP1: Acesso e Resposta à Pesquisa
1. Sistema carrega o aplicativo na interface padrão[cite: 6].
2. Interface solicita a senha para acessar a pesquisa[cite: 6].
3. Ator insere a senha[cite: 6].
4. Sistema valida a senha[cite: 6].
5. Sistema identifica o ator e sua categoria[cite: 6].
6. Sistema exibe o questionário correspondente[cite: 6].
7. Ator responde às perguntas[cite: 6].
8. Sistema solicita ao ator validar as respostas e salvar[cite: 6].
9. Ator seleciona "Salvar respostas"[cite: 6].
10. Sistema armazena as respostas no banco de dados[cite: 6].
11. Sistema marca a senha como utilizada[cite: 6].
12. Sistema finaliza a pesquisa[cite: 6].
13. Sistema exibe a mensagem: "Obrigado por participar!"[cite: 6].
14. Sistema exibe caixa de texto para reiniciar a pesquisa[cite: 6].
15. Sistema retorna à etapa 1[cite: 6].

* **FA1: Senha Inválida ou Incorreta**
  * INICIA NO FP1 (etapa 4)[cite: 6].
  * Caso a senha digitada esteja incorreta ou em formato inválido, o sistema exibe a mensagem: "A senha digitada não confere"[cite: 6].
  * Sistema contabiliza uma (1) tentativa não sucedida e retorna à etapa 2[cite: 6].

* **FA2: Múltiplas Tentativas Incorretas (Bloqueio de Segurança)**
  * INICIA NO FP1 - FA1 (etapa 2)[cite: 6].
  * Caso o sistema contabilize 5 tentativas incorretas, o acesso ficará temporariamente indisponível por 5 minutos[cite: 6].
  * Se a contagem atingir 10 tentativas, o sistema bloqueia permanentemente a caixa de inserção de senha[cite: 6].
  * O sistema exibe a mensagem "Tentativas de acesso excedidas" e retorna à etapa 2[cite: 6].

* **FA3: Ator Sai da Pesquisa sem Responder**
  * INICIA NO FP1 (etapa 7)[cite: 6].
  * Caso o usuário saia da pesquisa, o sistema salva localmente as respostas em arquivo de cache[cite: 6].
  * Para acessar novamente a pesquisa de onde parou, o sistema retorna à etapa 1[cite: 6].

* **FA4: Ator Não Finaliza na Etapa de Confirmação**
  * INICIA NO FP1 (etapa 8)[cite: 6].
  * O sistema salva localmente as respostas em cache e permite o retorno à etapa 1[cite: 6].

---

### 4. Criar e Acessar Dashboard

![Diagrama UML - Criar Dashboard](./assets/uml-criar-dashboard.png)

#### FP1: Dashboard Administrativo
1. O Gestor Educacional realiza login no sistema[cite: 6].
2. O sistema valida as credenciais de acesso[cite: 6].
3. O sistema exibe o Dashboard Administrativo[cite: 6].
4. O Gestor seleciona os filtros desejados (Pesquisa, Categoria, Período, Status)[cite: 6].
5. O sistema processa os filtros informados[cite: 6].
6. O sistema calcula e exibe os indicadores principais (KPIs): Total de Pesquisas, Senhas Geradas, Respostas Recebidas, Taxa de Participação, Pesquisas Ativas e Encerradas[cite: 6].
7. O sistema exibe os gráficos de Participação por Categoria, Utilização de Senhas, Evolução das Respostas e Status das Pesquisas[cite: 6].
8. O sistema exibe os Resultados das Perguntas e Comparação entre Categorias[cite: 6].
9. O sistema exibe os Comentários das Questões Abertas[cite: 6].
10. O sistema exibe os Indicadores de Segurança: Total de Logins Administrativos, Tentativas Inválidas, Senhas Reutilizadas Bloqueadas e Usuários Ativos[cite: 6].
11. O Gestor analisa as informações e pode solicitar a geração de relatórios[cite: 6].

* **FA01: Alterar Filtros**
  * Gestor altera os filtros e o sistema recarrega todos os gráficos e indicadores, retornando à etapa 3 do FP1[cite: 6].

* **FA02: Atualização Automática**
  * Sistema atualiza os dados em tempo real e atualiza os indicadores[cite: 6].

* **FA03: Visualizar Detalhes**
  * Gestor seleciona um gráfico e o sistema apresenta informações detalhadas expandidas[cite: 6].

* **FE01: Nenhum Dado Encontrado**
  * Sistema não encontra registros e exibe: "Nenhum resultado encontrado para os filtros selecionados"[cite: 6].

* **FE02: Erro ao Carregar Indicadores**
  * Sistema detecta falha na consulta e exibe mensagem de erro[cite: 6].

* **FE03: Falha na Exportação**
  * Sistema exibe mensagem de erro ao falhar na geração de PDF/CSV[cite: 6].

---

## 🔒 Segurança, Autenticação e Autorização

### Pilares de Segurança
* **Confidencialidade:** Utilização de algoritmos de encriptação (ex: AES)[cite: 6].
* **Integridade:** Padrão de senhas combinando números, caracteres e símbolos[cite: 6].
* **Disponibilidade:** Alojamento e implantação em plataformas na nuvem (ex: Vercel, Netlify, Wix)[cite: 6].

### Padrão de Autenticação (Senhas Anônimas)
Estrutura de senhas numéricas/alfanuméricas de 10 dígitos configuradas por perfil[cite: 6]:
* **Gestores Educacionais:** 5 números, 3 caracteres e 2 símbolos[cite: 6].
* **Aluno:** 7 números, 2 caracteres e 1 símbolo[cite: 6].
* **Professor:** 8 números, 1 carácter e 1 símbolo[cite: 6].

### Níveis de Autorização
* **Gestores Educacionais:** Acesso completo a toda a interface de gestão, pesquisas, questionários, banco de dados e relatórios[cite: 6].
* **Aluno / Professor:** Acesso restrito exclusivamente para responder ao questionário vinculado à senha utilizada[cite: 6].