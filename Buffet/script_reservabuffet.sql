CREATE DATABASE buffet;
use buffet;


create table clientes (
id       INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     VARCHAR (50) NOT NULL,
endereço     VARCHAR (100) NOT NULL, 
telefone VARCHAR (15) NOT NULL,
preferenciasAlimentares varchar (100) NOT NULL,
email varchar (50) not null,
CPF varchar (11) not null
);

create table historicos_pedidos (
id     INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
clientesid int not null,
data_pedidos date not null,
valor_pedidos int not null,
desc_pedidos varchar (100) not null,
foreign key (clientesid) references clientes(id) -- chave estrangeira
);

create table pagamentos(
id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
clientesid int not null,
numero_cartao int not null,
validade_cartao int not null,
CVV_cartao int not null,
valor_total int not null,
status_pedidos varchar (50) not null,
data_pagamentos date not null,
parcela int not null,
foreign key (clientesid) references clientes(id) -- chave estrangeira
); 

create table horarios_disponiveis (
id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
data_evento date not null,
horario time not null
);

create table menu (
id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
entradas varchar (100) not null,
prato_principal varchar (100) not null,
sobrimesas varchar (100) not null,
bebidas varchar (50) not null
);

create table avaliacao_clientes (
clienteid int not null,
nota int not null,
avaliacao varchar (100) not null,
foreign key (clientesid) references clientes(id) -- chave estrangeira
);
create table reserva (
clienteid int not null,
horarios_disponiveisid int not null,
menuid int not null,
pagamentoid int not null,
tipo_evento varchar (100) not null,
numero_convidados int not null,
local_evento int not null,
statos_reserva varchar (50) not null,
foreign key (clientesid) references clientes(id), -- chave estrangeira
foreign key (horarios_disponiveisid) references horario_disponiveis(id),
foreign key (menuid) references menu(id),
foreign key (pagamentoid) references pagamento(id)
);










