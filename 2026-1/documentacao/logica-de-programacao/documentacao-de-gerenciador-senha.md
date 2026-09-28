# Desenvolvimento de Algoritmo para Geração de Senhas Aleatórias por Categoria de Usuário
**Centro Estadual de Educação Tecnológica Paula Souza**  
**Faculdade de Tecnologia de Lins Prof. Antonio Seabra**  
*Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas*  

---

## 👥 Integrantes do Grupo
* Giovanni Vieira Pereira da Silva
* Gustavo Martins da Silva Ilescas
* Matheus Gabriel dos Santos Silva
* Alex Marola Barbosa Junior
* Erick Gustavo Miiller Dos Santos

---

## 📝 Resumo
Este trabalho apresenta o desenvolvimento de um algoritmo intitulado `ModuloGeradorDeSenha`, cujo objetivo consiste em automatizar a geração de chaves de acesso seguras e categorizadas para o ambiente acadêmico[cite: 7]. A metodologia aplicada utiliza a lógica de programação estruturada na ferramenta VisuAlg, empregando estruturas de validação de dados para restringir as entradas do usuário às categorias de Aluno, Professor ou Funcionário[cite: 7]. 

O sistema utiliza laços de repetição combinados com funções de sorteio pseudoaleatório para extrair caracteres de uma cadeia pré-definida de letras, números e símbolos especiais[cite: 7]. Como resultado, o algoritmo gera e armazena com sucesso em um vetor dez senhas exclusivas de oito dígitos, iniciadas obrigatoriamente pela inicial da categoria escolhida[cite: 7]. Conclui-se que o módulo cumpre os requisitos de segurança computacional básica, demonstrando eficiência na criação automatizada de credenciais padronizadas[cite: 7].

**Palavras-chave:** Algoritmo. Gerador de Senhas. Lógica de Programação. Segurança de Dados[cite: 7].

---

## 1. Introdução
O presente trabalho documenta o desenvolvimento e a arquitetura funcional do **Módulo Gerador de Senhas**, um componente computacional crítico projetado para atuar no ecossistema de avaliações institucionais[cite: 7]. O principal objetivo deste sistema é mitigar os riscos de viés de resposta e garantir o cumprimento estrito das diretrizes de segurança da informação, estabelecendo um ambiente de total anonimato para os participantes de pesquisas educacionais[cite: 7]. Por meio deste módulo, o sistema realiza a dissociação completa entre a identidade civil do respondente e a sua submissão de dados, utilizando chaves criptográficas de uso único (tokens descartáveis) para validar o acesso à plataforma de questionários sem rastreabilidade do indivíduo[cite: 7].

Para mapear e especificar as interações entre os utilizadores e a plataforma, aplicou-se a modelagem visual baseada na linguagem UML (*Unified Modeling Language*), concretizada através do Diagrama de Casos de Uso[cite: 7]. Sob a perspectiva da engenharia de software, o ator **Gestor Educacional** atua como o operador primário do sistema, disparando o caso de uso principal denominado "Gerar senhas para o anonimato"[cite: 7]. Este caso de uso possui dependências estruturais com outros subsistemas, mapeadas formalmente através de relacionamentos do tipo `<<include>>`[cite: 7]. Isto significa que a execução bem-sucedida do algoritmo de geração de chaves invoca obrigatoriamente o Módulo de Relatório e o Módulo de Dashboard, garantindo que nenhum lote de dados seja criado sem a devida atualização dos indicadores gerenciais e das bases amostrais da instituição[cite: 7].

O funcionamento aprofundado do algoritmo baseia-se em uma lógica de execução sequencial e condicional rigorosa[cite: 7]. O fluxo operacional inicia-se com a autenticação e validação do nível de acesso do Gestor Educacional[cite: 7]. Ao instanciar a rotina de geração em lote, o algoritmo exige parâmetros obrigatórios de entrada: a vinculação a uma pesquisa ativa, a definição da categoria amostral (como alunos, professores ou administrativos) e a quantidade exata de credenciais a serem geradas[cite: 7]. O núcleo do algoritmo opera através de um laço de repetição acoplado a uma função de sorteio pseudoaleatório de caracteres, que extrai elementos de um vetor contendo letras maiúsculas, numerais e caracteres especiais[cite: 7]. Cada chave gerada possui um comprimento fixo de oito dígitos, iniciando-se obrigatoriamente com o caractere identificador da categoria escolhida, o que assegura a integridade estatística dos dados sem violar a privacidade do usuário[cite: 7].

