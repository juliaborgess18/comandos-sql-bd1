CREATE TABLE empregado (
	matricula integer not null,
	salario numeric(9,2) not null,
	descontos numeric(9,2) not null,
	
	CONSTRAINT pk_empregado
		PRIMARY KEY(matricula), --tornando matricula uma chave primária
	CONSTRAINT ck_desconto_menor_salario
		CHECK (descontos < salario) --utilizando CHECK para conferir que nenhum valor de descontos será maior que salário
	)
	
CREATE TABLE empregado2(
	matricula integer not null,
	nome varchar(40) not null,
	cpf char(11) null,
	CONSTRAINT pk_empregado2
		PRIMARY KEY(matricula),
	CONSTRAINT un_empregado_cpf
		UNIQUE(cpf) -- definindo cpf como UNIQUE, poís é um campo candidato a chave primária, porém, pode haver campos sem cpf
)

CREATE TABLE departamento(
	cod_depto integer not null,
	nome_depto varchar(40) not null
	default 'Departamento Novo', -- definindo que cada nova inserção na tabela que não possuir valor setado em 'nome_depto', vai receber como padrão o valor 'Departamento Novo'
	CONSTRAINT pk_departamento
		PRIMARY KEY (cod_depto)
)

CREATE TABLE empregado3(
	matricula integer not null,
	nome varchar(40) not null,
	cod_dep integer not null,
	CONSTRAINT pk_empregado3
		PRIMARY KEY(matricula),
	CONSTRAINT fk_empregado_departamento
		FOREIGN KEY(cod_dep) --criando uma chave estrangeira que referencia a chave primária da tabela 'departamento'
		REFERENCES departamento(cod_depto)
)

CREATE TABLE empregado4 (
	matricula integer not null,
	nome varchar(40) not null,
	cod_depto integer not null,
	CONSTRAINT pk_empregado4
		PRIMARY KEY(matricula),
	CONSTRAINT fk_empregado_departamento4
		FOREIGN KEY(cod_depto) REFERENCES departamento(cod_depto)
		ON DELETE CASCADE --quando houver remoção de um 'departamento', também os empregados serão removidos da tabela 'empregado4'
)


