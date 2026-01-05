create database contasReceber;
use contasReceber;

create table duplicata(
nome			varchar(40),
numero			integer null primary key,
valor			decimal(10,2),
vencimento		date,
banco			varchar(20)
);

