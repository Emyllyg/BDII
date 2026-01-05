INSERT INTO funcionario (idfuncionario, sobrenome, nome, dataNasc, dataContratacao, endereco, cidade, pais, reportaPara) VALUES
(null,	'Silva', 		'João', 	'1985-08-12', 	'2010-04-01', 	'Rua das Palmeiras, 100', 	'São Paulo', 		'Brasil', 	NULL), -- Gerente (não reporta a ninguém)
(null,	'Santos', 		'Maria',	'1990-03-25', 	'2018-06-15', 	'Avenida Brasil, 1200', 	'São Paulo', 		'Brasil', 	1), -- Reporta ao João
(null,	'Oliveira', 	'Carlos', 	'1983-07-19', 	'2015-09-23', 	'Rua dos Limoeiros, 220', 	'Campinas', 		'Brasil', 	1), -- Reporta ao João
(null,	'Costa', 		'Ana', 		'1992-11-10', 	'2020-01-01', 	'Rua da Paz, 56', 			'Rio de Janeiro', 	'Brasil', 	2), -- Reporta à Maria
(null,	'Pereira', 		'Lucas', 	'1995-05-30', 	'2021-07-19', 	'Rua do Sol, 70', 			'São Paulo', 		'Brasil', 	3); -- Reporta ao Carlos

select * from funcionario;

INSERT INTO cliente (idcliente, nomeContato, nomeEmpresa, emailContato, endereco, cidade, pais) VALUES
(null,	'Ricardo Oliveira', 	'Tech Imports Ltda', 	'ricardo@techimports.com', 			'Rua da Indústria, 250', 	      'São Paulo', 		 'Brasil'),
(null,	'Fernanda Costa', 		'Global Electronics', 	'fernanda@globalelectronics.com', 	'Avenida das Nações, 900', 	      'Rio de Janeiro',  'Brasil'),
(null,	'Carlos Mendes', 		'Mendes Corp', 			'carlos@mendes.com', 				'Rua do Comércio, 100', 	      'Belo Horizonte',  'Brasil'),
(null,	'Juliana Rocha', 		'Rocha Importações', 	'juliana@rochaimportacoes.com', 	'Rua das Flores, 150', 			  'Porto Alegre',    'Brasil'),
(null,	'Eduardo Lima', 		'Lima Trading', 		'eduardo@limatrading.com', 			'Rua dos Três, 80', 			   'Curitiba',       'Brasil');

select *  from cliente;

INSERT INTO categoria (idcategoria, nome, descricao, categoriaPaiid) VALUES
(null,	'Eletrônicos', 					'Produtos eletrônicos de consumo', 			NULL), -- Categoria raiz
(null,	'Acessórios de Smartphone', 	'Acessórios para celulares e tablets', 		1), -- Subcategoria de Eletrônicos
(null,	'Ferramentas', 					'Ferramentas manuais e elétricas', 			NULL), -- Categoria raiz
(null,	'Brinquedos', 					'Brinquedos e jogos importados',			NULL), -- Categoria raiz
(null,	'Carregadores e Cabos', 		'Carregadores, cabos e adaptadores', 		2); -- Subcategoria de Acessórios de Smartphone

select *  from categoria;

INSERT INTO produto (idproduto, nomeProduto, idcategoria, qtdeUnidade, precoUnitario, unidadeEstoque, descontinuado) VALUES
(null,	'Smartphone Xiaomi Redmi 9', 	1, 	10, 	799.99, 	100, 	FALSE), -- Produto eletrônico
(null,	'Carregador de Celular USB-C',	5, 	1, 		39.99, 		500, 	FALSE), -- Acessório
(null,	'Furadeira Elétrica 500W', 		3, 	1, 		159.99, 	50, 	FALSE), -- Ferramenta
(null,	'Drone de Controle Remoto', 	1, 	1, 		499.99, 	200, 	FALSE), -- Produto eletrônico
(null,	'Boneca Interativa', 			4, 	1, 		129.99, 	300, 	FALSE); -- Brinquedo

select *  from produto;

