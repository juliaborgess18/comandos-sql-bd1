/*Faça o comando para adicionar a coluna 
desconto do tipo NUMERIC(7,2) 
NOT NULL na tabela Participante */

ALTER TABLE participante
    ADD desconto NUMERIC(7,2) NOT NULL; -- passando a coluna diretamente para NOT NULL
    
ALTER TABLE participante
    DROP COLUMN desconto;

ALTER TABLE participante
    ADD desconto NUMERIC(7,2) NULL; -- supondo que a coluna já tenha valores cadastrados

UPDATE participante
    SET desconto = 0;

ALTER TABLE participante
    ALTER COLUMN desconto SET NOT NULL;
    
/*No dia 16/05/2016 houve um erro no sistema que gerou a 
informação na coluna valor_cobrado da tabela 
Participante errado.
Este valor deveria ser o valor que está na coluna valor_pacote da tabela Pacote. 
Faça o comando para acertar este erro que só
ocorreu nos pagamentos (data_pagamento da tabela Participante) do dia 
16/05/2016.*/
UPDATE participante p
    SET valor_cobrado = pac.valor_pacote -- Apenas a coluna da direita precisa ser referenciada
    FROM mergulho m,
         pacote pac
    WHERE p.cod_pacote_p = m.cod_pacote_m
    AND p.data_mergulho_p = m.data_mergulho_m
    AND p.hora_mergulho_p = m.hora_mergulho_m
    AND m.cod_pacote_m = pac.cod_pacote
    AND p.data_pagamento = '16/05/2016';
   
/*A empresa deseja excluir um Pacote que tem o local de mergulho 
(local_mergulho na tabela Pacote) com o nome
TRINDADE. Faça o comando para excluir, sem que haja erros. */   
   
DELETE FROM participante p -- Deletando todos os participante com local_mergulho = 'TRINDADE'
	USING mergulho m,
 		  pacote pac,
 		  local l
 	WHERE p.cod_pacote_p = m.cod_pacote_m
 	AND p.data_mergulho_p = m.data_mergulho_m
 	AND p.hora_mergulho_p = m.hora_mergulho_m
 	AND m.cod_pacote_m = pac.cod_pacote
 	AND pac.local_mergulho = l.cod_local
 	AND l.nome_local = 'TRINDADE';
   
DELETE FROM mergulho m -- Deletando todos os mergulhos com local_mergulho = 'TRINDADE'
	USING pacote pac,
	local l
	WHERE m.cod_pacote_m = pac.cod_pacote
	AND pac.local_mergulho = l.cod_local
	AND l.nome_local = 'TRINDADE';
   
DELETE FROM pacote pac -- Deletando todos os pacotes com local_mergulho = 'TRINDADE'
	USING local l
	WHERE pac.local_mergulho = l.cod_local	
	AND l.nome_local = 'TRINDADE';

/*É necessário aumentar o valor do pacote (valor_pacote na tabela Pacote) 
 em 15% para os seguintes nomes
(nome_tipo_mergulho na tabela Tipo_Mergulho) de tipos de mergulho: 
Especial, Super Especial e Caverna. (Utilizar a
cláusula IN) */

UPDATE pacote p 
	SET valor_pacote = p.valor_pacote * 1.15
	FROM tipo_mergulho tm
	WHERE p.cod_tipo_mergulho_p = tm.cod_tipo_mergulho 
	AND tm.nome_tipo_mergulho IN ('Especial', 'Super Especial', 'Caverna') 
   
   
   
   

