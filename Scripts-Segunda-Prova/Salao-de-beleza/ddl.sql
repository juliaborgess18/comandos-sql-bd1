DROP TABLE IF EXISTS itens_pedido;
DROP TABLE IF EXISTS preferencia;
DROP TABLE IF EXISTS pedido;
DROP TABLE IF EXISTS profissional_especialidade;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS cidade;
DROP TABLE IF EXISTS profissional;
DROP TABLE IF EXISTS catalogo_venda;
DROP TABLE IF EXISTS uf;
DROP TABLE IF EXISTS filial;
DROP TABLE IF EXISTS especialidade;

CREATE TABLE especialidade (
  cod_especialidade  INTEGER     NOT NULL,
  nome_especialidade VARCHAR(20) NOT NULL,
  CONSTRAINT pk_especialidade   
    PRIMARY KEY(cod_especialidade)
);

CREATE TABLE filial (
  cod_filial  INTEGER     NOT NULL,
  nome_filial VARCHAR(30) NOT NULL,
  CONSTRAINT pk_filial
    PRIMARY KEY(cod_filial)
);

CREATE TABLE uf (
  sigla_uf CHAR(2)     NOT NULL,
  nome_uf  VARCHAR(20) NOT NULL,
  CONSTRAINT pk_uf
    PRIMARY KEY(sigla_uf)
);

CREATE TABLE catalogo_venda (
  cod_servprod    INTEGER      NOT NULL,
  nome_servprod   VARCHAR(25)  NOT NULL,
  tipo_servprod   CHAR(1)      NOT NULL,
  especialidade   INTEGER      NULL,
  estoque_produto INTEGER      NULL,
  valor_servprod  NUMERIC(6,2) NOT NULL,
  CONSTRAINT pk_catalago_venda
    PRIMARY KEY(cod_servprod),
  CONSTRAINT fk_catalago_venda_especialidade   
    FOREIGN KEY(especialidade)
    REFERENCES especialidade(cod_especialidade)
);

CREATE TABLE profissional (
  cod_filial_p      INTEGER     NOT NULL,
  cpf               CHAR(11)    NOT NULL,
  nome_profissional VARCHAR(35) NOT NULL,
  tipo_vinculo      CHAR(1)     NOT NULL,
  CONSTRAINT pk_profissional
    PRIMARY KEY(cod_filial_p, cpf),
  CONSTRAINT fk_profissional_filial   
    FOREIGN KEY(cod_filial_p)
    REFERENCES filial(cod_filial),
  CONSTRAINT ck_tipo_vinculo
    CHECK(tipo_vinculo='C' OR tipo_vinculo='T')

);

CREATE TABLE cidade (
  cod_cidade  INTEGER     NOT NULL,
  nome_cidade VARCHAR(35) NOT NULL,
  uf          CHAR(2)     NOT NULL,
  CONSTRAINT pk_cidade
    PRIMARY KEY(cod_cidade),
  CONSTRAINT fk_cidade_uf   
    FOREIGN KEY(uf)
    REFERENCES uf(sigla_uf)
);

-- Tipo_cliente: V - cliente VIP, N-Normal
CREATE TABLE cliente (
  cod_cliente    INTEGER     NOT NULL,
  nome_cliente   VARCHAR(40) NOT NULL,
  rua_cliente    VARCHAR(40) NOT NULL,
  bairro_cliente VARCHAR(30) NOT NULL,
  cidade_cliente INTEGER     NOT NULL,
  tipo_cliente   CHAR(1)     NOT NULL,
  CONSTRAINT pk_cliente
    PRIMARY KEY(cod_cliente),
  CONSTRAINT fk_cliente_cidade 
    FOREIGN KEY(cidade_cliente)
    REFERENCES cidade(cod_cidade),
  CONSTRAINT ck_tipo_cliente
    CHECK(tipo_cliente='V' OR tipo_cliente='N')

);

CREATE TABLE profissional_especialidade (
  cod_filial_pe        INTEGER  NOT NULL,
  cpf_pe               CHAR(11) NOT NULL,
  cod_especialidade_pe INTEGER  NOT NULL,
  CONSTRAINT pk_profissional_especialidade
    PRIMARY KEY(cod_filial_pe, cpf_pe, cod_especialidade_pe),
  CONSTRAINT fk_profissional_especialidade_profissional   
    FOREIGN KEY(cod_filial_pe, cpf_pe)
    REFERENCES profissional(cod_filial_p, cpf),
  CONSTRAINT fk_profissional_especialidade_especialidade   
    FOREIGN KEY(cod_especialidade_pe)
    REFERENCES especialidade(cod_especialidade)
);

CREATE TABLE pedido (
  cod_filial_p   INTEGER NOT NULL,
  cod_pedido     INTEGER NOT NULL,
  cod_cliente_p  INTEGER NOT NULL,
  data_pedido    DATE    NOT NULL,
  posicao_pedido CHAR(1) NOT NULL,
  CONSTRAINT pk_pedido
    PRIMARY KEY(cod_filial_p, cod_pedido),
  CONSTRAINT fk_pedido_cliente
    FOREIGN KEY(cod_cliente_p)
    REFERENCES cliente(cod_cliente),
  CONSTRAINT fk_pedido_filial   
    FOREIGN KEY(cod_filial_p)
    REFERENCES filial(cod_filial),
  CONSTRAINT ck_posicao_pedido
    CHECK(posicao_pedido='A' OR posicao_pedido='F')
);

CREATE TABLE preferencia (
  cod_cliente_pref   INTEGER  NOT NULL,
  especialidade_pref INTEGER  NOT NULL,
  cod_filial_pref    INTEGER  NOT NULL,
  cpf_pref           CHAR(11) NOT NULL,
  data_escolha       DATE     NOT NULL,
  CONSTRAINT pk_preferencia
    PRIMARY KEY(cod_cliente_pref, especialidade_pref, cod_filial_pref, cpf_pref),
  CONSTRAINT fk_preferencia_cliente   
    FOREIGN KEY(cod_cliente_pref)
    REFERENCES cliente(cod_cliente),
  CONSTRAINT fk_preferencia_profissional_especialidade  
    FOREIGN KEY(cod_filial_pref, cpf_pref, especialidade_pref)
    REFERENCES profissional_especialidade(cod_filial_pe, cpf_pe, cod_especialidade_pe)
);

CREATE TABLE itens_pedido (
  cod_filial_ip   INTEGER      NOT NULL,
  cod_pedido_ip   INTEGER      NOT NULL,
  cod_servprod_ip INTEGER      NOT NULL,
  cpf_ip          CHAR(11)     NOT NULL,
  quantidade_ip   INTEGER      NOT NULL,
  valor_ip        NUMERIC(6,2) NOT NULL,
  CONSTRAINT pk_itens_pedido
    PRIMARY KEY(cod_filial_ip, cod_pedido_ip, cod_servprod_ip),
  CONSTRAINT fk_itens_pedido_catalogo  
    FOREIGN KEY(cod_servprod_ip)
    REFERENCES catalogo_venda(cod_servprod),
  CONSTRAINT fk_itens_pedido_pedido
    FOREIGN KEY(cod_filial_ip, cod_pedido_ip)
    REFERENCES pedido(cod_filial_p, cod_pedido),
  CONSTRAINT fk_itens_pedido_profissional
    FOREIGN KEY(cod_filial_ip, cpf_ip)
    REFERENCES profissional(cod_filial_p, cpf)
);