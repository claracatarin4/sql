CREATE TABLE Funcionarios
(
cod_func int primary key,
CPF char(11) unique,
nome char(40),
idade char (2) not null,
cidade char (20) not null,
salario int 
)

CREATE TABLE Medicos
(
cod_med int primary key,
CPF char(11) unique,
nome varchar (40) not null,
cidade char(15) not null,
especialidade char(30) not null,
nroa foreign key references Ambulatorio (nroa)

