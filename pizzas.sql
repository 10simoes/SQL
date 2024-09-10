select * from atendentes;
describe atendentes;

-- 1)
INSERT INTO atendentes (idatendentes, nomeatendente, codigo) values (9,'Arthur', AC2);

-- 2) 
INSERT INTO pizzas (idpizzas,sabor,preco,quantidade,quantidade_critica) values (15,'Chocolate', 40, 100, 10);
describe pizzas;
select * from pizzas;

-- 3) 
update pizzas set quantidade_critica = '5', valor = '50' where idpizzas = '5';
