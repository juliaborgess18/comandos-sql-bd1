--Faça o comando para adicionar a coluna valor_total_item do tipo NUMERIC(8,2) 
--NOT NULL na tabela Item_OS, sabendo
--que a referida tabela já possui registros cadastrados e que o valor dessa 
--nova coluna é a multiplicação ente valor_item e
--quantidade, ambas colunas da tabela Item_OS. 

ALTER TABLE item_os_carro 
	ADD COLUMN valor_total_item NUMERIC (8,2) NULL; 
	
UPDATE item_os_carro ios
	SET valor_total_item = ios.valor_total_item * ios.quantidade;
	
ALTER TABLE item_os_carro 
	ALTER COLUMN valor_total_item SET NOT NULL; 
	
--No dia 13/10/2016 foi detectado um erro no sistema que gerou a informação 
--na coluna valor_item da tabela Item_OS errado. O erro, relacionado ao cálculo 
--de impostos, só ocorreu nos Item das OS 
--(data_inicio da tabela OS) entre os dias 13/09/2016 e 13/10/2016 
--(utilizar o BETWEEN) e para Clientes com a UF (uf da tabela Cliente) 
--igual a ES. Este valor deverá ser igual ao valor que está na coluna 
--valor_tabela da tabela Tabela. Faça o comando para acertar este erro

UPDATE item_os_carro ioc 
	SET valor_item = t.valor_tabela
	FROM os_carro oc,
		 tabela_carro t,
		 cliente_carro c
	WHERE ioc.cod_tabela_ios = t.cod_tabela
		AND ioc.num_os_ios = oc.num_os 
		AND oc.cod_cliente_os = c.cod_cliente
		AND oc.data_inicio BETWEEN '13/09/2016' AND '13/10/2016' 
		AND c.uf = 'ES'

--Você recebeu um memorando da Direção da Empresa solicitando a exclusão 
--da OS com o número 123456. Faça o comando para excluir todas as informações 
--relacionadas a esta OS, sem que haja erros, assegurando que, caso haja algum 
--problema na operação, o banco poderá voltar ao estágio anterior à operação. 
--Observe que antes de excluir uma OS, os produtos utilizados
--na mesma devem voltar para o estoque (coluna estoque na tabela Produto)


BEGIN TRANSACTION;
	UPDATE produto_carro p 
		SET estoque = p.estoque + u.quantidade_utilizada
		FROM utiliza_carro u
		WHERE p.cod_fornecedor_p = u.cod_fornecedor_u
			AND p.cod_produto = u.cod_produto_u
			AND u.num_os_u = 123456;

		DELETE FROM utiliza_carro u
			WHERE u.num_os_u = 123456;

		DELETE FROM item_os_carro ios
			WHERE ios.num_os_ios = 123456;

		DELETE FROM os_carro o
			WHERE o.num_os = 123456;
COMMIT;

--Foi necessário oferecer um curso para os mecânicos para que possam trabalhar 
--com carros de todas as marcas que o nome da
--marca (nome_marca na tabela Marca) comesse com ABC. Como o curso teve um 
--custo elevado, ficou decidido que as OS
--associadas a carros de nome de marcas que começam com ABC e das seguintes UF 
--dos clientes (uf na tabela Cliente) ES, RJ
--e SP (Utilizar a cláusula IN), devem ter seu valor (total_os na tabela OS) 
--acrescido em 25% (1.25). Faça o comando para
--implementar esse aumento
		
UPDATE os_carro oc 
	SET total_os = oc.total_os * 1.25
	FROM carro c,
		 modelo_carro mc,
		 marca_carro mac,
		 cliente_carro clc
	WHERE oc.placa_os = c.placa  
		AND c.cod_modelo_c = mc.cod_modelo 
		AND mc.cod_marca_m = mac.cod_marca 
		AND oc.cod_cliente_os = clc.cod_cliente 
		AND mac.nome_marca LIKE 'ABC%'
		AND clc.uf IN ('ES','RJ','SP');









