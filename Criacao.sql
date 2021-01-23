CREATE DATABASE RPG;
USE RPG;

CREATE TABLE Recompensa (
    idrecompensa    INT PRIMARY KEY,
    experiencia     INT,
    ouro            INT
);

CREATE TABLE Missao (
    idmissao        INT PRIMARY KEY,
    nome            VARCHAR(120) NOT NULL,
    descricao       MEDIUMTEXT NOT NULL,
    nivel_minimo    SMALLINT     NOT NULL,
    idrecompensa    INT REFERENCES Recompensa(idrecompensa)
);


CREATE TABLE Recurso (
    idrecurso           INT PRIMARY KEY,
    nome                VARCHAR(45) NOT NULL,
    valor               INT         NOT NULL,
    tipo                VARCHAR(45) NOT NULL,
    slots_necessarios   TINYINT     NOT NULL
);

CREATE TABLE recompensa_recurso (
    recompensa INT NOT NULL REFERENCES Recompensa(idrecompensa),
    recurso    INT NOT NULL REFERENCES Recurso(idrecurso),
    PRIMARY KEY (recompensa, recurso)
);

CREATE TABLE Territorio(
    idterritorio INT PRIMARY KEY,
    nome         VARCHAR(45) NOT NULL
);

CREATE TABLE Profissao (
    idprofissao INT PRIMARY KEY,
    nome        VARCHAR(45) NOT NULL
);

CREATE TABLE Jogador (
    idjogador       BIGINT PRIMARY KEY,
    idguilda        INT REFERENCES Guilda(idguilda),
    alinhamento     VARCHAR(45) DEFAULT 'NEUTRO',
    nome            VARCHAR(45) NOT NULL UNIQUE,
    nivel           SMALLINT    NOT NULL,
    experiencia     BIGINT      NOT NULL,
    vitalidade      INT         NOT NULL,
    forca           INT         NOT NULL,
    destreza        INT         NOT NULL,
    resiliencia     INT         NOT NULL,
    inteligencia    INT         NOT NULL,
    CHECK (nivel >= 0 AND nivel <= 100)
);

CREATE TABLE jogador_missao (
    missao      INT NOT NULL REFERENCES Missao(idmissao),
    jogador     BIGINT NOT NULL REFERENCES Jogador(idjogador),
    PRIMARY KEY (missao, jogador)
);

CREATE TABLE Conquista (
    idconquista     INT PRIMARY KEY,
    nome            VARCHAR(120) NOT NULL,
    descricao       MEDIUMTEXT NOT NULL
);

CREATE TABLE jogador_conquista (
    jogador     BIGINT NOT NULL REFERENCES Jogador(idjogador),
    conquista   INT NOT NULL REFERENCES Conquista(idconquista),
    PRIMARY KEY (jogador, conquista)
);

CREATE TABLE conquista_missao (
    missao      INT NOT NULL REFERENCES Missao(idmissao),
    conquista   INT NOT NULL REFERENCES Conquista(idconquista),
    PRIMARY KEY (missao, conquista)
);

CREATE TABLE Inventario (
    idinventario    INT     NOT NULL,
    idjogador       BIGINT  NOT NULL REFERENCES Jogador(idjogador),
    slots           INT     NOT NULL,
    ouro            BIGINT  NOT NULL,
    PRIMARY KEY (idinventario, idjogador)
);

CREATE TABLE inventario_recurso (
    idinventario INT NOT NULL REFERENCES Inventario(idinventario),
    idjogador    BIGINT NOT NULL REFERENCES Jogador(idjogador),
    idrecurso    INT NOT NULL REFERENCES Recurso(idrecurso),
    PRIMARY KEY (idinventario, idjogador, idrecurso)
);

CREATE TABLE Ogro (
    idjogador       BIGINT      NOT NULL REFERENCES Jogador(idjogador),
    habilidade_O    VARCHAR(45) NOT NULL,
    resiliencia     VARCHAR(45) NOT NULL,
    PRIMARY KEY (idjogador)
);

CREATE TABLE Elfo (
    idjogador       BIGINT      NOT NULL REFERENCES Jogador(idjogador),
    habilidade_E    VARCHAR(45) NOT NULL,
    PRIMARY KEY (idjogador)
);

CREATE TABLE Humano (
    idjogador       BIGINT NOT NULL REFERENCES Jogador(idjogador),
    habilidade_H    VARCHAR(45) NOT NULL,
    PRIMARY KEY (idjogador)
);

CREATE TABLE humano_profissao (
    profissao   INT NOT NULL REFERENCES Profissao(idprofissao),
    humano      BIGINT NOT NULL REFERENCES Humano(idjogador),
    PRIMARY KEY (profissao, humano) 
);

CREATE TABLE Guilda (
    idguilda        INT PRIMARY KEY,
    guilda_superior INT REFERENCES Guilda(idguilda),
    jogador_chefe   BIGINT      NOT NULL REFERENCES Jogador(idjogador),
    nome            VARCHAR(45) NOT NULL,
    nivel           INT         NOT NULL,
    CHECK (nivel >= 0 AND nivel <= 100)
);

CREATE TABLE guilda_regra (
    idregra     INT NOT NULL,
    idguilda    INT NOT NULL REFERENCES Guilda(idguilda),
    regra       MEDIUMTEXT NOT NULL,
    PRIMARY KEY (idregra, idguilda)
);

CREATE TABLE Habita (
    idterritorio        INT NOT NULL REFERENCES Territorio(idterritorio),
    idguilda            INT NOT NULL REFERENCES Guilda(idguilda),
    beneficio_menbros   VARCHAR(120) NOT NULL,
    PRIMARY KEY (idterritorio, idguilda)
);