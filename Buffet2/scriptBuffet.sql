create database buffet;
use buffet;

create table clientes(
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     			varchar (50) not null,
cpf					varchar (14) not null,
telefone 			varchar (15) not null,
email 				varchar (50) not null
);

create table maoObra(
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     			varchar (50)   not null,
descricao			varchar (100)   not null,
valor 			    decimal (12,2) not null
);

create table entrada(
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     			varchar (50)   not null,
descricao			varchar (100)   not null,
valor 			    decimal (12,2) not null
);

create table pratoPrincipal(
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     			varchar (50)   not null,
descricao			varchar (100)   not null,
valor 			    decimal (12,2) not null
);

create table sobremesas(
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     			varchar (50)   not null,
descricao			varchar (100)   not null,
valor 			    decimal (12,2) not null
);

create table bebidas(
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     			varchar (50)   not null,
descricao			varchar (100)   not null,
valor 			    decimal (12,2) not null
);

create table reserva(
id       				INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idcliente				int not null,
dataEvento 				date not null,
tipoEvento 				varchar (100) not null,
numeroConvidados 		int not null,
descricao				varchar (100)   not null,
valorTotal				decimal (12,2) not null,
foreign key  (idcliente) references clientes(id)
);

create table itensEntrada(
id       			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idreserva			int not null,
identrada			int not null,
qtde				decimal (12,2) not null,
total				decimal (12,2) not null,
foreign key (idreserva) references reserva(id), 
foreign key (identrada) references entrada(id) 
);

create table itensPratoPrincipal(
id       					INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idreserva					int not null,
idpratoPrincipal			int not null,
qtde						decimal (12,2) not null,
total						decimal (12,2) not null,
foreign key (idreserva) references reserva(id),
foreign key (idpratoPrincipal) references pratoPrincipal(id) 
);

create table itensSobremesas(
id       				INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idreserva				int not null,
idsobremesas			int not null,
qtde					decimal (12,2) not null,
total					decimal (12,2) not null,
foreign key (idreserva) references reserva(id),
foreign key (idsobremesas) references sobremesas(id)
);

create table itensBebidas(
id       				INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idreserva				int not null,
idbebidas				int not null,
qtde					decimal (12,2) not null,
total					decimal (12,2) not null,
foreign key (idreserva) references reserva(id),
foreign key (idbebidas) references bebidas(id)
);

create table itensMaoOra(
id       				INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idreserva				int not null,
idmaoObra				int not null,
qtde					decimal (12,2) not null,
total					decimal (12,2) not null,
foreign key (idreserva) references reserva(id),
foreign key (idmaoObra) references maoObra(id)
);

insert into clientes (nome,cpf,telefone,email) values
('Laís Ferreira da Silva',	'123.456.789-00',	'(16) 99998-1234',	'laisferreira@gmail.com'),
('Fernando Moura Andrade',	'876.932.111-09',	'(16) 97310-7742',	'fernandoandrade@gmail.com'),
('Gabriela Santos Lima',	'342.892.900-10',	'(16) 92347-5604',	'gabisantos@gmail.com');

select * from clientes;

insert into maoObra (id,nome,descricao,valor) values
(null,	'Garçom',		'Atender os convidados',		'100.00'),
(null,	'Limpeza',		'Limpeza do salão e cozinha',	'100.00'),
(null,	'Bartender',	'Atendimento do bar',			'100.00');

select * from maoObra;

insert into entrada (id,nome,descricao,valor) values
(null,	'Mini Salgadinhos',			'Cento',						'130.00'),
(null,	'Mini batatas recheadas',	'Cento',						'100.00'),
(null,	'Salada tropical',			'Dois quilos diversos',			'90.00');

select * from entrada;

insert into pratoPrincipal (id,nome,descricao,valor) values
(null,	'Filé mignon',		'Servido ao ponto com batatas gratinadas',							'180.00'),
(null,	'Massa',			'Penne ao molho branco com queijo provolone',						'120.00'),
(null,	'Churrasco',		'Variedades de cortes nobres servidos com farofa e vinagrete',		'110.00');

select * from pratoPrincipal;

insert into sobremesas (id,nome,descricao,valor) values
(null,	'Sorvete',			'Sorvete artesanal de diversos sabores',							'120.00'),
(null,	'Petit Gateau',		'Petit Gateau de chocolate servido com sorvete de creme',			'35.00'),
(null,	'Pudim',			'Pudim de leite condensado com calda de caramelo',					'25.00');

select * from sobremesas;

insert into bebidas (id,nome,descricao,valor) values
(null,	'Refrigerante',		'Lata 350ml de diversos sabores',		'7.00'),
(null,	'Destilados',		'Dose de whisky ou vodka ',				'25.00'),
(null,	'Champanhe',		'Garrafa 750 ml importado',				'40.00');

select * from bebidas;

insert into reserva (id,idcliente,dataEvento,tipoEvento,numeroConvidados,descricao,valorTotal) values
(null, 	'1',		'2025-07-19',	   'Festa Infantil', 	'100', 		'Festa temática da princesa e o sapo', 				'9.000'),
(null,	'2',		'2025-08-30',		'Casamento', 		'170',		'Celebração ao ar livre, decoração minimalista', 	'15.000'),
(null,	'3',		'2025-10-04',		'Chá revelação', 	'50', 		'Festa apenas para amigos e familiares', 			'5.000');

select * from reserva;

insert into itensEntrada (idreserva,identrada,qtde,total) values
('1',		'1',	   	'1', 		'130.00'),
('1',		'2',		'1', 		'170.00'),
('1',		'3',		'2', 		'90.00');

select * from itensEntrada;

insert into itensPratoPrincipal (idreserva,idpratoPrincipal,qtde,total) values
('1',		'1',	   	'6', 		'1080.00'),
('1',		'2',		'6', 		'720.00'),
('1',		'3',		'15',		'1650.00');

select * from itensPratoPrincipal;

insert into itensSobremesas (idreserva,idsobremesas,qtde,total) values
('1',		'1',	   	'4', 			'480.00'),
('1',		'2',		'200', 			'7000.00'),
('1',		'3',		'20', 			'500.00');

select * from itensSobremesas;

insert into itensBebidas (idreserva,idbebidas,qtde,total) values
('1',		'1',	   	'300', 			'2100.00'),
('1',		'2',		'150', 			'3750.00'),
('1',		'3',		'120', 			'4800.00');

select * from itensBebidas;

insert into itensMaoOra (idreserva,idmaoObra,qtde,total) values
('1',		'1',	   	'5', 			'500.00'),
('1',		'2',		'4', 			'400.00'),
('1',		'3',		'2', 			'200.00');

select * from itensMaoOra;