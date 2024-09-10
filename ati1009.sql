use bancotimes;

show tables;

describe jogadores;

SELECT nome, valor, anodefundacao FROM times WHERE anodefundacao > 1900;

SELECT nome, valor, anodefundacao FROM times WHERE anodefundacao between 1900 and 1920;


-- TABELA DE JOGADORES - SCRIPT
-- AUTOR ARTHUR ALMIRANTE
-- DATA 03/09/2024

describe jogadores;
SELECT nome,salario, datanascimento from jogadores;

select nome,salario from jogadores where salario > 3000 or salario < 2000;

select nome,salario from jogadores where nome = 'Jorge';

select * from jogadores order by nome Asc;

select count(*) as total from jogadores;

select max(salario) as maior from jogadores;

select min(salario) as maior from jogadores;

select avg(salario) as media from jogadores;

select sum(salario) as soma from jogadores;

select distinct salario from jogadores;


select nome,anodefundacao;



-- questao 2
select avg(valor) as media from times;
-- questão 03
select nome, salario, datanascimento from jogadores order by datanascimento asc;

select nome from jogadores order by nome desc;







select nome, min(valor) from times where nome = 'Bahia' group by nome;


select nome, datanascimento from jogadores where datanascimento > '2000-01-01';

select nome, datanascimento from jogadores where year(datanascimento) > 2000;

select count(nome) from jogadores where salario < 3000; 

select max(valor) from times;

INSERT INTO times(nome,valor,anodefundacao) values ('Santos','400000','1921'), ('Vasco','50000000','1891'), ('Benfica','4000000','1920');

INSERT INTO jogadores (nome,salario,datanascimento,idtimes) values (1,'Jorge',4000,'2000-01-01',1),(2,'Alex',2000,'2004-01-04',1),(3,'Paulo',3000,'1999-04-01',1);

INSERT INTO jogadores (nome,salario,datanascimento,idtimes) values ('Captu','10000','1980-12-25',9);


select * from jogadores;
select * from times;

DELETE from jogadores where idtimes = '1';

SELECT * from times as t, jogadores as j where t.idtimes = j.idtimes;

(SELECT distinct(t.idtimes) FROM times as t, jogadores as j where t.idtimes = j.idtimes);

select * from times where times.idtimes not in (SELECT distinct(t.idtimes) FROM times as t, jogadores as j where t.idtimes = j.idtimes);

insert into jogadores(nome,salario,datanascimento,idtimes) values ('Coutinho',4000,'2000-01-01',9),('Tiquinho',2000,'2004-01-04',9),('Vegetti',3000,'1999-04-01',9);


select * from jogadores;

select * from times;

update jogadores set nome = 'Xuxa' where idjogadores = '8';

update times set nome = 'SAF Botafogo', valor = '23500000000000' where idtimes = '3';


-- Questoes:
use bancotimes;
insert into times(nome,valor,anodefundacao) values ('Ceilandia','1000000','2000-01-01');


insert into jogadores(nome,salario,datanascimento,idtimes) values ('Alex Sandro',40000,'2000-31-11',2),('Rafael Navarro',200888,'2002-10-04',9);