A robustez do módulo é garantida pelo tratamento de fluxos alternativos e exceções diretamente nas camadas de lógica de negócio e persistência[cite: 7]. O sistema possui gatilhos de validação que interrompem a execução caso o gestor tente gerar acessos para categorias sem questionários previamente estruturados no banco de dados, ou insira valores nulos e negativos no campo de quantidade[cite: 7]. Uma vez superadas as validações, o algoritmo persiste as chaves no banco de dados relacional com o estado lógico de "não utilizada" e, em uma operação transacional atómica, alimenta o Módulo de Dashboard em tempo real[cite: 7]. Esta arquitetura assegura que as bases de cálculo da taxa de participação sejam consolidadas instantaneamente, preparando o ambiente para a extração segura de relatórios em formatos portáveis como PDF e CSV[cite: 7].

---

## 2. Diagrama de Caso de Uso e Fluxos de Execução

![Diagrama de Caso de Uso - Gerenciador de Senhas](../assets/usecase-gerenciador-senhas.png)

### Fluxo Principal 1 (FP1)
1. O Gestor Educacional realiza o login no sistema[cite: 7].
2. O Gestor acessa o Módulo de Geração de Senhas[cite: 7].
3. O Gestor seleciona uma pesquisa previamente cadastrada e ativa[cite: 7].
4. O Gestor seleciona a categoria de participantes desejada (ex: Alunos, Professores)[cite: 7].
5. O Gestor informa a quantidade de senhas que deseja gerar (geração em lote)[cite: 7].
6. O sistema processa a requisição e gera as senhas aleatórias[cite: 7].
7. O sistema associa as senhas à categoria escolhida e as configura para uso único[cite: 7].
8. O sistema salva as senhas no banco de dados com o status inicial de "não utilizada"[cite: 7].
9. O sistema atualiza a base de dados do Módulo de Gestão (Dashboard), somando a nova quantidade ao indicador de "Total de senhas geradas" daquela pesquisa[cite: 7].
10. O sistema registra o universo amostral para aquela categoria específica, estabelecendo a base matemática que o Módulo de Relatórios usará futuramente para calcular a "Taxa de participação" e a "Participação por categoria"[cite: 7].
11. O sistema exibe uma mensagem de sucesso na tela para o Gestor e disponibiliza os botões para exportação (PDF/CSV)[cite: 7].

### Fluxos Alternativos (FA)

#### Fluxo Alternativo 1: Exportação imediata de senhas
1. Após o passo 11 do fluxo principal, o Gestor decide baixar o lote gerado[cite: 7].
2. O Gestor seleciona o formato desejado (PDF ou CSV)[cite: 7].
3. O sistema compila as senhas e inicia o download do arquivo[cite: 7].

#### Fluxo Alternativo 2: Bloqueio por ausência de questionário
1. No passo 4 do fluxo principal, o Gestor seleciona uma categoria que ainda não possui perguntas cadastradas[cite: 7].
2. O sistema interrompe o fluxo e exibe um alerta informando que é necessário criar o questionário da categoria antes de gerar as senhas[cite: 7].
3. Nenhuma alteração é feita no banco de dados e os indicadores do Dashboard permanecem intactos[cite: 7].

#### Fluxo Alternativo 3: Validação de quantidade (Erro de Input)
1. No passo 5 do fluxo principal, o Gestor insere um valor inválido (zero, negativo ou texto)[cite: 7].
2. O sistema impede a geração e exibe uma mensagem solicitando um número válido[cite: 7].

---

## 3. Fluxograma Completo do Gerenciador de Senhas

O algoritmo foi modelado em duas partes para estruturar a captura de parâmetros, a validação da categoria e o sorteio aleatório de caracteres[cite: 7].

### Parte 1: Inicialização de Variáveis e Validação de Categoria
![Fluxograma 1/2 - Validação de Entrada](../assets/fluxograma-gerador-senhas-1.png)

### Parte 2: Geração Pseudoaleatória e Exibição de Senhas
![Fluxograma 2/2 - Lógica de Sorteio](../assets/fluxograma-gerador-senhas-2.png)