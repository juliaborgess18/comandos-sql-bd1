DROP TABLE pacote;
DROP TABLE local;
DROP TABLE tipo_mergulho;

DROP TABLE participante;
DROP TABLE telefone_cliente_mergulho;
DROP TABLE cliente_mergulho;

DROP TABLE mergulho;
DROP TABLE instrutor;

CREATE TABLE cliente_mergulho (
    cod_cliente_mergulho INTEGER NOT NULL,
    nome_cliente_mergulho VARCHAR(30) NOT NULL, 
    genero CHAR(1) NOT NULL,
    rua VARCHAR(40) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    uf CHAR(2) NOT NULL,
    
    CONSTRAINT pk_cliente_mergulho 
        PRIMARY KEY (cod_cliente_mergulho)
);

CREATE TABLE telefone_cliente_mergulho (
    codigo_cliente_mergulho INTEGER NOT NULL,
    telefone CHAR(12),
    
    CONSTRAINT fk_telefone_cliente_mergulho
        FOREIGN KEY (codigo_cliente_mergulho)
        REFERENCES cliente_mergulho(cod_cliente_mergulho),
        
    CONSTRAINT pk_telefone_cliente_mergulho
        PRIMARY KEY (codigo_cliente_mergulho, telefone)
);

CREATE TABLE instrutor(
    cod_instrutor INTEGER NOT NULL,
    nome_instrutor VARCHAR(30) NOT NULL,
    
    CONSTRAINT pk_instrutor
        PRIMARY KEY (cod_instrutor)
);

CREATE TABLE tipo_mergulho(
    cod_tipo_mergulho INTEGER NOT NULL,
    nome_tipo_mergulho VARCHAR(40) NOT NULL,
    
    CONSTRAINT pk_tipo_mergulho
        PRIMARY KEY (cod_tipo_mergulho)
);

CREATE TABLE local(
    cod_local INTEGER NOT NULL,
    nome_local VARCHAR(30) NOT NULL,
    
    CONSTRAINT pk_local
        PRIMARY KEY (cod_local)
);

CREATE TABLE pacote (
    cod_pacote INTEGER NOT NULL,
    descricao_pacote VARCHAR(40) NOT NULL,
    hora_programada_saida CHAR(5) NOT NULL,
    tempo_pacote INTEGER NOT NULL,
    cod_tipo_mergulho_p INTEGER NOT NULL,
    hora_programada_chegada CHAR(5) NOT NULL,
    local_saida INTEGER NOT NULL,
    local_mergulho INTEGER NOT NULL,
    local_chegada INTEGER NOT NULL,
    valor_pacote NUMERIC (7,2) NOT NULL,
    
    CONSTRAINT pk_pacote
        PRIMARY KEY(cod_pacote),
        
    CONSTRAINT fk_pacote_tipo_mergulho
        FOREIGN KEY(cod_tipo_mergulho_p)
        REFERENCES tipo_mergulho (cod_tipo_mergulho),
        
    CONSTRAINT fk_pacote_local_saida
        FOREIGN KEY(local_saida)
        REFERENCES local (cod_local),
        
    CONSTRAINT fk_pacote_local_mergulho
        FOREIGN KEY(local_mergulho)
        REFERENCES local (cod_local),
        
     CONSTRAINT fk_pacote_local_chegada
        FOREIGN KEY(local_chegada)
        REFERENCES local (cod_local)   
);

CREATE TABLE mergulho(
    cod_pacote_m INTEGER NOT NULL,
    data_mergulho_m DATE NOT NULL,
    hora_mergulho_m CHAR(5) NOT NULL,
    cod_instrutor_m INTEGER NOT NULL,
    
    CONSTRAINT pk_mergulho
        PRIMARY KEY(cod_pacote_m, data_mergulho_m, hora_mergulho_m),
        
    CONSTRAINT fk_mergulho_instrutor
        FOREIGN KEY (cod_instrutor_m)
        REFERENCES instrutor (cod_instrutor)
);

CREATE TABLE participante(
    cod_pacote_p INTEGER NOT NULL,
    data_mergulho_p DATE NOT NULL,
    hora_mergulho_p CHAR(5)NOT NULL,
    cod_cliente_mergulho_p INTEGER NOT NULL,
    data_pagamento DATE NOT NULL,
    valor_cobrado NUMERIC(7,2) NOT NULL,
    valor_pago NUMERIC(7,2) NOT NULL,
    
    CONSTRAINT pk_participante
        PRIMARY KEY (cod_pacote_p,
                    data_mergulho_p,
                    hora_mergulho_p,
                    cod_cliente_mergulho_p),
                    
    CONSTRAINT fk_participante_mergulho
        FOREIGN KEY (cod_pacote_p,
                    data_mergulho_p,
                    hora_mergulho_p)
        REFERENCES mergulho(cod_pacote_m, 
                            data_mergulho_m,
                            hora_mergulho_m)                  
);
