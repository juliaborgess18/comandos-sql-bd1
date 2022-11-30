
/*
----------------------------------------------------------------------------

uf:
   *sigla_uf             CHAR(2)
    nome_uf              VARCHAR(30)
*/

CREATE TABLE uf (
  sigla_uf             CHAR(2) NOT NULL,
  nome_uf              VARCHAR(30) NOT NULL,
  CONSTRAINT pk_uf
    PRIMARY KEY (sigla_uf)
);




/*
----------------------------------------------------------------------------

cidade:
   *cod_cidade           INTEGER
    nome_cidade          VARCHAR(30)
    sigla_uf              CHAR(2) NOT NULL
*/

CREATE TABLE cidade (
  cod_cidade           INTEGER     NOT NULL,
  nome_cidade          VARCHAR(30) NOT NULL,
  sigla_uf             CHAR(2)     NOT NULL,
  CONSTRAINT pk_cidade
    PRIMARY KEY (cod_cidade),
  CONSTRAINT fk_cidade_uf 
    FOREIGN KEY (sigla_uf)
    REFERENCES uf(sigla_uf)
);


/*
----------------------------------------------------------------------------
 tipo_servico:
   *cod_tipo_servico     INTEGER
    desc_tipo_servico    VARCHAR(20)
*/

CREATE TABLE tipo_servico (
  cod_tipo_servico     INTEGER     NOT NULL,
  desc_tipo_servico    VARCHAR(20) NOT NULL,
  CONSTRAINT pk_tipo_servico
    PRIMARY KEY (cod_tipo_servico)
);

/*
----------------------------------------------------------------------------

tipo_rocha:
   *cod_tipo_rocha       INTEGER
    nome_tipo_rocha      VARCHAR(30)
*/

CREATE TABLE tipo_rocha (
  cod_tipo_rocha       INTEGER     NOT NULL,
  nome_tipo_rocha      VARCHAR(30) NOT NULL,
  CONSTRAINT pk_tipo_rocha 
    PRIMARY KEY (cod_tipo_rocha)
);

/*
----------------------------------------------------------------------------

cor:
   *cod_cor              INTEGER
    nome_cor             VARCHAR(20)
*/

CREATE TABLE cor (
  cod_cor              INTEGER     NOT NULL,
  nome_cor             VARCHAR(20) NOT NULL,
  CONSTRAINT pk_cor 
    PRIMARY KEY (cod_cor)
);

/*
----------------------------------------------------------------------------

utilizacoes:
   *cod_utilizacao       INTEGER
    nome_utilizacao      VARCHAR(30)
*/

CREATE TABLE utilizacao (
  cod_utilizacao       INTEGER     NOT NULL,
  nome_utilizacao      VARCHAR(30) NOT NULL,
  CONSTRAINT pk_utilizacao
    PRIMARY KEY (cod_utilizacao)
);

/*
----------------------------------------------------------------------------

classes:
   *cod_classe           INTEGER
    desc_classe          VARCHAR(20)
*/

CREATE TABLE classe (
  cod_classe           INTEGER     NOT NULL,
  desc_classe          VARCHAR(20) NOT NULL,
  CONSTRAINT pk_classe
    PRIMARY KEY (cod_classe)
);


/*
----------------------------------------------------------------------------

empresa:
   *cod_empresa          INTEGER
    nome_empresa         VARCHAR(50)
    cod_cidade           INTEGER          	FK-cidades
    sigla_uf             CHAR(2)		FK-uf
    tel1_empresa         CHAR(12)
    tel2_empresa         CHAR(12)
    email_empresa        VARCHAR(30)
    cod_tipo_servico     INTEGER		FK-tipos_servicos
*/

CREATE TABLE empresa (
  cod_empresa          INTEGER     NOT NULL,
  nome_empresa         VARCHAR(50) NOT NULL,
  cod_cidade           INTEGER     NOT NULL,
  tel1_empresa         CHAR(12)    NOT NULL,
  tel2_empresa         CHAR(12)    NULL,
  email_empresa        VARCHAR(30) NULL,
  cod_tipo_servico     INTEGER NOT NULL,
  CONSTRAINT pk_empresa
    PRIMARY KEY (cod_empresa),
  CONSTRAINT fk_empresa_cidade
    FOREIGN KEY (cod_cidade)
    REFERENCES cidade(cod_cidade),
  CONSTRAINT fk_empresa_tipo_servico
    FOREIGN KEY (cod_tipo_servico)
    REFERENCES tipo_servico (cod_tipo_servico)
);


/*
----------------------------------------------------------------------------

rocha:
   *cod_rocha            INTEGER
    nome_rocha           VARCHAR(40)
    cod_tipo_rocha       INTEGER		FK-tipos_rochas
    cod_cor              INTEGER		FK-cores
*/

