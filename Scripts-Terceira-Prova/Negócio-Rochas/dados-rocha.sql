INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (1,'Ardósia');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (2,'Arenito');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (3,'Basalto');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (4,'Calcário');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (5,'Conglomerado');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (6,'Gnaisse');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (7,'Granito');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (8,'Mármore');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (9,'Metassilitito');
INSERT INTO tipo_rocha (cod_tipo_rocha,nome_tipo_rocha) VALUES (10,'Quartzito');

INSERT INTO UF (sigla_uf,nome_uf)
   VALUES ('ES','Espirito Santo');
INSERT INTO UF (sigla_uf,nome_uf)
   VALUES ('RJ','Rio de Janeiro');


INSERT INTO cidade (cod_cidade, nome_cidade,sigla_uf)
   VALUES (1,'Cachoeiro de Itapemirim','ES');
INSERT INTO cidade (cod_cidade, nome_cidade,sigla_uf)
   VALUES (2,'Rio de Janeiro','RJ');


INSERT INTO cor (cod_cor,nome_Cor) VALUES (1,'Amarelo');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (2,'Azul');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (3,'Bege');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (4,'Branco');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (5,'Creme');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (6,'Cinza');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (7,'Ferrugem');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (8,'Marrom');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (9,'Movimentado');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (10,'Multicolorido');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (11,'Preto');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (12,'Rosa');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (13,'Verde');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (14,'Vermelho');
INSERT INTO cor (cod_cor,nome_Cor) VALUES (15,'Vinho');

-- Ardósia        -- Cinza Ferrugem Preta Verde Vinho     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (1,6);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (1,'ARDÓSIA CINZA',1,6,'../fotos/r1.jpg',0,0);
--MG  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (1,7);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (2,'ARDÓSIA FERRUGEM',1,7,'../fotos/r2.jpg',0,0); 
--MG

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (1,11);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (3,'ARDÓSIA PRETA',1,11,'../fotos/r3.jpg',0,0);
--MG
 
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (1,13);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (4,'ARDÓSIA VERDE',1,13,'../fotos/r4.jpg',0,0); 
--MG

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (1,15);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (5,'ARDÓSIA VINHO',1,15,'../fotos/r5.jpg',0,0); 
--MG

