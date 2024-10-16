--EX1
SELECT nome , doenca from Pacientes
where doenca = 'Sarampo'

--EX2
SELECT codm, CPF, nome, idade, cidade, especialidade, nroa from Medicos
where especialidade = 'Ortopedia' and idade >= 55

--EX3
SELECT codm, codp, data, hora from Consultas
where codm != 46 and codm !=79

--EX4
SELECT nroa, andar, capacidade from Ambulatorio
where andar = 4 and capacidade > 20

--EX5
SELECT nome , especialidade from Medicos

--EX6
SELECT andar, capacidade from Ambulatorio
where andar = 3 and capacidade > 20

--EX7
SELECT codm, data, hora from Consultas
where codp in (1020 , 1030)

--EX8
SELECT nroa from Ambulatorio
where capacidade >= 50 and andar not in (2 , 4)

--EX9
SELECT *, salario * 1.10 AS novo_salario from Funcionarios

--EX10
SELECT nroa, andar, capacidade from Ambulatorio
where andar in (2 , 4)