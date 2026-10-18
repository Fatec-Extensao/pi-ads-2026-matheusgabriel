# UML

## Manter Pesquisas

![Diagrama UML - Manter Pesquisas](/assets/imagens/manter-pesquisa.png)

**FP1:**
1. Abre formulário para criar pesquisa
2. Opção para selecionar para qual grupo é a pesquisa aparece
3. 2.1 Opção 1 “Alunos”
4. 2.2 Opção 2 “Professores”
5. 2.3 Opção 3 “Alunos e Professores”
6. Gestor seleciona a opção
7. O Gestor preenche o nome, descrição e o período de aplicação da pesquisa.
8. Campo Status aparece
9. Se período de aplicação for igual dia o dia que a pesquisa está sendo criada, o sistema Automaticamente deixe o status da pesquisa como “ATIVA”
10. O Gestor clica em "Finalizar Cadastro Pesquisa"
11. O sistema valida os dados inseridos (nome, descrição e consistência das datas)
12. Sistema salva a pesquisa e exibe uma notificação no canto superior direito “Pesquisa Cadastrada no Sistema”

**FA1:**
* INICIA NO FP1 – CRIAR etapa 6

![Diagrama UML - Manter Pesquisas Parte 2](image_512e43.png)

* Se período de aplicação for diferente do dia que a pesquisa está sendo criada, sistema Automaticamente deixe o status da pesquisa como “INATIVA”
* Fluxo retorna para etapa 7 do FP1 – criar

**FP2. Editar Pesquisa**
1. Sistema exibe uma tela com todas as pesquisas cadastradas
2. Gestor seleciona uma pesquisa
3. Sistema retorna os dados do formulário referente a pesquisa
4. Gestor faz as alterações
5. Gestor seleciona o botão “concluir”
6. Sistema valida as informações inseridas
7. Sistema salva no banco de dados
8. Sistema retorna a seguinte mensagem “Pesquisa editada com êxito”

**FA2. Cancelar Editar**
* INICIA NO FP2 – Editar etapa 4
* Gestor desiste de fazer alteração e aperta no botão “Cancelar”
* Sistema descarta toda alteração que foi feita
* Sistema retorna para etapa

**FP3: Excluir Pesquisa**
1. Gestor solicita a exclusão da pesquisa
2. O sistema exibe uma lista com as pesquisas cadastradas
3. Gestor seleciona a pesquisa que deseja remover

![Diagrama UML - Manter Pesquisas Parte 3](image_512e80.png)

4. O sistema exibe os dados da pesquisa em modo leitura e exibe o botão “Excluir Pesquisa”
5. O sistema exibe uma mensagem de confirmação “Deseja excluir essas Pesquisa?” com a opção “Confirmar” e “Sair”
6. Gestor aperta em “Confirmar”
7. O sistema deleta a pesquisa com todas as questões cadastradas no banco de dados

**FA3. Cancelar Exclusão da Pesquisa**
* Inicia no FP3 – etapa 6
* Gestor aperta em “Cancelar”
* Sistema não faz nenhuma exclusão no banco de dados
* Sistema retorna para etapa 2 do FP3 – Excluir

---

## Gerar senhas para o anonimato

*(Diagrama de caso de uso incluído na imagem anterior)*

**FP1:**
1. O Gestor Educacional realiza o login no sistema.
2. O Gestor acessa o Módulo de Geração de Senhas.
3. O Gestor seleciona uma pesquisa previamente cadastrada e ativa.
4. O Gestor seleciona a categoria de participantes desejada (ex: Alunos, Professores).
5. O Gestor informa a quantidade de senhas que deseja gerar (geração em lote).

![Diagrama UML - Gerar Senhas Parte 2](image_512e9f.png)

6. O sistema processa a requisição e gera as senhas aleatórias.
7. O sistema associa as senhas à categoria escolhida e as configura para uso único.
8. O sistema salva as senhas no banco de dados com o status inicial de "não utilizada".
9. O sistema atualiza a base de dados do Módulo de Gestão (Dashboard), somando a nova quantidade ao indicador de "Total de senhas geradas" daquela pesquisa.
10. O sistema registra o universo amostral para aquela categoria específica, estabelecendo a base matemática que o Módulo de Relatórios usará futuramente para calcular a "Taxa de participação" e a "Participação por categoria".
11. O sistema exibe uma mensagem de sucesso na tela para o Gestor e disponibiliza os botões para exportação (PDF/CSV).

**FA1. Exportação imediata das senhas**
1. Após o passo 11 do fluxo principal, o Gestor decide baixar o lote gerado.
2. O Gestor seleciona o formato desejado (PDF ou CSV).
3. O sistema compila as senhas e inicia o download do arquivo.

**FA2. Bloqueio por ausência de questionário**
1. No passo 4 do fluxo principal, o Gestor seleciona uma categoria que ainda não possui perguntas cadastradas.
2. O sistema interrompe o fluxo e exibe um alerta informando que é necessário criar o questionário da categoria antes de gerar as senhas.
3. Nenhuma alteração é feita no banco de dados e os indicadores do Dashboard permanecem intactos.

**FA3. Validação de quantidade (Erro de Input)**
1. No passo 5 do fluxo principal, o Gestor insere um valor inválido (zero, negativo ou texto).
2. O sistema impede a geração e exibe uma mensagem solicitando um número válido.

---

## Responder Questionários

![Diagrama UML - Responder Questionários](image_512ec0.png)