INSERT INTO compra (idcompra, idcliente, idfuncionario, precoTotal, dataCompra, dataEnvio, enderecoEnvio, cidadeEnvio, paisEnvio) VALUES
(null,	1, 	2, 	8399.90,   '2025-07-01 10:30:00', '2025-07-02 14:00:00', 'Rua das Indústrias, 500', 'São Paulo', 		'Brasil'),
(null,	2, 	3,	5599.80,   '2025-07-02 11:00:00', '2025-07-03 12:30:00', 'Avenida Brasil, 3000', 	'Rio de Janeiro', 	'Brasil'),
(null,	3, 	4, 	2000.00,   '2025-07-03 09:45:00', '2025-07-04 16:00:00', 'Rua do Comércio, 150', 	'Belo Horizonte', 	'Brasil'),
(null,	4, 	5, 	1599.99,   '2025-07-04 15:15:00', '2025-07-05 10:00:00', 'Rua das Flores, 200', 	'Porto Alegre', 	'Brasil'),
(null,	5, 	1, 	639.97,    '2025-07-05 13:00:00', '2025-07-06 11:00:00', 'Rua dos Três, 60', 		'Curitiba', 		'Brasil');

select *  from compra;

INSERT INTO itemCompra (idcompra, idproduto, precoUnitario, qtde) VALUES
(1, 1, 	799.99,  10), -- Compra de 10 smartphones Xiaomi
(1, 5, 	39.99, 	 10), -- Compra de 10 carregadores USB-C
(2, 2, 	159.99,  10), -- Compra de 10 furadeiras elétricas
(2, 3, 	499.99,  10), -- Compra de 10 drones
(3, 4, 	129.99,  10), -- Compra de 10 bonecas interativas
(4, 1, 	799.99,  2), -- Compra de 2 smartphones Xiaomi
(5,	3, 	39.99, 	 10); -- Compra de 10 carregadores USB-C

select *  from itemCompra;


-- Exercício 1: Todos os produtos

select * from produto;

-- Exercício 2: Produtos com preço unitario maior que 3,5

select nomeProduto from produto where precoUnitario >= 3.5;

-- Exercício 3: Produtos com condições específicas para categoria e preço

select * from produto where (idcategoria = 1 or idcategoria	= 5) and precoUnitario > 3.5;

-- Exercício 4: Produto e categorias

select p.nomeProduto, c.nome as nomeCategoria from produto p join categoria c on p.idcategoria = c.idcategoria;

-- Exercício 5: Compras e produtos

select ic.idcompra, p.nomeProduto, ic.precoUnitario, ic.qtde from itemCompra ic join produto p on ic.idproduto = p.idproduto;

-- Exercício 6: Compras e categorias
-- da relação dos itens de compra com produto
-- exibir id do item compra e nome da categoria

select distinct ic.idcompra, c.nome as nomeCategoria from itemCompra ic join produto p on ic.idproduto = p.idproduto join categoria c on p.idcategoria = c.idcategoria;

-- Exercício 7: Categorias ordenadas

select * from categoria order by nome asc;

-- Exercício 8: Funcionário classificados por data de nascimento

select sobrenome, nome, dataNasc from funcionario order by dataNasc desc;

-- Exercício 9: Produto classificados pelo número de unidades

select * from produto order by unidadeEstoque desc, nomeProduto asc;

-- Exercício 10: Preço médio unitário de cada categoria
-- calcular media (average)

select c.nome, avg(p.precoUnitario) as precoMedioUnitario from produto p join categoria c on p.idcategoria = c.idcategoria group by c.nome;

-- Exercício 11: Número de clientes por cidade (exeto Curitiba e Porto Alegre)
-- contar clientes e chamar de qtde de clientes (count)

select cidade, count(idcliente) as qtdeClientes from cliente where cidade <> 'Curitiba' and cidade <> 'Porto Alegre' group by cidade order by cidade asc;

-- Exercício 12: Número de produtos descontinuados por categoria 

select c.nome, count(p.idproduto) as qtdeProdutosDescontinuados from produto p join categoria c on p.idcategoria = c.idcategoria 
where p.descontinuado is true group by c.nome having count(idproduto) >=3 order by qtdeProdutosDescontinuados desc; 

-- Exercício 13: Funcionários com data de contrataçõa desconhecida

select sobrenome, nome from funcionario where dataContratacao is null;

-- Exercício 14: Número de funcionários com datas de nascimento e contratação desconhecidas

select count(*) as qtdeFuncionarios from funcionario where dataNasc is null and dataContratacao is null;

-- Exercício 15: Porcentagem do dinheiro gasto pelo cliente em cada compra

select c.nomeContato, p.idcompra, round(p.precoTotal * 100.0 / ( select sum(precoTotal) from compra where idcliente = p.idcliente), 2)
as porcentagemGasto from compra p join cliente c on p.idcliente = c.idcliente;
