create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária,
 relevantes para classificar os produtos.*/

create table tb_categorias(
id int auto_increment,
TipoMedicamento varchar(50),
Controlado boolean,
primary key (id));

/*Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes 
aos produtos da farmácia*/

create table tb_produtos(
id int auto_increment,
nome varchar(50),
valor double(4,2),
fabricante varchar(100),
categoria int,
primary key (id),
foreign key(categoria) references tb_categorias (id));

/*Insira 5 registros na tabela tb_categorias.*/

insert into tb_categorias (TipoMedicamento,Controlado)
values ("Analgesico", false);
insert into tb_categorias (TipoMedicamento,Controlado)
values ("Antibiotico", true);
insert into tb_categorias (TipoMedicamento,Controlado)
values ("Antialergico", false);
insert into tb_categorias (TipoMedicamento,Controlado)
values ("Cosmetico", false);
insert into tb_categorias (TipoMedicamento,Controlado)
values ("Ansiolitico", true);

select * from tb_categorias;

/*Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar
 a relação com a tabela tb_categorias.*/

insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Ibuprofeno", 32.00,"Cimed",1); 
insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Amoxilina", 57.00,"Epharma",2); 
insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Polaramine", 22.00,"Metha",3); 
insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Batom", 75.00,"Wella",4); 
insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Fenafitamina", 48.00,"AMD",5); 
insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Clavulanato", 98.00,"Cimed",2); 
insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Dipirona", 12.00,"Cilab",1); 
insert into tb_produtos(nome,valor,fabricante,categoria)
values ("Desloratadina", 33.00,"Cimed",3); 


select * from tb_produtos;

/* Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00*/

select * from tb_produtos
where valor > 50.00;

/* Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.*/

select * from tb_produtos
where valor between 5.00 and 60.00;

/* Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C 
no atributo nome.*/

select * from tb_produtos
where nome like "%C%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados
 da tabela tb_categorias.*/

select P.nome, P.valor, P.fabricante, C.TipoMedicamento, C.Controlado
from tb_produtos as P,tb_categorias as C
where P.categoria = C.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados 
da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica*/

select P.nome, P.valor, P.fabricante, C.TipoMedicamento, C.Controlado
from tb_produtos as P,tb_categorias as C
where P.categoria = C.id and P.categoria = 3;

