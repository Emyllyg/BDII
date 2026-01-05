-- Exercícios - introdução SELECT

-- 1) 
select idmarca, dsmarca from marca; -- mostra apenas os registros das colunas que voce digitou 
select * from marca; -- mostra todos os registros da tabela

-- 2)
select * from categoria
order by dscategoria; --  ordem alfabetica/ ordenado pela descrição

-- 3)
select * from unidade
order by idunidade desc; -- ordenado pelo código da unidade de forma descendente

-- 4)
select dsunidade from unidade -- selecionar todas as descrições da tabela Unidade
order by dsunidade;

-- 5)
select * from  produto
order by dsproduto;

-- 6)
select dsproduto, precoVenda from produto
order by precoVenda;

-- 7)
select dsproduto, precoCusto, precoVenda from produto
order by precoCusto desc;

-- 8)
select dsproduto, precoCusto, precoVenda, qtdeEstoque, qtdeMinima, resumo from produto
order by dsproduto desc;

-- 9)
select count(idunidade) -- apresenta a quantidade de Unidades cadastradas
	from unidade;

-- 10)
select count(dsproduto) -- apresenta o total de variedades de produtos cadastrados
	from produto;
    
-- 11)
select sum(qtdeEstoque) -- apresenta a quantidade total de produtos cadastrados (soma)
	from produto;
    
-- 12)
select sum(qtdeMinima) -- apresenta quantos itens representam o estoque mínimo dos seus produtos
 	from produto;
    
-- 13)
select sum(precoCusto * qtdeEstoque) as total -- valor total dos produtos em estoque; as = nome da coluna
	from produto;
    
-- 14)
select avg(precoCusto) as média -- apresenta a média dos valores de custo dos produtos (avg = media)
	from produto;
    
-- 15)
select avg(qtdeEstoque) as "Estoque Médio" -- apresenta a média da quantidade de produtos em estoque
	from produto;