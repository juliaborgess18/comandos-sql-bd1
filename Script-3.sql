--Exercícios retirados do site: 
-- https://sites.google.com/site/sgbdrj/6---sql/exercicios


--Crie a tabela acima usando 
--o comando em SQL CREATE TABLE, com as suas devidas estruturas.
CREATE TABLE cliente(
	codigo INTEGER NOT NULL,
	nome VARCHAR(20) NOT NULL,
	sobrenome VARCHAR(30) NOT NULL,
	data DATE NOT NULL,
	idade INTEGER NOT NULL,
	CPF INTEGER NOT NULL,
	sexo VARCHAR(10) NOT NULL,
	
	CONSTRAINT pk_cliente 
		PRIMARY KEY(codigo)
);

--Conforme a tabela Cliente, adicione um campo Salario 
--(FloatNotnul), usando o comando em SQL ALTER TABLE...ADD
ALTER TABLE cliente 
ADD COLUMN salario FLOAT NOT NULL;

--Com o comando em SQL CHANGE, 
--troque o nome do campo Data para Data_NASC. 
ALTER TABLE cliente 
RENAME COLUMN data TO data_nasc;

--Selecione toda a Tabela Cliente, usando o comando SELECT.
SELECT * FROM cliente; 

-- De acordo com a tabela Cliente, insira 4 tuplas usando 
-- o comando em SQL  INSERT INTO, conforme dados abaixo:
INSERT INTO cliente 
(codigo,nome,sobrenome,data_nasc,idade,CPF,sexo,salario)
VALUES
(01,'Leo', 'Pires', '10/10/1980',34,123456789,'M',540.00),
(02,'Leoncio', 'Silva', '01/05/1982',32,987654321,'M',1500.00),
(03,'Leandro', 'Souza', '30/12/1960',54,654987321,'M',2000.00),
(04,'Ana', 'Felix', '25/11/1962',52,321456789,'F',2300.00);

--Usando os comandos em SQL UPDATE e WHERE, 
--Altere o valor do campo Salário para 1.300,00, do código 04.
UPDATE cliente c
	SET salario = 1300.00
	WHERE c.codigo = 04;

-- Apague o registro 04, 
-- utilizando os comando em SQL DELETE e WHERE.
DELETE FROM cliente c
	WHERE c.codigo = 04;

--Exiba a estrutura da tabela 
--Cliente usando o comando em SQL DESCRIBE.
SELECT 
   table_name, 
   column_name, 
   data_type 
FROM 
   information_schema.columns
WHERE 
   table_name = 'cliente'; 

--Selecione somente os campos código, 
--nome e idade da tabela Cliente, usando o comando SELECT.
SELECT nome,idade FROM cliente;

--Selecione o Cliente Leo e exiba 
--o seu salário e idade, usando os comandos SELECT e WHERE
SELECT salario,idade FROM cliente c WHERE c.nome = 'Leo'

--Selecione todos os campos da tabela Cliente que contenham 
--salários maiores que R$1.000 e ordene de forma decrescente 
--o salário, usando os comandos em SQL Select, Where e order by
SELECT * FROM cliente c
WHERE c.salario > 1000.00
ORDER BY c.salario DESC;

--Na tabela Cliente, adicione um campo Bairro (Char20 not null).
ALTER TABLE cliente 
ADD COLUMN 
	bairro CHAR(20) NULL;

UPDATE cliente 
	SET bairro = 'Nome do Bairro';

ALTER TABLE cliente 
	ALTER COLUMN bairro SET NOT NULL;

--Adicione as informações no campo Bairro
--Código           Bairro
--1                Centro
--2                Centro
--3                Icaraí
UPDATE cliente c
	SET bairro = 'Centro'
	WHERE c.codigo IN (01,02);

UPDATE cliente c
	SET bairro = 'Icaraí'
	WHERE c.codigo = 03;

--Na tabela Cliente, Adicione uma tupla conforme dados abaixo:
--Codigo  Nome   SobreNome  Data_Nasc   Idade   CPF      Sexo  Salário Bairro
--04      Paula  Castro    30/11/1963   51   221456789   F    680,00   Ingá

INSERT INTO cliente
(codigo,nome,sobrenome,data_nasc,idade,CPF,sexo,salario,bairro)
VALUES
(04,'Paula','Castro','30/11/1963',51,221456789,'F',680.00,'Ingá');

--Selecione somente os Bairros, usando o comando DISTINCT.
SELECT DISTINCT bairro FROM cliente; 

--Selecione todos os nomes, sobrenomes e CPF, onde o campo 
--Nome comece por Leo, usando o comando em SQL LIKE.
SELECT nome,sobrenome,CPF FROM cliente 
	WHERE nome LIKE 'Leo%'; 

--Exiba o maior salário da tabela Cliente, 
--usando o comando em SQL MAX.
SELECT MAX(salario) FROM cliente;

--Exiba a menor idade por bairro da tabela Cliente, 
--usando o comando em SQL MIN, GROUP BY 
SELECT bairro,MIN(idade) 
FROM cliente 
GROUP BY bairro;

--Exiba as quantidades de Tuplas que contenham nomes 
--iniciados com “Le”.
SELECT COUNT(nome) FROM cliente 
WHERE nome LIKE 'Le%';














