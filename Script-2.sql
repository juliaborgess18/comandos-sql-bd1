CREATE TABLE ambulatorio (
	cod_ambulatorio INTEGER NOT NULL,
	andar INTEGER NOT NULL,
	capacidade INTEGER NOT NULL,
	CONSTRAINT pk_ambulatorio
		PRIMARY KEY(cod_ambulatorio)
); 

CREATE TABLE medico(
	cod_medico INTEGER NOT NULL,
	nome_medico VARCHAR(40) NOT NULL,
	idade_medico INTEGER NOT NULL,
	especialidade CHAR(20) NULL,
	rg_medico CHAR(10) NULL,
	cidade_medico VARCHAR(30) NULL 
		DEFAULT 'Cachoeiro de Itapemirim',
	cod_amb INTEGER NOT NULL,
	CONSTRAINT pk_medico
		PRIMARY KEY (cod_medico),
	CONSTRAINT un_medico_rg
		UNIQUE (rg_medico),
	CONSTRAINT fk_medico_ambulatorio
		FOREIGN KEY(cod_amb)
		REFERENCES ambulatorio(cod_ambulatorio)
);

CREATE TABLE copia_medico AS SELECT * FROM medico -- Cópia de uma tabela;

DROP TABLE copia_medico; -- Remove uma tabela

DROP TABLE IF EXISTS copia_medico; -- Remove tabela se existir

ALTER TABLE medico ADD COLUMN telefone2 CHAR(10) NULL; --Adicionando uma nova coluna

ALTER TABLE medico ADD COLUMN cpf CHAR(11) NULL;

ALTER TABLE ambulatorio ADD COLUMN nome_ambulatorio VARCHAR(30) NULL;

ALTER TABLE medico ADD COLUMN coluna_id SERIAL; -- Adicionando tipo SERIAL para criar uma chave primária artificial na tabela 'medico'

ALTER TABLE medico DROP CONSTRAINT pk_medico -- Deletando pk_medico como chave primária

ALTER TABLE medico ADD CONSTRAINT pk_serial PRIMARY KEY(coluna_id) -- Adicionando coluna_id como chave primária de médico