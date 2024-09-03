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