--Arenito        -- Rosa     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (2,12);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (6,'PINK BRASIL',2,12,'../fotos/r6.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (7,'ROSA BAHIA',2,12,'../fotos/r7.jpg',0,0); 
--BA

--Basalto        -- Preto     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (3,11);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (8,'PRETO SANTA VITÓRIA',3,11,'../fotos/r8.jpg',0,0); 
--MG

--Calcário       -- Creme     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (4,5);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (9,'PEDRA CARIRI CREME',4,5,'../fotos/r9.jpg',0,0); 
--CE

--Conglomerado   -- Marrom Verde Vermelho     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (5,8);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (10,'CHOCOLATE BRASIL',5,8,'../fotos/r10.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (11,'COCKTAIL BROWN',5,8,'../fotos/r11.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (12,'MANTEGNA',5,8,'../fotos/r12.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (13,'PALADIUM',5,8,'../fotos/r13.jpg',0,0);  
--CE

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (5,13);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (14,'CARAVAGGIO',5,13,'../fotos/r14.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (15,'MARINACE',5,13,'../fotos/r15.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (16,'TROPICAL GAUGUIN',5,13,'../fotos/r16.jpg',0,0);  
--RN
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (17,'VERDE MARINACE',5,13,'../fotos/r17.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (18,'VERDE REY IMPERIAL',5,13,'../fotos/r18.jpg',0,0);  
--PB
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (19,'VESÚVIO BAHIA',5,13,'../fotos/r19.jpg',0,0);  
--BA


INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (5,14);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (20,'RHODIUM BAHIA',5,14,'../fotos/r20.jpg',0,0); 
--BA

--Gnaisse        -- Amarelo Cinza     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (6,1);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (21,'PEDRA MADEIRA',6,1,'../fotos/r21.jpg',0,0); 
--RJ

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (6,6);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (22,'FLORAL PÁDUA PRATA',6,6,'../fotos/r22.jpg',0,0);  
--RJ
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (23,'PEDRA PADUANA PRATA',6,6,'../fotos/r23.jpg',0,0);  
--RJ

--Granito        -- Amarelo Azul Branco Cinza Movimentado Multicolorido Preto Rosa Verde Vermelho     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,1);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (24,'AMARELO CAPRI',7,1,'../fotos/r24.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (25,'AMARELO FLORENÇA',7,1,'../fotos/r25.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (26,'AMARELO GEGRÉGE',7,1,'../fotos/r26.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (27,'AMARELO GOLDEN KING',7,1,'../fotos/r27.jpg',0,0); 
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (28,'AMARELO ICARAÍ',7,1,'../fotos/r28.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (29,'AMARELO MASSAPÊ',7,1,'../fotos/r29.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (30,'AMARELO OURO BRASIL',7,1,'../fotos/r30.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (31,'AMARELO SANTA CECÍLIA CLÁSSICO',7,1,'../fotos/r31.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (32,'AMARELO VENEZIANO',7,1,'../fotos/r32.jpg',0,0);
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (33,'AMÊNDOA JACIGUÁ',7,1,'../fotos/r33.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (34,'CARIOCA GOLD',7,1,'../fotos/r34.jpg',0,0); 
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (35,'CREME MARFIM',7,1,'../fotos/r35.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (36,'DOURADO CARIOCA',7,1,'../fotos/r36.jpg',0,0); 
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (37,'GIALLO BRASIL',7,1,'../fotos/r37.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (38,'GIALLO NAPOLEONE GOLDEN',7,1,'../fotos/r38.jpg',0,0);
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (39,'GIALLO VENEZIA FIORITO',7,1,'../fotos/r39.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (40,'GOLDEN SEA',7,1,'../fotos/r40.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (41,'GOLDEN SUN',7,1,'../fotos/r41.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (42,'JUPARANÃ CASABLANCA',7,1,'../fotos/r42.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (43,'JUPARANÁ MONTIEL',7,1,'../fotos/r43.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (44,'JUPARANÃ PERSA',7,1,'../fotos/r44.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (45,'JUPARANÃ TALPIC',7,1,'../fotos/r45.jpg',0,0);
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (46,'JUPARANÃ WAVE',7,1,'../fotos/r46.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (47,'LAPIDUS',7,1,'../fotos/r47.jpg',0,0);
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (48,'NOVO JUPARANÃ',7,1,'../fotos/r48.jpg',0,0);  
--MG

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,2);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (49,'AZUL BAHIA',7,2,'../fotos/r49.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (50,'AZUL FANTÁSTICO',7,2,'../fotos/r50.jpg',0,0);  
--SP
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (51,'AZUL PARAMIRIM',7,2,'../fotos/r51.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (52,'AZUL QUATI',7,2,'../fotos/r52.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (53,'AZUL SIGMA',7,2,'../fotos/r53.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (54,'BLUE STAR',7,2,'../fotos/r54.jpg',0,0);
--RO
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (55,'COBALT BLUE',7,2,'../fotos/r55.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (56,'CREME AZUL BAHIA',7,2,'../fotos/r56.jpg',0,0);  
--BA


INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,4);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (57,'ARABESCO',7,4,'../fotos/r57.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (58,'BIANCASTRO',7,4,'../fotos/r58.jpg',0,0); 
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (59,'BRANCO BAHIA',7,4,'../fotos/r59.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (60,'BRANCO CACATUA',7,4,'../fotos/r60.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (61,'BRANCO CEARÁ',7,4,'../fotos/r61.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (62,'BRANCO COTTON',7,4,'../fotos/r62.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (63,'BRANCO CRISTAL QUARTZO',7,4,'../fotos/r63.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (64,'BRANCO DÉSIREE',7,4,'../fotos/r64.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (65,'BRANCO FUJI',7,4,'../fotos/r65.jpg',0,0);  
--RN
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (66,'BRANCO GAIVOTA',7,4,'../fotos/r66.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (67,'BRANCO IMACULADA',7,4,'../fotos/r67.jpg',0,0);  
--PB
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (68,'BRANCO MARFIM',7,4,'../fotos/r68.jpg',0,0);
--ES  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (69,'BRANCO MOON LIGHT',7,4,'../fotos/r69.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (70,'BRANCO PRIMATA',7,4,'../fotos/r70.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (71,'BRANCO ROMANO',7,4,'../fotos/r71.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (72,'BRANCO SAARA',7,4,'../fotos/r72.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (73,'BRANCO SANTA QUITÉRIA',7,4,'../fotos/r73.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (74,'BRANCO SIENA',7,4,'../fotos/r74.jpg',0,0); 
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (75,'BRANCO SÃO PAULO',7,4,'../fotos/r75.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (76,'BRANCO TROPICAL',7,4,'../fotos/r76.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (77,'DESENHADO',7,4,'../fotos/r77.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (78,'HIMALAIA WHITE',7,4,'../fotos/r78.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (79,'ICARAÍ LIGHT',7,4,'../fotos/r79.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (80,'KASHMIR BAHIA',7,4,'../fotos/r80.jpg',0,0);
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (81,'MACROPONTO',7,4,'../fotos/r81.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (82,'MACROPONTO II',7,4,'../fotos/r82.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (83,'MICROPONTO',7,4,'../fotos/r83.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (84,'MONT BLANC',7,4,'../fotos/r84.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (85,'OURO BRANCO',7,4,'../fotos/85.jpg',0,0);  
--AL
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (86,'SANTA CECÍLIA LIGHT',7,4,'../fotos/r86.jpg',0,0);  
--RJ
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (87,'SUPER BRANCO',7,4,'../fotos/r87.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (88,'WHITE BEE',7,4,'../fotos/r88.jpg',0,0);  
--CE


INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,6);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (89,'BEGE IPANEMA',7,6,'../fotos/r89.jpg',0,0); 
--ES 
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (90,'BRANCO PERNAMBUCO',7,6,'../fotos/r90.jpg',0,0);  
--PE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (91,'CINZA ANDORINHA',7,6,'../fotos/r91.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (92,'CINZA BRESSAN',7,6,'../fotos/r92.jpg',0,0); 
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (93,'CINZA CASTELO',7,6,'../fotos/r93.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (94,'CINZA CORUMBÁ',7,6,'../fotos/r94.jpg',0,0);
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (95,'CINZA MAUÁ',7,6,'../fotos/r95.jpg',0,0);  
--SP
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (96,'CINZA PRATA',7,6,'../fotos/r96.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (98,'CINZA PRATINHA',7,6,'../fotos/r98.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (99,'GUARÁ',7,6,'../fotos/r99.jpg',0,0);  
--PB
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (100,'ITAERA',7,6,'../fotos/r100.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (101,'ÍNDIGO',7,6,'../fotos/r101.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (102,'PRATA DA AMAZÔNIA',7,6,'../fotos/r102.jpg',0,0);
--MT
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (103,'PRATA IMPERIAL',7,6,'../fotos/r103.jpg',0,0);  
--ES
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (104,'PRATA INTERLAGOS',7,6,'../fotos/r104.jpg',0,0); 
--SP
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (105,'TAPEROÁ',7,6,'../fotos/r105.jpg',0,0);  
--PB
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (106,'TIFFANY',7,6,'../fotos/r106.jpg',0,0);  
--MG

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,9);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (107,'BEIJA-FLOR',7,6,'../fotos/r107.jpg',0,0); 
--BA 
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (108,'BORDEAUX BAHIA',7,6,'../fotos/r108.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (109,'CARNAVAL',7,6,'../fotos/r109.jpg',0,0);  
--PE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (110,'CASABLANCA',7,6,'../fotos/r110.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (111,'COLIBRI',7,6,'../fotos/r111.jpg',0,0);
--BA 
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (112,'COLISEUM GREEN',7,6,'../fotos/r112.jpg',0,0);  
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (113,'FALÉSIA',7,6,'../fotos/r113.jpg',0,0); 
--CE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (114,'FLAMINGO',7,6,'../fotos/r114.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (115,'GOLDEN SEA LIGHT',7,6,'../fotos/r115.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (116,'GRAMPÔLA',7,6,'../fotos/r116.jpg',0,0);  
--RN
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (117,'GUARIBA',7,6,'../fotos/r117.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (118,'JUPARANÁ NASKA',7,6,'../fotos/r118.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (119,'KINAWA BAHIA',7,6,'../fotos/r119.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (120,'MACAJUBA',7,6,'../fotos/r120.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (121,'MACAJUBA R4',7,6,'../fotos/r121.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (122,'MARACANÃ',7,6,'../fotos/r122.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (123,'MOGNO BAHIA',7,6,'../fotos/r123.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (124,'NERO PORTO ROSA',7,6,'../fotos/r124.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (125,'PACIFIC GREEN',7,6,'../fotos/r125.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (126,'PANTALEÃO',7,6,'../fotos/r126.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (127,'PRETO SOLIMÕES',7,6,'../fotos/r127.jpg',0,0);  
--RO
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (128,'RELÍQUIA',7,6,'../fotos/r128.jpg',0,0);  
--PE
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (129,'ROSA BEATRIZ',7,6,'../fotos/r129.jpg',0,0);  
--MG
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (130,'ROSELINE',7,6,'../fotos/r130.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (131,'ROSELISE',7,6,'../fotos/r131.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (132,'TIGRATO',7,6,'../fotos/r132.jpg',0,0);  
--BA
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (133,'VERDE FUJI',7,6,'../fotos/r133.jpg',0,0);  
--RN

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,10);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (134,'AMAZON FLOWER',7,10,'../fotos/r134.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (135,'AMÊNDOA CHOCOLATE',7,10,'../fotos/r135.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (136,'MULTICOLOR',7,10,'../fotos/r136.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (137,'MULTICOLOR ROSA',7,10,'../fotos/r137.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (138,'RED SYMPHONY',7,10,'../fotos/r138.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (139,'ROSA SILVESTRE',7,10,'../fotos/r139.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (140,'TROPICAL BAHIA',7,10,'../fotos/r140.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (141,'VIOLETA',7,10,'../fotos/r141.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (142,'YELLOW SYMPHONY',7,10,'../fotos/r142.jpg',0,0);  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,11);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (143,'ARACRUZ BLACK',7,11,'../fotos/r143.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (144,'OURO NEGRO',7,11,'../fotos/r144.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (145,'PRETO ABSOLUTO',7,11,'../fotos/r145.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (146,'PRETO CAFÉ DE MINAS',7,11,'../fotos/r146.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (147,'PRETO CEARÁ',7,11,'../fotos/r147.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (148,'PRETO ÁGUIA BRANCA',7,11,'../fotos/r148.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (149,'PRETO ITAPIÚNA',7,11,'../fotos/r149.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (150,'PRETO SÃO GABRIEL',7,11,'../fotos/r150.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (151,'PRETO SÃO MARCOS',7,11,'../fotos/r151.jpg',0,0);  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,12);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (152,'BEGE DUNAS',7,12,'../fotos/r152.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (153,'FLORENÇA',7,12,'../fotos/r153.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (154,'HAVANA',7,12,'../fotos/r154.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (155,'JUPARAÍBA',7,12,'../fotos/r155.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (156,'JUPARANÁ CLÁSSICO NOVO',7,12,'../fotos/r156.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (157,'JUPARANÁ CORAL',7,12,'../fotos/r157.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (158,'JUPARANÁ DELICATO',7,12,'../fotos/r158.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (159,'JUPARANÁ ROSADO NOVO',7,12,'../fotos/r159.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (160,'JUPARANÃ SALMÃO',7,12,'../fotos/r160.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (161,'OURO DO DESERTO',7,12,'../fotos/r161.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (162,'ROSA CEDRO',7,12,'../fotos/r162.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (163,'ROSA GOITIS',7,12,'../fotos/r163.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (164,'ROSA IMPERIAL',7,12,'../fotos/r164.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (165,'ROSA IRACEMA',7,12,'../fotos/r165.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (166,'ROSA TUPIM',7,12,'../fotos/r166.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (167,'VERMELHO MEDINA',7,12,'../fotos/r167.jpg',0,0);  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,13);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (168,'GREEN GALAXY',7,13,'../fotos/r168.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (169,'MERUOCA CLÁSSICO',7,13,'../fotos/r169.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (170,'RAIN FOREST',7,13,'../fotos/r170.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (171,'VERDE ARARA',7,13,'../fotos/r171.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (172,'VERDE BAHIA',7,13,'../fotos/r172.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (173,'VERDE BAHIA',7,13,'../fotos/r173.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (174,'VERDE BARROCO',7,13,'../fotos/r174.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (175,'VERDE BUTTERFLY',7,13,'../fotos/r175.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (176,'VERDE CANDEIAS',7,13,'../fotos/r176.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (177,'VERDE CEARÁ',7,13,'../fotos/r177.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (178,'VERDE DOURATO',7,13,'../fotos/r178.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (179,'VERDE ECOLOGIA',7,13,'../fotos/r179.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (180,'VERDE EUCALIPTO',7,13,'../fotos/r180.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (181,'VERDE FONTEIN',7,13,'../fotos/r181.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (182,'VERDE FOUNTAIN',7,13,'../fotos/r182.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (183,'VERDE IMPERIAL',7,13,'../fotos/r183.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (184,'VERDE IMPERIAL',7,13,'../fotos/r184.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (185,'VERDE LABRADOR',7,13,'../fotos/r185.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (186,'VERDE LAVRAS',7,13,'../fotos/r186.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (187,'VERDE MERUOCA',7,13,'../fotos/r187.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (188,'VERDE MONTERREY',7,13,'../fotos/r188.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (189,'VERDE PAVÃO',7,13,'../fotos/r189.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (190,'VERDE SAVANA',7,13,'../fotos/r190.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (191,'VERDE SENNA',7,13,'../fotos/r191.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (192,'VERDE SÃO FRANCISCO',7,13,'../fotos/r192.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (193,'VERDE TUNAS',7,13,'../fotos/r193.jpg',0,0);  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (7,14);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (194,'AMAZON STAR',7,14,'../fotos/r194.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (195,'LILÁS GERAIS',7,14,'../fotos/r195.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (196,'MONTE SANTO',7,14,'../fotos/r196.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (197,'RED VITÓRIA',7,14,'../fotos/r197.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (198,'ROSA ALGODÃO',7,14,'../fotos/r198.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (199,'TROPICAL GUARANY',7,14,'../fotos/r199.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (200,'VERMELHO BRAGANÇA',7,14,'../fotos/r200.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (201,'VERMELHO CAPÃO BONITO',7,14,'../fotos/r201.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (202,'VERMELHO FILOMENA',7,14,'../fotos/r202.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (203,'VERMELHO IPANEMA',7,14,'../fotos/r203.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (204,'VERMELHO VENTURA',7,14,'../fotos/r204.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (205,'VERMELHO VENTUROSA',7,14,'../fotos/r205.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (206,'VINO BAHIA',7,14,'../fotos/r206.jpg',0,0);  


--Mármore        -- Bege Branco Creme Rosa     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (8,3);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (207,'BEGE BAHIA',8,3,'../fotos/r207.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (208,'BEGE SAN MARINO',8,3,'../fotos/r208.jpg',0,0);  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (8,4);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (209,'BRANCO CLÁSSICO',8,4,'../fotos/r209.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (210,'BRANCO ITALVA',8,4,'../fotos/r210.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (211,'BRANCO PARANÁ',8,4,'../fotos/r211.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (212,'CANDELÁRIA WHITE',8,4,'../fotos/r212.jpg',0,0);  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (8,5);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (213,'CREMA PORTO FINO',8,5,'../fotos/r213.jpg',0,0); 

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (8,12);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (214,'IMPERIAL PINK',8,12,'../fotos/r214.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (215,'ROSA PATAMUTÉ',8,12,'../fotos/r215.jpg',0,0);  

--Metassilitito  -- Marrom     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (9,8);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (216,'RAVEL',9,8,'../fotos/r216.jpg',0,0); 

--Quartzito      -- Azul Branco     
INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (10,2);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (217,'AZUL BOQUIRA',10,2,'../fotos/r217.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (218,'AZUL IMPERIAL',10,2,'../fotos/r218.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (219,'AZUL MACAÚBAS',10,2,'../fotos/r219.jpg',0,0);  

INSERT INTO tipo_rocha_cor (cod_tipo_rocha, cod_cor) VALUES (10,4);
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (220,'BRANCO SANTA MARIA',10,4,'../fotos/r220.jpg',0,0);  
INSERT INTO rocha (cod_rocha,nome_rocha,cod_tipo_rocha,cod_cor,IMG_foto,valor_compra,valor_venda) VALUES (221,'BRANCO SÃO TOMÉ',10,4,'../fotos/r221.jpg',0,0);  

update rocha set valor_compra = cod_rocha, valor_venda = cod_rocha * 2;

INSERT INTO tipo_servico (cod_tipo_servico,desc_tipo_servico)
   VALUES (1,'Tipo Servico Teste');

INSERT INTO empresa (cod_empresa, nome_empresa, cod_cidade,tel1_empresa, tel2_empresa, email_empresa, cod_tipo_servico)
   VALUES (1,'Empresa 1', 1, '123','456','teste@teste.com',1);
INSERT INTO empresa (cod_empresa, nome_empresa, cod_cidade,tel1_empresa, tel2_empresa, email_empresa, cod_tipo_servico)
   VALUES (2,'Empresa 2', 2, '123','456','teste2@teste.com',1);

   
