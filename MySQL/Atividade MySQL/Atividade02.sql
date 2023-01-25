create database db_pizzaria_legal;

use db_pizzaria_legal;

/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar as pizzas.*/

create table tb_categorias(
id int auto_increment,
nomePortuguês varchar(50),
nomeInglês varchar(50),
primary key (id));

/*Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária,
 relevantes aos produtos da pizzaria.*/

create table tb_pizzas(
id int auto_increment,
nome varchar(50),
valor double(4,2),
ingredientes varchar(100),
categoria int,
primary key (id),
foreign key(categoria) references tb_categorias (id));

/*Insira 5 registros na tabela tb_categorias.*/

insert into tb_categorias (nomePortuguês,nomeInglês)
values ("Doce", "Sweet");
insert into tb_categorias (nomePortuguês,nomeInglês)
values ("Vegetariana", "Vegetarian");
insert into tb_categorias (nomePortuguês,nomeInglês)
values ("Sem Carboidrato", "No Carb");
insert into tb_categorias (nomePortuguês,nomeInglês)
values ("Vegana", "Vegan");
insert into tb_categorias (nomePortuguês,nomeInglês)
values ("Integral", "Whole");

select * from tb_categorias;

/*Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias.*/

insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Marguerita", 32.00,"Queijo, tomate e manjericão",2); 
insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Mussarela", 63.00,"Mussarela",2); 
insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Calabresa", 72.00,"Linguiça calabresa",3); 
insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Atum", 85.00,"Atum e cebola",3); 
insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Mineira", 32.00,"Queijobranco e orégano",5); 
insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Mesclada", 42.00,"Chocolate branco e preto",1); 
insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Romeu e Julieta", 28.00,"Goiabada e requeijão",1); 
insert into tb_pizzas(nome,valor,ingredientes,categoria)
values ("Abobrinha", 29.00,"Abobrinha e rúcula",4); 

select * from tb_pizzas;

/* Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.*/

select * from tb_pizzas
where valor > 45.00;

/* Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/

select * from tb_pizzas
where valor between 50.00 and 100.00;

/* Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no 
atributo nome.*/

select * from tb_pizzas
where nome like "%M%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados 
da tabela tb_categorias.*/

select P.nome, P.valor, P.ingredientes, C.nomePortuguês, C.nomeInglês
from tb_pizzas as P,tb_categorias as C
where P.categoria = C.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados 
da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica*/

select P.nome, P.valor, P.ingredientes, C.nomePortuguês, C.nomeInglês
from tb_pizzas as P,tb_categorias as C
where P.categoria = C.id and P.categoria = 1;


