# Sistema Web para Gestão de Pesquisas por Questionário
**Estudo de Caso — Projeto Integrador**

---

## 👥 Integrantes do Grupo
* Giovanni Vieira Pereira da Silva
* Gustavo Martins da Silva Ilescas
* Matheus Gabriel dos Santos Silva
* Alex Marola Barbosa Junior
* Erick Gustavo Miiller Dos Santos

---

## 📌 Apresentação
O projeto tem como objetivo proporcionar aos estudantes uma experiência prática de desenvolvimento de software, envolvendo análise de requisitos, modelagem de dados, desenvolvimento de aplicações web, usabilidade, segurança da informação e geração de relatórios analíticos[cite: 5]. 

O sistema a ser desenvolvido deverá permitir a criação, aplicação e análise de pesquisas institucionais, garantindo o anonimato dos participantes e a organização das respostas por categorias de respondentes[cite: 5].

---

## 🎯 Objetivo do Projeto
Desenvolver um Sistema Web para Gestão de Pesquisas por Questionários, permitindo[cite: 5]:
* Cadastro e gerenciamento de pesquisas[cite: 5];
* Definição de categorias de participantes[cite: 5];
* Criação de questionários específicos por categoria[cite: 5];
* Aplicação da pesquisa com acesso por senha anônima[cite: 5];
* Coleta e armazenamento das respostas[cite: 5];
* Monitoramento da participação[cite: 5];
* Geração de relatórios estatísticos[cite: 5].

---

## 🏗️ Escopo do Sistema

### 1. Módulo de Cadastro de Pesquisa
Responsável pela criação e configuração das pesquisas[cite: 5].
* **Cadastro de pesquisas:** Definição de título, descrição, período de aplicação (data início e fim) e status (ativa/inativa)[cite: 5].
* **Cadastro de categorias de participantes:** Exemplo: *Alunos*, *Professores*, *Colaboradores*[cite: 5]. Cada pesquisa poderá possuir uma ou mais categorias[cite: 5].

### 2. Módulo de Questionários
Responsável pela criação das perguntas da pesquisa[cite: 5].
* Cadastro de questões associadas a uma categoria de participante[cite: 5].
* Cadastro de alternativas de resposta[cite: 5].
* **Tipos de questões sugeridos:** Múltipla escolha (uma resposta), Múltipla escolha (várias respostas), Escala (ex: 1 a 5) e Resposta aberta (texto)[cite: 5].
* Cada categoria poderá possuir o seu próprio questionário[cite: 5].

### 3. Módulo de Geração de Senhas
Permite a geração de senhas de acesso anônimas[cite: 5].
* **Características:** Senhas aleatórias associadas a uma categoria que não identificam o respondente (uso único por resposta)[cite: 5].
* **Funcionalidades:** Gerar lote de senhas por categoria, exportar senhas (PDF/CSV) e marcar senha como utilizada[cite: 5].

### 4. Módulo de Aplicação da Pesquisa (Coleta de Dados)
Interface para os participantes responderem à pesquisa[cite: 5].
* **Fluxo:** O participante acede ao sistema $\rightarrow$ digita a senha anônima $\rightarrow$ o sistema identifica a categoria e exibe o questionário $\rightarrow$ o participante responde e envia $\rightarrow$ as respostas são gravadas e a senha é marcada como utilizada[cite: 5].
* **Requisitos:** Interface simples e responsiva, validação de respostas obrigatórias e bloqueio de múltiplas respostas com a mesma senha[cite: 5].

### 5. Módulo de Gestão (Dashboard)
Interface administrativa para acompanhamento da pesquisa em tempo real[cite: 5].
* **Indicadores:** Total de senhas geradas, total de respostas recebidas, taxa de participação e participação por categoria[cite: 5].

### 6. Módulo de Relatórios
Geração de relatórios analíticos com visualização em tela (gráficos) e exportação de resultados em PDF ou CSV[cite: 5].
* **Relatórios sugeridos:** Resultado por pergunta, resultado por categoria e comparação entre categorias[cite: 5].

---

## ⚙️ Requisitos Funcionais e Não Funcionais

