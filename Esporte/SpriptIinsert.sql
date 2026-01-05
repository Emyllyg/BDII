insert into Marca values
	(null,'Nike'),
    (null,'Adidas'),
    (null,'Rebook'),
    (null,'Wilson'),
    (null,'Speedy'),
    (null,'Butterfly');
    
    select * from marca;
    
    insert into Categoria values
	(null,'Confecção'),
    (null,'Calçados'),
    (null,'Bolas'),
    (null,'Natação'),
    (null,'Tênis'),
    (null,'Tenis de mesa');
    
    select * from categoria;
    
    insert into Unidade values
	(null,'Peça'),
    (null,'Par'),
    (null,'Gramas'),
    (null,'Litro'),
    (null,'Caixa'),
    (null,'Cartela');
    
    select * from Unidade;
    
    insert into Produto values
    (null, 'Camisa Brasil'                							, 100.00, 160.00, 18, 6, 1, 1, 1, null),
	(null, 'Bola Adidas Copa 2010'         							, 150.00, 240.00, 2 , 3, 3, 2, 1, null),
	(null, 'Camisa França II'                                   	, 110.00, 170.00, 1 , 2, 1, 2, 1, null),
    (null, 'Bola de Tênis de Mesa Profissional c/6'             	, 20.00 , 32.00 , 12, 6, 6, 6, 6, null),
    (null, 'Bola de Tênis c/3'              						, 11.00 , 180.00, 4 , 6, 5, 4, 5, null),
    (null, 'Raquete de Tênis Profissional'              			, 280.00, 460.00, 2 , 2, 5, 4, 1, null);
    
    select * from Produto;
    
    -- apagar a tabela produto
    drop table produto;
    
    -- apaga a tabela marca
    drop table marca;
    
    -- apaga a tabela categoria
    drop table categoria;
    
       -- apaga a tabela unidade
    drop table unidade;
    
    
    

    
    