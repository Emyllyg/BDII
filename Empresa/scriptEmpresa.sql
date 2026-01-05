create database empresa;
use empresa;

create table funcionario (
idfuncionario 		int primary key auto_increment,
sobrenome			varchar(40),
nome				varchar(20),
dataNasc			date,
dataContratacao		date,
endereco			varchar(128),
cidade				varchar(30),
pais				varchar(30),
reportaPara			int, 		-- chave estrangeira (auto-relacionamento: funcionario)
foreign key (reportaPara) references funcionario(idfuncionario)
);

create table cliente (
idcliente		int primary key auto_increment,
nomeContato		varchar(30),
nomeEmpresa		varchar(40),
emailContato	varchar(128),
endereco		varchar(120),
cidade			varchar(30),
pais			varchar(30)
);

create table categoria (
idcategoria		integer primary key auto_increment,
nome			varchar(60),
descricao		text,
categoriaPaiid 	int,		 	-- chave estrangeira (auto-relacionamento: funcionario)
foreign key (categoriaPaiid) references categoria(idcategoria)
);

create table produto (
idproduto			integer primary key auto_increment,
nomeProduto			varchar(60),
idcategoria			int, 		-- chave estrangeira
qtdeUnidade 		int,
precoUnitario		decimal(10,2),
unidadeEstoque		int,
descontinuado       boolean,
foreign key (idcategoria) references categoria(idcategoria)
);

create table compra (
idcompra			int primary key auto_increment,
idcliente			int,	-- chave estrangeira
idfuncionario 		int, 	-- chave estrangeira
precoTotal			decimal(10,2),
dataCompra			datetime,
dataEnvio			datetime,
enderecoEnvio		varchar(60),
cidadeEnvio			varchar(15),
paisEnvio			varchar(15),
foreign key (idcliente)  references cliente(idcliente),
foreign key (idfuncionario) references funcionario (idfuncionario)
);

create table itemCompra (
idcompra			int,  	-- chave estrangeira
idproduto			int,	-- chave estrangeira
precoUnitario		decimal(10,2),
qtde				int,
primary key (idcompra,idproduto),  -- chave primaria composta
foreign key (idcompra) references compra (idcompra),
foreign key (idproduto)  references produto(idproduto)
);

