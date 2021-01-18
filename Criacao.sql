CREATE DATABASE RPG;
USE RPG;

CREATE TABLE Recurso (
    idrecurso         INT PRIMARY KEY,
    nome              VARCHAR(45) NOT NULL,
    valor             INT         NOT NULL,
    tipo              VARCHAR(45) NOT NULL,
    slots_necessarios TINYINT     NOT NULL
);


CREATE TABLE Recompensa (
    idrecompensa INT PRIMARY KEY,
    experiencia  INT,
    ouro         INT
);

CREATE TABLE recompensa_recurso (
    recompensa INT NOT NULL REFERENCES Recompensa(idrecompensa),
    recurso    INT NOT NULL REFERENCES Recurso(idrecurso),
    PRIMARY KEY (recompensa, recurso)
);

CREATE TABLE Missao (
    idmissao     INT PRIMARY KEY,
    nome         VARCHAR(45) NOT NULL,
    nivel_minimo SMALLINT    NOT NULL,
    idrecompesa  INT REFERENCES Recompensa(idrecompensa)
);

CREATE TABLE Jogador (
    idjogador       BIGINT PRIMARY KEY,
    idguilda        INT REFERENCES Guilda(idguilda),
    nome            VARCHAR(45) NOT NULL,
    nivel           SMALLINT    NOT NULL,
    experiencia     BIGINT      NOT NULL,
    vitalidade      INT         NOT NULL,
    forca           INT         NOT NULL,
    destreza        INT         NOT NULL,
    resiliencia     INT         NOT NULL,
    inteligencia    INT         NOT NULL
);

CREATE TABLE Guilda (
    idguilda        INT PRIMARY KEY,
    guilda_superior INT REFERENCES Guilda(idguilda),
    jogador_chefe   BIGINT      NOT NULL REFERENCES Jogador(idjogador),
    nome            VARCHAR(45) NOT NULL,
    nivel           INT         NOT NULL
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

CREATE TABLE Profissao (
    idprofissao INT PRIMARY KEY,
    nome        VARCHAR(45) NOT NULL
);

CREATE TABLE Humano (
    idjogador BIGINT NOT NULL REFERENCES Jogador(idjogador),
    idprofissao INT  NOT NULL REFERENCES Profissao(idprofissao),
    PRIMARY KEY (idjogador, idprofissao)
);

CREATE TABLE Elfo (
    idjogador  BIGINT      NOT NULL REFERENCES Jogador(idjogador),
    habilidade VARCHAR(45) NOT NULL,
    PRIMARY KEY (idjogador)
);

CREATE TABLE Ork (
    idjogador   BIGINT      NOT NULL REFERENCES Jogador(idjogador),
    passiva     VARCHAR(45) NOT NULL,
    resistencia VARCHAR(45) NOT NULL,
    PRIMARY KEY (idjogador)
);

CREATE TABLE Conquista (
    idjogador    BIGINT NOT NULL REFERENCES Jogador(idjogador),
    idmissao     INT    NOT NULL REFERENCES Missao(idmissao),
    idrecompensa INT    REFERENCES Recompensa(idrecompensa),
    nome         INT    NOT NULL,
    PRIMARY KEY (idjogador, idmissao)
);

CREATE TABLE Alinhamento(
    idalinhamento INT PRIMARY KEY,
    nome          VARCHAR(45) NOT NULL
);

CREATE TABLE Territorio(
    idterritorio INT PRIMARY KEY,
    nome         VARCHAR(45) NOT NULL
);

CREATE TABLE Habita (
    idterritorio        INT NOT NULL REFERENCES Territorio(idterritorio),
    idalinhamento       INT NOT NULL REFERENCES Alinhamento(idalinhamento),
    idguilda            INT NOT NULL REFERENCES Guilda(idguilda),
    beneficio_menbros   VARCHAR(45) NOT NULL,
    PRIMARY KEY (idterritorio, idalinhamento, idguilda)
)