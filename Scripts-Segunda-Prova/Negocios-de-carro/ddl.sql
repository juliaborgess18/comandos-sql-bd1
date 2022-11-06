CREATE TABLE cliente_carro (
	cod_cliente INTEGER NOT NULL,
	nome_cliente VARCHAR (30) NOT NULL,
	rua_cliente VARCHAR(40) NOT NULL,
	bairro_cliente VARCHAR(20) NOT NULL,
	cidade_cliente VARCHAR(20) NOT NULL,
	uf CHAR(2) NOT NULL,
	cep CHAR(8) NOT NULL,
	
	CONSTRAINT pk_cliente_carro
		PRIMARY KEY(cod_cliente)
);

CREATE TABLE fornecedor_carro(
	cod_fornecedor INTEGER NOT NULL,
	nome_fornecedor VARCHAR(40) NOT NULL,
	
	CONSTRAINT pk_fornecedor_carro
		PRIMARY KEY (cod_fornecedor)
);

CREATE TABLE marca_carro( 
	cod_marca INTEGER NOT NULL,
	nome_marca VARCHAR(10) NOT NULL,
	
	CONSTRAINT pk_marca_carro
		PRIMARY KEY(cod_marca)
);

CREATE TABLE tabela_carro(
	cod_tabela INTEGER NOT NULL,
	desc_tabela VARCHAR(20) NOT NULL,
	valor_tabela NUMERIC(6,2) NOT NULL,
	
	CONSTRAINT pk_tabela
		PRIMARY KEY (cod_tabela)
);

CREATE TABLE modelo_carro(
	cod_modelo INTEGER NOT NULL,
	nome_modelo VARCHAR(10) NOT NULL,
	cod_marca_m INTEGER NOT NULL,
	
	CONSTRAINT pk_modelo_carro
		PRIMARY KEY(cod_modelo),
		
	CONSTRAINT fk_modelo_marca
		FOREIGN KEY(cod_marca_m)
		REFERENCES marca_carro(cod_marca)
);

CREATE TABLE telefone_cliente_carro(
	cod_cliente_tc INTEGER NOT NULL,
	telefone_cliente_carro CHAR(10) NOT NULL,
	
	CONSTRAINT pk_telefone_cliente_carro
		PRIMARY KEY(cod_cliente_tc, telefone_cliente_carro),
		
	CONSTRAINT fk_tc_cliente_carro
		FOREIGN KEY (cod_cliente_tc)
		REFERENCES cliente_carro(cod_cliente)
);

CREATE TABLE carro( 
	placa CHAR(8) NOT NULL,
	cod_cliente_c INTEGER NOT NULL,
	cod_modelo_c INTEGER NOT NULL,
	ano_fabricacao CHAR(4) NOT NULL,
	
	CONSTRAINT pk_carro
		PRIMARY KEY (placa),
		
	CONSTRAINT fk_carro_cliente
		FOREIGN KEY (cod_cliente_c)
		REFERENCES cliente_carro (cod_cliente),
	
	CONSTRAINT fk_carro_modelo
		FOREIGN KEY(cod_modelo_c)
		REFERENCES modelo_carro(cod_modelo)

);

 CREATE TABLE produto_carro (
	cod_fornecedor_p INTEGER NOT NULL,
	cod_produto INTEGER NOT NULL,
	desc_produto VARCHAR(30) NOT NULL,
	valor_compra NUMERIC(6,2) NOT NULL,
	estoque INTEGER NOT NULL,
	valor_venda NUMERIC(6,2) NOT NULL,
	
	CONSTRAINT pk_produto
		PRIMARY KEY(cod_fornecedor_p, cod_produto),
		
	CONSTRAINT fk_produto_fornecedor
		FOREIGN KEY(cod_fornecedor_p)
		REFERENCES fornecedor_carro(cod_fornecedor)
);

CREATE TABLE os_carro( 
	num_os INTEGER NOT NULL,
	cod_cliente_os INTEGER NOT NULL,
	placa_os CHAR(8) NOT NULL,
	data_inicio DATE NOT NULL,
	data_fim DATE NOT NULL,
	total_os NUMERIC(7,2) NOT NULL,
	
	CONSTRAINT pk_os_carro
		PRIMARY KEY(num_os),
		
	CONSTRAINT fk_os_carro_cliente
		FOREIGN KEY(cod_cliente_os)
		REFERENCES cliente_carro (cod_cliente),
		
	CONSTRAINT fk_os_carro_c
		FOREIGN KEY(placa_os)
		REFERENCES carro(placa)
);

CREATE TABLE item_os_carro (
	num_os_ios INTEGER NOT NULL,
	cod_tabela_ios INTEGER NOT NULL,
	valor_item NUMERIC(6,2) NOT NULL,
	quantidade INTEGER NOT NULL,
	
	CONSTRAINT pk_item_os
		PRIMARY KEY(num_os_ios, cod_tabela_ios),
		
	CONSTRAINT fk_item_os_os
		FOREIGN KEY(num_os_ios)
		REFERENCES os_carro(num_os),
		
	CONSTRAINT fk_item_os_tabela
		FOREIGN KEY(cod_tabela_ios)
		REFERENCES tabela_carro(cod_tabela)
);

CREATE TABLE utiliza_carro (
	num_os_u INTEGER NOT NULL,
	cod_tabela_u INTEGER NOT NULL,
	cod_fornecedor_u INTEGER NOT NULL,
	cod_produto_u INTEGER NOT NULL,
	quantidade_utilizada INTEGER NOT NULL,
		
	CONSTRAINT pk_utiliza
		PRIMARY KEY(num_os_u, cod_tabela_u, cod_fornecedor_u, cod_produto_u),
		
	CONSTRAINT fk_utiliza_item_os
		FOREIGN KEY(num_os_u, cod_tabela_u)
		REFERENCES item_os_carro(num_os_ios, cod_tabela_ios),
		
	CONSTRAINT fk_utiliza_item_produto
		FOREIGN KEY(cod_fornecedor_u,cod_produto_u)
		REFERENCES produto_carro(cod_fornecedor_p,cod_produto)
);