### Requisitos Funcionais (RF)
| ID | Descrição do Requisito Funcional |
| :--- | :--- |
| **RF01** | Cadastrar e gerenciar pesquisas (título, descrição, período, status)[cite: 5]. |
| **RF02** | Cadastrar categorias de participantes[cite: 5]. |
| **RF03** | Criar questionários específicos por categoria, cadastrando perguntas e alternativas[cite: 5]. |
| **RF04** | Gerar lotes de senhas anônimas por categoria e permitir exportação[cite: 5]. |
| **RF05** | Aplicar questionários via autenticação por senha anônima[cite: 5]. |
| **RF06** | Registrar respostas no banco de dados e impedir reutilização de senhas[cite: 5]. |
| **RF07** | Monitorar participação em tempo real via dashboard[cite: 5]. |
| **RF08** | Gerar relatórios estatísticos e analíticos com opção de exportação (PDF/CSV)[cite: 5]. |
| **RF09** | Definir limites e validações de formato para respostas (ex: texto mínimo/máximo)[cite: 5]. |
| **RF10** | Permitir pausar, retomar ou ativar/desativar pesquisas[cite: 5]. |
| **RF11** | Autenticação e gestão de diferentes níveis de acesso para administradores[cite: 5]. |

### Requisitos Não Funcionais (RNF)
| Categoria | Descrição |
| :--- | :--- |
| **Usabilidade** | Interface web amigável e layout responsivo[cite: 5]. |
| **Segurança** | Senhas criptografadas no banco de dados, validação rigorosa de acesso e proteção contra respostas duplicadas[cite: 5]. |
| **Performance** | Sistema capaz de suportar múltiplos acessos simultâneos durante a aplicação das pesquisas[cite: 5]. |
| **Portabilidade** | Funcionamento garantido nos principais navegadores modernos[cite: 5]. |

---

## 👤 Atores do Sistema

| Ator | Descrição e Interações |
| :--- | :--- |
| **Aluno** | Representa os participantes da categoria "Alunos"[cite: 5]. Acessa o sistema via senha anônima, responde ao questionário atribuído e envia as respostas[cite: 5]. |
| **Professor** | Representa os participantes da categoria "Professores"[cite: 5]. Acessa o sistema via senha anônima, responde ao questionário específico e envia as respostas[cite: 5]. |
| **Gestor Educacional** | Administrador do sistema[cite: 5]. Realiza login, gerencia pesquisas, categorias, questionários, perguntas, gera senhas anônimas, acompanha o dashboard, visualiza estatísticas e exporta relatórios[cite: 5]. |

---

## 📖 User Stories

| Ator | Requisito do Sistema | Comportamento Esperado |
| :--- | :--- | :--- |
| **Gestor Educacional** | Manter pesquisas | Possibilidade de criar pesquisas informando nome, descrição, período de aplicação e status (ativa/inativa), com permissões para editar ou excluir registros[cite: 5]. |
| **Gestor Educacional** | Manter questionários | Criar questionários definindo enunciados e opções de respostas, permitindo a edição e exclusão de perguntas[cite: 5]. |
| **Gestor Educacional** | Gerar senhas para o anonimato | Gerar lotes de senhas de acesso aos questionários divididas pelas suas respetivas categorias[cite: 5]. |
| **Gestor Educacional** | Baixar senhas | Permitir o download/exportação das senhas geradas[cite: 5]. |
| **Gestor Educacional** | Criar Dashboard | Exibir indicadores com total de senhas geradas, total de respostas, taxa de participação e participação por categoria[cite: 5]. |
| **Gestor Educacional** | Criar Relatórios das pesquisas | Gerar relatórios analíticos com base nos resultados por pergunta, por categoria, comparações e gráficos[cite: 5]. |
| **Gestor Educacional** | Exportar relatórios e gráficos | Permitir a exportação dos dados e gráficos gerados no sistema[cite: 5]. |
| **Aluno** | Responder o Questionário | Inserir a senha anônima recebida para visualizar e responder ao questionário correspondente[cite: 5]. |
| **Professor** | Responder o Questionário | Inserir a senha anônima recebida para visualizar e responder ao questionário correspondente[cite: 5]. |

---

## 🔒 Segurança, Autenticação e Autorização

### Pilares de Segurança
* **Confidencialidade:** Utilização de algoritmos de encriptação (ex: AES)[cite: 5].
* **Integridade:** Padrão de senhas combinando números, caracteres e símbolos[cite: 5].
* **Disponibilidade:** Alojamento e implantação em plataformas na nuvem (ex: Vercel, Netlify, Wix)[cite: 5].

### Padrão de Autenticação (Senhas Anônimas)
Estrutura de senhas numéricas/alfanuméricas de 10 dígitos configuradas por perfil[cite: 5]:
* **Gestores Educacionais:** 5 números, 3 caracteres e 2 símbolos[cite: 5].
* **Aluno:** 7 números, 2 caracteres e 1 símbolo[cite: 5].
* **Professor:** 8 números, 1 carácter e 1 símbolo[cite: 5].

### Níveis de Autorização
* **Gestores Educacionais:** Acesso completo a toda a interface de gestão, pesquisas, questionários, banco de dados e relatórios[cite: 5].
* **Aluno / Professor:** Acesso restrito exclusivamente para responder ao questionário vinculado à senha utilizada[cite: 5].