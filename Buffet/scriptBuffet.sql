CREATE DATABASE buffet;
use buffet;


create table clientes (
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     			varchar (50) not null,
cpf					varchar (14) not null,
telefone 			varchar (15) not null,
email 				varchar (50) not null
);


create table menu (
id  				INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
entradas 			varchar (100) not null,
prato_principal 	varchar (100) not null,
sobremesas 			varchar (100) not null,
bebidas 			varchar (50) not null
);


create table reserva (
id  				INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
menuid 				int not null,
clienteid 			int not null,
data_evento 		date not null,
tipo_evento 		varchar (100) not null,
numero_convidados 	int not null,
local_evento 		varchar(100) not null,
foreign key (clienteid) references clientes(id), -- chave estrangeira
foreign key (menuid) references menu(id) -- chave estrangeira
);

insert into clientes (nome,cpf,telefone,email) values
('Laís Ferreira da Silva',	'123.456.789-00',	'(16) 99998-1234',	'laisferreira@gmail.com'),
('Fernando Moura Andrade',	'876.932.111-09',	'(16) 97310-7742',	'fernandoandrade@gmail.com'),
('Gabriela Santos Lima',	'342.892.900-10',	'(16) 92347-5604',	'gabisantos@gmail.com');

select * from clientes;

insert into menu (entradas,prato_principal,sobremesas,bebidas) values
('Mini salgadinhos',			'Filé mignon',											'Bolos', 	  		'Cervejas'),
('Tábuas de frios',				'Filé ao molhos com roquefort ou quatro queijos',		'Sorvetes ', 		'Sucos'),
('Mini batatas recheadas',		'Arroz com acompanhamentos',							'Petit Gâteau',		'Destilados'),
('Patês com torradinhas',		'Massas',												'Pudim', 			'Refrigerante'),
('Salada tropical',				'Churrasco',											'Tortas', 			'Champagne');

select * from menu;

insert into reserva (clienteid,menuid,data_evento,tipo_evento,numero_convidados,local_evento) values
('1',	'4',				'2025-04-19',	'Festa de 15 anos', 	'50',	'Happy Day Festas'),
('2',	'2',				'2025-06-14',	'Festa infantil', 		'20',	'Mundo Mágico'),
('3',	'5', 				'2025-06-14',	'Casamento', 			'120',	'Palácio dos Ypês');																												

select * from reserva;
