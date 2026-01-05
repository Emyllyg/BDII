insert into duplicata (nome, numero, valor, vencimento, banco) values
('ABC PAPELARIA', 			100100, 5000.00, '2017-01-20', 'ITAU'),
('LIVRARIA FERNANDES', 		100110, 2500.00, '2017-01-22', 'ITAU'),
('LIVRARIA FERNANDES', 		100120, 1500.00, '2016-10-15', 'BRADESCO'),
('ABC PAPELARIA', 			100130, 8000.00, '2016-10-15', 'SANTANDER'),
('LER E SABER', 			200120, 10500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LIVROS E CIA', 			200125, 2000.00, '2018-04-26', 'BANCO DO BRASIL'),
('LER E SABER', 			200130, 11000.00, '2018-09-26', 'ITAU'),
('PAPELARIA SILVA', 		250350, 1500.00, '2018-01-26', 'BRADESCO'),
('LIVROS MM', 				250360, 5000.00, '2018-12-18', 'SANTANDER'),
('LIVROS MM', 				250370, 3400.00, '2018-04-26', 'SANTANDER'),
('PAPELARIA SILVA', 		250380, 3500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LIVROS E CIA', 			453360, 1500.00, '2018-06-15', 'ITAU'),
('LIVROS MM', 				453365, 5400.00, '2018-06-15', 'BRADESCO'),
('PAPELARIA SILVA', 		453370, 2350.00, '2017-12-27', 'ITAU'),
('LIVROS E CIA', 			453380, 1550.00, '2017-12-27', 'BANCO DO BRASIL'),
('ABC PAPELARIA', 			980130, 4000.00, '2016-11-11', 'ITAU'),
('LIVRARIA FERNANDES',		770710, 2500.00, '2016-11-15', 'SANTANDER'),
('ABC PAPELARIA', 			985001, 3000.00, '2016-09-11', 'ITAU'),
('PAPEL E AFINS', 			985002, 2500.00, '2016-03-12', 'SANTANDER'),
('LER E SABER', 			888132, 2500.00, '2017-03-05', 'ITAU');

select * from  duplicata;

-- Exercício 1: Listar nome, vencimento e valor de cada duplicata da tabela.

select nome, vencimento, valor from duplicata;

-- Exercício 2: Apresentar o número das duplicatas depositadas no banco Itaú.

select numero from duplicata where banco = 'ITAU';

-- Exerccício 3: Apresentar o número de duplicatas depositadas no banco Itaú

select count(*) as numeroDuplicatas from duplicata where banco = 'ITAU';

-- Exerccício 4: Quais são as duplicatas (número, vencimento, valor e nome) que vencem no ano de 2017.

select nome, numero, valor, vencimento from duplicata where year(vencimento) = '2017';

-- Exerccício 5: Apresentar as duplicatas (número, vencimento, valor e nome) que não estão depositadas nos bancos Itaú e Santander.

select nome, numero, valor, vencimento from duplicata where banco <> 'ITAU' and banco <> 'SANTANDER';

-- Exerccício 6: Quanto é o valor da divida o cliente PAPELARIA SILVA, e quais são as duplicatas?

select sum(valor) as totalDividas from duplicata where nome = 'PAPELARIA SILVA';

select nome, numero, valor, vencimento from duplicata where nome = 'PAPELARIA SILVA';

-- Exerccício 7: Retirar da tabela a duplicata 770710 do cliente LIVRARIA FERNANDES, por ter sido devidamente quitada.

delete from duplicata where numero = '770710';

select * from duplicata;

-- Exerccício 8: Apresentar uma listagem em ordem alfabética por nome do cliente de todos os campos da tabela.

select * from duplicata order by nome;

-- Exerccício 9: Apresentar uma listagem em ordem de data de vencimento com o nome do cliente, banco, valor e vencimento.

select nome, banco, valor, vencimento from duplicata order by vencimento;

-- Exerccício 10: As duplicatas do Banco do Brasil foram transferidas para o Santander. Proceder o ajuste dos registros.
-- set -> configurar

UPDATE duplicata 
SET 
    banco = 'SANTANDER'
WHERE
    banco = 'BANCO DO BRASIL';

select * from duplicata;

-- Exerccício 11: Quais são os clientes que possuem suas duplicatas depositadas no Banco Bradesco?

select  nome from duplicata where banco = 'BRADESCO';

-- Exerccício 12: Qual é a previsão de recebimento no período de 01/01/2016 até 31/12/2016?

select sum(valor) as soma2016 from duplicata where vencimento >= '2016-01-01' and vencimento <= '2016-12-31';

-- Exerccício 13: Quanto a empresa tem para receber no período de 01/08/2016 até 30/08/2016?

select sum(valor) as somaValores from duplicata where month (vencimento) = 08 and year(vencimento) = 2016;

-- Exerccício 14: Quais foram os itens adquiridos pelo cliente ABC PAPELARIA?

select numero, valor, vencimento, banco from duplicata where nome = 'ABC PAPELARIA';

-- Exerccício 15: Acrescentar uma multa de 15% para todos os títulos que se encontram vencidos no período de 01/01/2016 até 31/12/2016

select nome, sum(valor) as valorVencido, datediff(curdate(), vencimento) as qtdeDiasVencido,
vencimento, sum(valor * 1.15) as valorMulta from duplicata where year(vencimento) = 2016 and datediff(curdate(), vencimento) > 0 group by vencimento;

-- Exerccício 16: Acrescentar uma multa de 5% para todos os títulos vencidos entre 01/01/2017 e 31/05/2017 que sejam do cliente LER E SABER.

select nome, concat( 'R$', format(sum(valor), 2)) as valorVencido, date_format(vencimento, '%d/%m/%Y') as vencimento, 
datediff(curdate(), vencimento) as qtdeDiasVencido, format(sum(valor * 1.05),2) as valorMulta from duplicata 
where nome = 'LER E SABER' and month(vencimento) >= 01 and month(vencimento) <= 05 and year(vencimento) = 2017
group by date_format(vencimento, '%d/%m/%Y');

-- Exerccício 17: Qual é a média aritmética dos valores das duplicatas do ano de 2016?

select concat('R$', format(avg(valor), 2)) as mediaValores2016 from duplicata where year(vencimento) = 2016;

-- Exerccício 18: Exiba as duplicatas e nome dos respectivos clientes que possuem duplicatas com valor superior a 10000,00?

select nome, numero, concat('R$', format(avg(valor), 2)) as valor, date_format(vencimento, '%d/%m/%Y') as vencimento, 
banco from duplicata where valor > 10000;

-- Exerccício 19: Qual o valor total das duplicatas lançadas para o banco Santander?

select concat('R$', format(avg(valor), 2)) as valorTotal, ucase(banco) as banco from duplicata 
where banco = 'SANTANDER' group by banco;

-- Exerccício 20: Quais são os clientes que possuem suas duplicatas depositadas nos Bancos Bradesco ou Itaú?

select ucase(nome) as nome, ucase(banco) as banco from duplicata where banco = 'ITAU' 
or banco = 'BRADESCO' order by banco;

