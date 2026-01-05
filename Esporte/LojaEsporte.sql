create database loja;
use loja; 

create table marca(
	idmarca int auto_increment primary key,
    dsmarca varchar(50)
);
create table unidade(
	idunidade int auto_increment primary key,
    dsunidade varchar(50)
);

create table categoria(
	idcategoria int auto_increment primary key,
    dscategoria varchar(50)
);

create table produto(
	idproduto 	int  auto_increment primary key,
    dsproduto 	varchar(100),
    precoCusto 	decimal(12,2),
    precoVenda 	decimal(12,2),
    qtdeEstoque decimal(12,2),
    qtdeMinima 	decimal(12,2),
	idCategoria int, -- chave estrangeira
	idMarca 	int, -- chave estrangeira
	idUnidade 	int, -- chave estrangeira
    resumo 		varchar(250)
);

-- Criar as chaves estrangeiras

alter table produto add constraint
	foreign key (idCategoria) references categoria (idcategoria);
    
alter table produto add constraint
	foreign key (idMarca) references marca (idMarca);
    
alter table produto add constraint
	foreign key (idUnidade) references unidade (idUnidade);