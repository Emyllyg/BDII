create database saude;
use saude;

create table pacientes(
id					int not null auto_increment primary key,
nome				varchar(50) not null,
dataNascimento		date not null,
sexo				varchar(50),
telefone			varchar(15),
endereco			varchar(100),
estado				char(2),
email				varchar(50),
cpf					varchar(14) not null unique,
dataCadastro		date 
);

create table medico(
id					int not null auto_increment primary key,
nome				varchar(50) not null,
especialidade		varchar(50) not null,
dataNascimento		date,
telefone			varchar(15) not null,
endereco			varchar(100),
cidade				varchar(20),
estado				char(2),
email				varchar(50),
crm					int	not null unique
);

create table consulta(
id					int not null auto_increment primary key,
idpaciente			int not null,
idmedico			int not null,
dataConsulta		date,
hora 				time,
descricao			varchar(100),
statusConsulta		varchar(50),
check (statusConsulta = 'Agendada' or statusConsulta = 'Realizada' or statusConsulta = 'Cancelada'),
foreign key  (idpaciente) references pacientes(id),
foreign key  (idmedico) references medico(id)
);

create table exames(
id					int not null auto_increment primary key,
idconsulta			int not null,
tipoExame			varchar(100),
dataExame			date,
foreign key  (idconsulta) references consulta(id) 
);

create table receitas(
id					int not null auto_increment primary key,
idconsulta			int not null,
dataEmissao			date,
descricao			varchar(100),
foreign key  (idconsulta) references consulta(id) 
);

create table medicamentos(
id					int not null auto_increment primary key,
nome				varchar(50),
fabricante			varchar(50),
descricao			varchar(50)
);

create table itensReceita(
id					int not null auto_increment primary key,
idreceita			int not null,
idmedicamento		int not null,
qtde				decimal (12,2),
posologia			int,
foreign key  (idreceita) references receitas(id),
foreign key  (idmedicamento) references medicamentos(id) 	
);

create table prontuarioEletronico(
id						int not null auto_increment primary key,
idpaciente				int not null,
datacriacao				date not null,
dadosComplementares		varchar(100),
foreign key  (idpaciente) references  pacientes(id)
);

create table internacao(
id						int not null auto_increment primary key,
idpaciente				int not null,
idmedico				int not null,
datainternacao			date not null,
dataalta				date not null,
motivo					varchar(50) not null,
leito					int not null,
foreign key  (idpaciente) references  pacientes(id),
foreign key  (idmedico) references  medico(id)
);
