--Faça o comando para adicionar a coluna imposto_ip do tipo 
--NUMERIC(5,2) NOT NULL na tabela itens_pedido, sabendo
--que a referida tabela já possui registros cadastrados e que 
--o valor dessa nova coluna é correspondente 4,5% do valor da
--coluna valor_ip da tabela itens_pedido

ALTER TABLE itens_pedido 
	ADD COLUMN imposto_ip NUMERIC(5,2) NULL; 
	
UPDATE itens_pedido 
	SET imposto_ip = valor_ip * 0.045; 
	
ALTER TABLE itens_pedido 
	ALTER COLUMN imposto_ip SET NOT NULL;
	
--Por algum problema no sistema, a coluna valor_ip na tabela 
--itens_pedido foi gravada com um valor errado. Foi detectado que
--este problema ocorreu entre as datas 22/10/2018 até 30/10/2018 
--(utilizar BETWEEN) e apenas com os itens de pedido
--realizados por profissionais terceiros (tipo_vinculo na tabela 
--profissional com o valor T). O dono do salão solicitou que fosse
--acertado este problema, colocando o valor correto na coluna 
--valor_ip que está na coluna valor_servprod da tabela
--catalogo_venda. Faça o comando para acertar este erro
UPDATE itens_pedido ip
	SET valor_ip = cv.valor_servprod 
	FROM catalogo_venda cv,
		 profissional p,
		 pedido pe
	WHERE ip.cod_servprod_ip = cv.cod_servprod
		AND ip.cod_filial_ip = p.cod_filial_p 
		AND ip.cpf_ip = p.cpf
		AND p.tipo_vinculo = 'T'
		AND ip.cod_filial_ip = pe.cod_filial_p 
		AND ip.cod_pedido_ip = pe.cod_pedido 
		AND pe.data_pedido BETWEEN '22/10/2018' AND '30/10/2018'
		
--URGENTE!!!! Foi solicitado a você a exclusão, sem erros, de todos 
--os pedidos realizados de qualquer especialidade que o
--nome (nome_especialidade na tabela especialidade) que comesse 
--com a sequencia de letras ‘PED’. Isso deverá ser feito
--levando em conta que uma das operações pode falhar e que, caso 
--isso ocorra, o banco de dados deverá estar íntegro, sem
--erros. Faça o comando para excluir estes pedidos, sem que haja 
--erros, assegurando que, caso haja algum problema na
--operação, o banco poderá voltar ao estágio anterior à operação 
--(lembrar do conceito da Unidade Lógica de Trabalho)

		
--Função criada pelo professor
BEGIN TRANSACTION;

	CREATE TABLE pedido_temp AS
	SELECT p.cod_filial_p,
			p.cod_pedido
	FROM pedido p,
		itens_pedido ip,
		catalogo_venda cv,
		especialidade e
	WHERE p.cod_filial_p = ip.cod_filial_ip
		AND p.cod_pedido = ip.cod_pedido_ip
		AND ip.cod_servprod_ip = cv.cod_servprod
		AND cv.especialidade = e.cod_especialidade
		AND e.nome_especialidade LIKE 'PED%';

	DELETE FROM itens_pedido ip
		USING catalogo_venda cv,
		especialidade e
		WHERE ip.cod_servprod_ip = cv.cod_servprod
		AND cv.especialidade = e.cod_especialidade
		AND e.nome_especialidade LIKE 'PED%';

	DELETE FROM pedido p
		USING pedido_temp pt
	WHERE p.cod_filial_p = pt.cod_filial_p
		AND p.cod_pedido = pt.cod_pedido;

	DROP TABLE IF EXISTS pedido_temp;

COMMIT;

--Um valor, que faz parte do custo, associado aos nomes das 
--Unidades Federativas Rio de Janeiro e Bahia (utilizar IN) dos
--clientes do salão, teve seu valor reajustado para mais 12%. 
--Buscando compensar este aumento de custo, foi solicitado a você
--que o valor dos itens de cada pedido (valor_ip na tabela 
--itens_pedido), dos clientes dessas UF, fosse aumentado em 11%.
--Faça o comando para implementar esse aumento

UPDATE itens_pedido ip
	SET valor_ip = ip.valor_ip * 1.11
	FROM 
		pedido p,
		cliente c,
		cidade ci,
		uf u
	WHERE ip.cod_filial_ip = p.cod_filial_p 
		AND ip.cod_pedido_ip = p.cod_pedido 
		AND p.cod_cliente_p = c.cod_cliente 
		AND c.cidade_cliente = ci.cod_cidade 
		AND ci.uf = u.sigla_uf 
		AND u.nome_uf IN ('Rio de Janeiro','Bahia')








