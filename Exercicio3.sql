create database escola;

use escola;

CREATE TABLE alunos(
id int(3) auto_increment,
nome varchar(100) not null, 
matéria varchar(100) not null,
nota double, 
curso varchar(50),
primary key (id)
);

SELECT * from alunos;


insert into alunos(nome,matéria,nota,curso) values ("João Silva","Português",7.5,"Literatura");
insert into alunos(nome,matéria,nota,curso) values ("Marta Rocha","Português",3.8,"Literatura");
insert into alunos(nome,matéria,nota,curso) values ("Clara Duarte","Português",9.4,"Literatura");
insert into alunos(nome,matéria,nota,curso) values ("Ana Morais","Português",5.7,"Literatura");
insert into alunos(nome,matéria,nota,curso) values ("Carlos Souza","Português",3.9,"Literatura");
insert into alunos(nome,matéria,nota,curso) values ("Pedro Malta","Português",8.5,"Literatura");
insert into alunos(nome,matéria,nota,curso) values ("Danilo Rubens","Português",7.6,"Literatura");
insert into alunos(nome,matéria,nota,curso) values ("Jessica Ramos","Português",4.8,"Literatura");

select * from alunos where nota > 7.0;

select * from alunos where nota < 7.0;

update alunos set nota = 6.9 where id = 3;
