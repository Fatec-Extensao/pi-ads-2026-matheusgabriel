CREATE TABLE Pesquisa(
    id INT,
    titulo VARCHAR(50),
    status NUMBER(1),
    descricao VARCHAR(100),
    data_inicio DATE,
    data_fim DATE,
    CONSTRAINT pk_Pesquisa PRIMARY KEY (id),
    CONSTRAINT ck_pesquisa_status CHECK (status in (0,1))
);
CREATE TABLE Categoria(
    id INT,
    nome VARCHAR2(50),
    CONSTRAINT pk_Categoria PRIMARY KEY (id)
);
CREATE TABLE Publico_alvo(
    id_pesquisa INT,
    id_categoria INT,

    CONSTRAINT fk_id_pesquisa FOREIGN KEY (id_pesquisa)
    REFERENCES Pesquisa(id),
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria)
    REFERENCES Categoria(id),
    CONSTRAINT pk_publico_alvo PRIMARY KEY (id_pesquisa,id_categoria)
);
CREATE TABLE Token(
    codigo VARCHAR2(14),
    id_pesquisa INT,
    id_categoria INT,
    utilizado NUMBER(1),
    CONSTRAINT fk_pesquisa FOREIGN KEY (id_pesquisa)
    REFERENCES Pesquisa(id),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria)
    REFERENCES Categoria(id),
    CONSTRAINT pk_token PRIMARY KEY (codigo),
    CONSTRAINT ck_utilizado CHECK (utilizado in (0,1))
);
CREATE TABLE Questoes(
    id INT,
    enunciado VARCHAR2(300),
    tipo INT,
    CONSTRAINT pk_questoes PRIMARY KEY (id)
)
CREATE TABLE Questionario(
    id_questao INT,
    id_pesquisa INT,
    CONSTRAINT pk_questionario PRIMARY KEY (id_questao,id_pesquisa),
    CONSTRAINT fk_questao_questionario FOREIGN KEY (id_questao)
    REFERENCES Questoes(id),
    CONSTRAINT fk_pesquisa_questionario FOREIGN KEY (id_pesquisa)
    REFERENCES Pesquisa(id)
);
CREATE TABLE Alternativa(
    id INT,
    descricao_alternativa VARCHAR2(150),
    resposta INT,
    id_questao INT,
    CONSTRAINT pk_alternativa PRIMARY KEY (id),
    CONSTRAINT fk_alternativa FOREIGN KEY (id_questao)
    REFERENCES Questoes(id)
)
CREATE TABLE Resposta(
    id INT,
    texto_resposta VARCHAR2(300),
    id_questao INT,
    CONSTRAINT pk_resposta PRIMARY KEY (id),
    CONSTRAINT fk_questao FOREIGN KEY (id_questao)
    REFERENCES Questoes(id)
);
CREATE TABLE Resposta_Alternativa(
    id INT,
    id_alternativa INT,
    id_resposta INT,
    CONSTRAINT pk_resposta_alternativa PRIMARY KEY (id),
    CONSTRAINT fk_alternativa_resposta_alternativa FOREIGN KEY (id_alternativa)
    REFERENCES Alternativa(id),
    CONSTRAINT fk_resposta_resposta_alternativa FOREIGN KEY (id_resposta)
    REFERENCES Resposta(id)
);