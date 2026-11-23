-- ============================================================================
-- PARTE 1: INSERÇÃO DE DADOS (DML - INSERT / UPDATE)
-- ============================================================================

-- 1. Pesquisas
INSERT INTO Pesquisa (id, descricao, data_inicio, data_fim) VALUES
(1, 'Pesquisa de Satisfação Acadêmica 2026', '2026-03-01', '2026-03-31'),
(2, 'Avaliação de Infraestrutura e Laboratórios', '2026-04-10', '2026-05-10'),
(3, 'Pesquisa de Clima Organizacional', '2026-06-01', '2026-06-30');

-- 2. Categorias (Público-alvo)
INSERT INTO Categoria (id, nome) VALUES
(1, 'Alunos Graduação'),
(2, 'Professores'),
(3, 'Servidores Administrativos');

-- 3. Público-Alvo por Pesquisa
INSERT INTO Publico_alvo (id_pesquisa, id_categoria) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 2),
(3, 3);

-- 4. Questões (tipo: 1 = Objetiva, 2 = Dissertativa)
INSERT INTO Questoes (id, enunciado, tipo) VALUES
(1, 'Como você avalia a qualidade didática das aulas?', 1),
(2, 'Os laboratórios de informática atendem às suas necessidades?', 1),
(3, 'Deixe uma sugestão de melhoria para a instituição:', 2),
(4, 'Qual o seu nível de satisfação com o ambiente de trabalho?', 1);

-- 5. Questionário (Vinculando Questões às Pesquisas)
INSERT INTO Questionario (id_questao, id_pesquisa) VALUES
(1, 1),
(3, 1),
(2, 2),
(3, 2),
(4, 3),
(3, 3);

-- 6. Tokens de Acesso
INSERT INTO Token (id, tipo, id_pesquisa, id_categoria) VALUES
(101, 1, 1, 1),
(102, 1, 1, 2),
(103, 2, 2, 1),
(104, 1, 3, 3);

-- 7. Respostas (id_alternativa inicia como NULL por causa da FK circular)
INSERT INTO Resposta (id, id_alternativa, texto_resposta, resposta) VALUES
(1, NULL, NULL, 'S'),
(2, NULL, NULL, 'S'),
(3, NULL, 'Ampliar o horário de funcionamento da biblioteca.', 'S'),
(4, NULL, NULL, 'S');

-- 8. Alternativas
INSERT INTO Alternativa (id, descricao_alternativa, id_resposta) VALUES
(1, 'Excelente', 1),
(2, 'Bom', 2),
(3, 'Regular', NULL),
(4, 'Ruim', NULL),
(5, 'Sim, totalmente', 4),
(6, 'Parcialmente', NULL),
(7, 'Não atende', NULL);

-- 9. Atualização de Resposta para fechar o vínculo circular com Alternativa
UPDATE Resposta SET id_alternativa = 1 WHERE id = 1;
UPDATE Resposta SET id_alternativa = 2 WHERE id = 2;
UPDATE Resposta SET id_alternativa = 5 WHERE id = 4;

-- 10. Alternativas de cada Questão
INSERT INTO Questao_alternativa (id_alternativa, id_questao) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(1, 4),
(2, 4),
(3, 4),
(4, 4);

-- ============================================================================
-- PARTE 2: CONSULTAS DE VALIDAÇÃO (DQL - SELECT / JOIN)
-- ============================================================================

-- Consulta 1: Listar todas as pesquisas e seus respectivos públicos-alvo
SELECT 
    p.id AS id_pesquisa,
    p.descricao AS pesquisa,
    p.data_inicio,
    p.data_fim,
    c.nome AS publico_alvo
FROM Pesquisa p
INNER JOIN Publico_alvo pa ON p.id = pa.id_pesquisa
INNER JOIN Categoria c ON pa.id_categoria = c.id
ORDER BY p.id, c.nome;

-- Consulta 2: Listar os questionários completos (Pesquisa -> Questões -> Alternativas)
SELECT 
    p.descricao AS pesquisa,
    q.id AS id_questao,
    q.enunciado,
    CASE q.tipo 
        WHEN 1 THEN 'Objetiva' 
        WHEN 2 THEN 'Dissertativa' 
    END AS tipo_questao,
    a.descricao_alternativa AS alternativa
FROM Pesquisa p
INNER JOIN Questionario quest ON p.id = quest.id_pesquisa
INNER JOIN Questoes q ON quest.id_questao = q.id
LEFT JOIN Questao_alternativa qa ON q.id = qa.id_questao
LEFT JOIN Alternativa a ON qa.id_alternativa = a.id
ORDER BY p.id, q.id, a.id;

-- Consulta 3: Listar os tokens gerados com o nome da pesquisa e da categoria
SELECT 
    t.id AS id_token,
    t.tipo AS tipo_token,
    p.descricao AS pesquisa,
    c.nome AS categoria
FROM Token t
INNER JOIN Pesquisa p ON t.id_pesquisa = p.id
INNER JOIN Categoria c ON t.id_categoria = c.id
ORDER BY t.id;

-- Consulta 4: Verificar as respostas registradas (tanto objetivas quanto dissertativas)
SELECT 
    r.id AS id_resposta,
    q.enunciado AS questao,
    a.descricao_alternativa AS alternativa_escolhida,
    r.texto_resposta AS resposta_dissertativa,
    r.resposta AS status_resposta
FROM Resposta r
LEFT JOIN Alternativa a ON r.id_alternativa = a.id
LEFT JOIN Questao_alternativa qa ON a.id = qa.id_alternativa
LEFT JOIN Questoes q ON qa.id_questao = q.id
ORDER BY r.id;

-- Consulta 5: Contagem de questões por pesquisa
SELECT 
    p.descricao AS pesquisa,
    COUNT(quest.id_questao) AS total_questoes
FROM Pesquisa p
LEFT JOIN Questionario quest ON p.id = quest.id_pesquisa
GROUP BY p.id, p.descricao
ORDER BY p.id;