**FP1: Acesso à pesquisa (Alunos/Gestores educacionais/Professores)**
1. Sistema carrega o app na interface padrão;
2. Interface solicita senha para acessar a pesquisa;
3. Ator insere a senha;
4. Sistema válida a Senha;
5. Sistema Identifica o ator;
6. Sistema exibe o questionário;
7. Ator responde às perguntas;
8. Sistema solicita ao ator validar respostas e salvar resposta;
9. Ator seleciona “Salvar respostas”;
10. Sistema armazena as respostas no banco de dados;
11. Sistema marca senha como utilizada;

![Diagrama UML - Responder Questionários Parte 2](image_513165.png)

12. Sistema Finaliza a Pesquisa;
13. Sistema exibe mensagem “Obrigado por participar!”
14. Sistema exibe caixa de texto para reiniciar a pesquisa.
15. Sistema retorna a etapa 1

**FA1. Ator insere senha invalida ou incorreta**
* INICIA NO FP1 – Acesso à pesquisa etapa 4
* Caso senha digitada estiver incorreta ou no formato inválido o sistema exibirá a mensagem “A senha digitada não confere”.
* Sistema contabiliza uma (1) tentativa não sucedida de acesso.
* O sistema retornará a etapa 2.

**FA2. Ator insere senha incorreta diversas vezes**
* INICIA NO FP1 – Acesso à pesquisa FA1 etapa 2
* Caso sistema contabilizar 5 tentativas incorretas, se tornará temporariamente indisponível para realizar novas tentativas de acesso por 5 minutos.
* Se a contagem chegar a 10 o sistema bloqueia permanentemente a caixa de texto para inserir a senha.
* O sistema retornará a etapa 2 e exibe a mensagem “Tentativas de acesso excedidas”

**FA3. Ator sai da pesquisa sem responder todas as perguntas**
* INICIA NO FP1 - Acesso à pesquisa FP1 etapa 7
* Caso usuário saia da pesquisa, o sistema salvará localmente as respostas e guardará num arquivo de cache.
* Para acessar novamente a pesquisa de onde parou, o sistema retornará a etapa 1.

![Diagrama UML - Responder Questionários Parte 3](image_51316d.png)

**FA4. Ator não finaliza a pesquisa na etapa 8**
* INICIA NO FP1 - Acesso à pesquisa FP1 etapa 8
* Sistema salvará localmente as respostas e guardará num arquivo de cache.
* Para acessar novamente a pesquisa de onde parou, o sistema retornará a etapa 1.

---

## Criar Dashboard

![Diagrama UML - Criar Dashboard 1](image_5131a2.png)

![Diagrama UML - Criar Dashboard 2](image_5131a8.png)

**FP1: Dashboard**
1. O Gestor Educacional realiza login no sistema.
2. O sistema valida as credenciais de acesso.
3. O sistema exibe o Dashboard Administrativo.
4. O Gestor seleciona os filtros desejados:
    * Pesquisa;
    * Categoria;
    * Período;
    * Status.
5. O sistema processa os filtros informados.
6. O sistema calcula e exibe os indicadores principais (KPIs):
    * Total de Pesquisas;
    * Senhas Geradas;
    * Respostas Recebidas;
    * Taxa de Participação;
    * Pesquisas Ativas;
    * Pesquisas Encerradas.
7. O sistema exibe o gráfico de Participação por Categoria.
8. O sistema exibe o gráfico de Utilização das Senhas.
9. O sistema exibe o gráfico de Evolução das Respostas.

![Diagrama UML - Criar Dashboard 3](image_5131c6.png)

10. O sistema exibe o gráfico de Status das Pesquisas.
11. O sistema exibe os Resultados das Perguntas.
12. O sistema exibe a Comparação entre Categorias.
13. O sistema exibe os Comentários das Questões Abertas.
14. O sistema exibe os Indicadores de Segurança:
    * Total de Logins Administrativos;
    * Tentativas de Acesso Inválidas;
    * Senhas Reutilizadas Bloqueadas
    * Usuários Ativos.
15. O Gestor analisa as informações apresentadas.
16. O Gestor pode solicitar a geração de relatórios.
17. O caso de uso é encerrado.

**FA01 – Alterar Filtros**
1. Inicia em "Selecionar Filtros".
2. Gestor altera filtros.
3. Sistema recarrega todos os gráficos e indicadores.
4. Retorna para etapa 3.

**FA02 – Atualização Automática**
1. Inicia após a exibição dos indicadores.
2. Sistema atualiza os dados em tempo real.
3. Retorna para etapa 3.

**FA03 – Visualizar Detalhes**
1. Inicia em qualquer gráfico.
2. Gestor seleciona um gráfico.
3. Sistema apresenta informações detalhadas.
4. Retorna para etapa 3.

**FE01 – Nenhum dado encontrado**
1. Inicia em "Aplicar Filtros".
2. Sistema não encontra registros.
3. Exibe mensagem:"Nenhum resultado encontrado para os filtros selecionados."
4. Retorna para etapa 4.

**FE02 – Erro ao carregar indicadores**
1. Inicia em "Carregar Indicadores".
2. Sistema detecta falha na consulta.
3. Exibe mensagem de erro.
4. Retorna para etapa 3.

**FE03 – Falha na exportação**
1. Inicia em "Exportar PDF/CSV".
2. Sistema não consegue gerar o arquivo.
3. Exibe mensagem de erro.
4. Retorna para a etapa 16.