CREATE TABLE rocha (
  cod_rocha            INTEGER       NOT NULL,
  nome_rocha           VARCHAR(40)   NOT NULL,
  cod_tipo_rocha       INTEGER       NOT NULL,
  cod_cor              INTEGER       NOT NULL,
  img_foto             VARCHAR(30)   NULL,
  valor_compra         NUMERIC(10,2) NOT NULL,
  valor_venda          NUMERIC(10,2) NOT NULL,
  CONSTRAINT pk_rocha
    PRIMARY KEY (cod_rocha),
  CONSTRAINT fk_rocha_tipo_rocha
    FOREIGN KEY (cod_tipo_rocha)
    REFERENCES tipo_rocha(cod_tipo_rocha),
  CONSTRAINT fk_rocha_cor
    FOREIGN KEY (cod_cor)
    REFERENCES cor(cod_cor)
);


/*
----------------------------------------------------------------------------

local_extracao:
   *cod_local_extracao   INTEGER
    nome_local_extracao  VARCHAR(50)
    cod_cidade           INTEGER		FK-cidades
    sigla_uf             CHAR(2)		FK-uf
*/

CREATE TABLE local_extracao (
  cod_local_extracao   INTEGER     NOT NULL,
  nome_local_extracao  VARCHAR(50) NOT NULL,
  cod_cidade           INTEGER     NOT NULL,
  CONSTRAINT pk_local_extracao
    PRIMARY KEY (cod_local_extracao),
  CONSTRAINT fk_local_extracao_cidade
    FOREIGN KEY (cod_cidade)
    REFERENCES cidade(cod_cidade)
);


/*
----------------------------------------------------------------------------

empresas_rocha:
   *cod_empresa          INTEGER		FK-empresas
   *cod_rocha            INTEGER		FK-rochas
*/

CREATE TABLE empresa_rocha (
  cod_empresa          INTEGER	NOT NULL,
  cod_rocha            INTEGER	NOT NULL,
  CONSTRAINT pk_empresa_rocha
    PRIMARY KEY (cod_empresa,cod_rocha),
  CONSTRAINT fk_empresa_rocha_empresa
    FOREIGN KEY (cod_empresa)
    REFERENCES empresa(cod_empresa),
  CONSTRAINT fk_empresa_rocha_rocha
    FOREIGN KEY (cod_rocha)
    REFERENCES rocha(cod_rocha)
);

/*
----------------------------------------------------------------------------

rocha_local:
   *cod_rocha            INTEGER		FK-rochas
   *cod_local_extracao   INTEGER		FK-locais_extracao
    ano_inicial          INTEGER
    ano_final            INTEGER
*/

CREATE TABLE rocha_local (
  cod_rocha            INTEGER NOT NULL,
  cod_local_extracao   INTEGER NOT NULL,
  ano_inicial          INTEGER NULL,
  ano_final            INTEGER NULL,
  CONSTRAINT pk_rocha_local
    PRIMARY KEY (cod_rocha,cod_local_extracao),
  CONSTRAINT fk_rocha_local_rocha
    FOREIGN KEY (cod_rocha)
    REFERENCES rocha(cod_rocha),
  CONSTRAINT fk_rocha_local_local_extracao
    FOREIGN KEY (cod_local_extracao)
    REFERENCES local_extracao(cod_local_extracao)
);

/*
----------------------------------------------------------------------------
rocha_utilizacao:
   *cod_rocha            INTEGER		FK-rochas
   *cod_utilizacao       INTEGER		FK-utilizacoes
    cod_classe           INTEGER		FK-classes
*/

CREATE TABLE rocha_utilizacao (
  cod_rocha            INTEGER NOT NULL,
  cod_utilizacao       INTEGER NOT NULL,
  cod_classe           INTEGER NOT NULL,
  CONSTRAINT pk_rocha_utilizacao
    PRIMARY KEY(cod_rocha,cod_utilizacao),
  CONSTRAINT fk_rocha_utilizacao_rocha
    FOREIGN KEY (cod_rocha)
    REFERENCES rocha(cod_rocha),
  CONSTRAINT fk_rocha_utilizacao_utilizacao
    FOREIGN KEY (cod_utilizacao)
    REFERENCES utilizacao(cod_utilizacao),
  CONSTRAINT fk_rocha_utilizacao_classe
    FOREIGN KEY (cod_classe)
    REFERENCES classe(cod_classe)
);

CREATE TABLE tipo_rocha_cor (
  cod_tipo_rocha INTEGER NOT NULL,
  cod_cor        INTEGER NOT NULL,
  CONSTRAINT pk_tipo_rocha_cor
    PRIMARY KEY (cod_tipo_rocha,cod_cor),
  CONSTRAINT fk_tipo_rocha_cor_tipo_rocha 
    FOREIGN KEY (cod_tipo_rocha) 
    REFERENCES tipo_rocha (cod_tipo_rocha),
  CONSTRAINT fk_tipo_rocha_cor_cor
    FOREIGN KEY (cod_cor)
    REFERENCES cor (cod_cor)
);

