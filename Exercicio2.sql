create database ecommerce;

use ecommerce;

create table produtos(
id int(3) auto_increment,
nome varchar(100) not null, 
quantidade int (4),
valor double, 
marca varchar(50),
primary key (id)
);

select * from produtos;

insert into produtos(nome, quantidade,valor,marca) values ("Celular",100,1.500,"Samsung");
insert into produtos(nome, quantidade,valor,marca) values ("Monitor",200,800.00,"Samsung");
insert into produtos(nome, quantidade,valor,marca) values ("Notebook",600,5000.00,"LG");
insert into produtos(nome, quantidade,valor,marca) values ("Fone de Ouvido",900,200.00,"Samsung");
insert into produtos(nome, quantidade,valor,marca) values ("TV",500,3500.00,"Samsung");
insert into produtos(nome, quantidade,valor,marca) values ("Geladeira",700,5200.00,"Samsung");
insert into produtos(nome, quantidade,valor,marca) values ("Máquina de Lavar",300,1900.00,"Phillips");
insert into produtos(nome, quantidade,valor,marca) values ("Mouse",100,120.00,"LeNovo");

select * from produtos where valor > 500.00;

select * from produtos where valor < 500.00;

update produtos set valor = 1500.00 where id = 1;