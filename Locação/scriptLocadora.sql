create database locadora;
use locadora;

create table clientes(
	id 			int not null auto_increment primary key,
    nome 		varchar(50) not null,
    cpf 		varchar(14) not null,
    telefone 	varchar(15)
);

describe clientes; -- descreve a tabela

create table veiculos(
	id 			int not null auto_increment primary key,
    modelo 		varchar(50) not null,
    marca 		varchar(50) not null,
    ano 		int not null,
    placa		varchar(8) not null,
    disponivel	boolean not null	
);

describe veiculos;

create table locacoes(
	id int not null auto_increment primary key,
    clienteId int not null,
    veiculoId int not null,
    dataInicio date not null,
    dataFim date not null,
    foreign key (clienteId) references clientes(id), -- chave estrangeira
    foreign key (veiculoId) references veiculos(id) -- chave estrangeira
);

describe locacoes;

insert into clientes (nome, cpf, telefone) values
('João Silva', 			'123.456.789-00', '(11) 99999-9999'),
('Maria Souza', 		'123.432.111-09', '(16) 99998-1234'),
('Carlos Santos', 		'342.892.900-10', '(13) 40028-9227'),
('Vanessa Nascimento', 	'155.891.723-04', '(16) 98979-6593');

select * from clientes;

insert into veiculos (modelo, marca, ano, placa, disponivel) values
('Uno',		'Fiat',			'2020', 'ABC-1234', true),
('Gol',		'Volkswagen',	'2021', 'BMQ-4356', false),
('Fiesta',	'Ford',			'2022', 'FKD-3232', true),
('Kwid',	'Renault',		'2024', 'FJK-9765', false);

select * from veiculos;

insert into locacoes (clienteId, veiculoId, dataInicio, dataFim) values
(1, 1, '2023-02-15', '2023-02-20'),
(2, 3, '2024-03-20', '2024-03-22'),
(4, 1, '2024-05-10', '2024-05-15'),
(3, 3, '2025-01-12', '2025-01-20');

select * from locacoes;

update clientes set telefone = '(11) 88888-8888' where id = 1; -- altera o telefone do cliente com id = 1 para (11) 88888-8888

select * from clientes;

update veiculos set disponivel = false where id = 1; -- altera a disponibilidade do veiculo com id=1 para falso

select * from veiculos;

select * from locacoes; -- mostre todas as locações

delete from locacoes where id=1; -- apague o locação com id=1

select * from locacoes;

delete from clientes where id=1; -- apague o clientes com id=1

select * from clientes;

delete from veiculos where id=2; -- apague o veiculo com id=2

select * from veiculos;

insert into clientes (nome, cpf, telefone) values
('Diana	Moura', '125.678.897-90', '(11) 92520-4876');

select * from clientes;

insert into veiculos (modelo, marca, ano, placa, disponivel) values
('Hb20', 'Hyundai', '2023', 'EGC-1927', true);

select * from veiculos;

delete from clientes where id=5;

select * from clientes;

update veiculos set disponivel = true where id = 5;

select * from veiculos;

insert into locacoes (clienteId, veiculoId, dataInicio, dataFim) values
();
