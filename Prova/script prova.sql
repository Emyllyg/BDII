create database dados;
use dados;

create table cliente (
	id		int 		not null primary key auto_increment,
	nome	varchar(30) not null,
	cpf		varchar(15) not null unique,
	cidade	varchar(30)	not null,
	datanasc date,
	email	varchar(100)
);

insert into cliente values
	(null, 'Ana Souza','12345678901','São Paulo','2003-05-12','ana.souza@email.com'),
	(null, 'Bruno Lima','98765432100','Rio de Janeiro','2002-11-25','bruno.lima@email.com'),
	(null, 'Carla Mendes','45678912322','Belo Horizonte','2004-01-30','carla.mendes@email.com'),
	(null, 'Diego Oliveira','74125896355','Salvador','2003-09-14','diego.oliveira@email.com'),
	(null, 'Fernanda Santos','85236974144','Curitiba','2002-07-03','fernanda.santos@email.com');
	
-- 1 selecione todos os registros da tabela cliente

select * from cliente;

-- 2 liste apenas os nomes e e-mails dos clientes

select nome, email from cliente;

-- 3 mostre os clientes que moram em São Paulo

select * from cliente where cidade = 'São Paulo';

-- 4 Exiba os clientes ordenados pelo nome em ordem alfabetica

select * from cliente order by nome asc;

-- 5 Liste os clientes que nasceram após o ano de 2003

select * from cliente where datanasc > '2003-12-31';

-- 6 Exiba o nome e a cidade dos clientes cujo nome começa com a letra C

select nome, cidade from cliente where nome like 'C%';

-- 7 Conte quantos clientes existem na tabela

select count(*) as numeroClientes from cliente;

-- 8 Exiba os clientes ordenados por cidade e mostre quantos clientes há em cada cidade.

select * from cliente order by cidade asc;

select count(*) as clienteCidade from cliente group by cidade order by cidade asc; 

-- 9 apague o cliente com id 1

delete from cliente where id = '1';

-- 10 atualize o email da cliente Carla Mendes para carla.m@email.com

update cliente set email = 'carla.m@email.com' where nome = 'Carla Mendes';

select * from cliente;
