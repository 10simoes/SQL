-- Questão 01
describe pacientes;
select nome,sexo from pacientes;

-- Questão 02
describe consultas;
select c.dia, c.hora from consultas as c, pacientes as p
where .idpacientes = c.idpacientes and p.nome = 'Paty Franca';