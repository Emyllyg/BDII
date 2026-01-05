CREATE DATABASE buffet;
use buffet;


create table clientes (
id       INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome     VARCHAR (50) NOT NULL,
telefone VARCHAR (15) NOT NULL,
email varchar (50) not null
);


create table menu (
id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
entradas varchar (100) not null,
prato_principal varchar (100) not null,
sobremesas varchar (100) not null,
bebidas varchar (50) not null
);


create table reserva (
id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
clienteid int not null,
data_evento int not null,
tipo_evento varchar (100) not null,
numero_convidados int not null,
local_evento int not null,
telefone_buffet int not null,
foreign key (clienteid) references clientes(id) -- chave estrangeira
);










