create database db_generation_game_online;

use db_generation_game_online;

/*Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar
 os personagens do Game Online.*/
create table tb_classes(
id int(2) auto_increment,
nomeClasse varchar(50),
nivel int(2),
primary key(id));

select * from tb_classes;

/*Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do 
Game Online.*/
create table tb_personagens (
id int auto_increment,
nome varchar(50),
especie varchar(50),
codigoClasse int(2),
poderDefesa int,
poderAtaque int,
primary key(id),
foreign key(codigoClasse) references tb_classes (id));

/* Insira 5 registros na tabela tb_classes.*/
insert into tb_classes(nomeClasse,nivel) values ("Arqueiro",2);
insert into tb_classes(nomeClasse,nivel) values ("Armeiro",7);
insert into tb_classes(nomeClasse,nivel) values ("Ferreiro",5);
insert into tb_classes(nomeClasse,nivel) values ("Cavaleiro",4);
insert into tb_classes(nomeClasse,nivel) values ("Caçador",8);



select * from tb_personagens;

/*Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.*/
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Rita Repulsa","Planta",1,1500,2100);
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Chico","Água",1,5000,900);
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Chacha","Fogo",3,1700,2100);
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Patricio","Ar",4,2500,8100);
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Jones","Mente",4,6000,5000);
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Betty","Agua",2,1750,1900);
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Kate","Fogo",2,1850,2100);
insert into tb_personagens(nome,especie,codigoClasse,poderDefesa,poderAtaque)
values ("Jess","Ar",5,3500,1400);

/*Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.*/
select * from tb_personagens
where poderAtaque > 2000;

/*Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.*/
select * from tb_personagens
where poderDefesa between 1000 and 2000;

/*Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.*/
select * from tb_personagens
where nome like "%C%";

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela 
tb_classes. */
select P.id, P.nome, P.especie, P.poderDefesa, P.poderAtaque, C.nomeClasse
from tb_personagens AS P, tb_classes AS C
where P.codigoClasse = C.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela 
tb_classes, onde traga apenas os personagens que pertençam a uma classe específica
*/
select P.nome, P.especie, P.poderDefesa, P.poderAtaque, C.nomeClasse
from tb_personagens AS P, tb_classes AS C
where P.codigoClasse = C.id 
and P.codigoClasse = 2;









