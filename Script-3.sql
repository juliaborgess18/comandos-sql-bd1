create table empregado (
	matricula integer not null,
	salario numeric(9,2) not null,
	descontos numeric(9,2) not null,
	
	constraint pk_empregado
		primary key(matricula), --tornando matricula uma chave primária
	constraint ck_desconto_menor_salario
		check (descontos < salario) --utilizando check para conferir que nenhum valor de descontos será maior que salário
	)
	
create table empregado2(
	matricula integer not null,
	nome varchar(40) not null,
	cpf char(11) null,
	constraint pk_empregado2
		primary key(matricula),
	constraint un_empregado_cpf
		unique(cpf) -- definindo cpf como unique, poís é um campo candidato a chave primária, porém, pode haver campos sem cpf
)

create table departamento(
	cod_depto integer not null,
	nome_depto varchar(40) not null
	default 'Departamento Novo',
	constraint pk_departamento
		primary key (cod_depto)
)

create table empregado3(
	matricula integer not null,
	nome varchar(40) not null,
	cod_dep integer not null,
	constraint pk_empregado3
		primary key(matricula),
	constraint fk_empregado_departamento
		foreign key(cod_dep) --criando uma chave estrangeira que referencia a chave primária da tabela 'departamento'
		references departamento(cod_depto)
)

create table empregado4 (
	matricula integer not null,
	nome varchar(40) not null,
	cod_depto integer not null,
	constraint pk_empregado4
		primary key(matricula),
	constraint fk_empregado_departamento4
		foreign key(cod_depto) references departamento(cod_depto)
		on delete cascade --quando houver remoção de um 'departamento', também os empregados serão removidos da tabela 'empregado4'
)


