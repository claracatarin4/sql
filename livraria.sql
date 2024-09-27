create table Autor(
	Matricula numeric (38) PRIMARY KEY not null,
	Nome varchar(80) not null,
	CPF char(11) not null,
	Endere�o varchar(80) not null,
	dataNasc date not null,
	Nacionalidade varchar (30) not null,
)

create table Livro(
	C�digo numeric (38) PRIMARY KEY not null,
	T�tulo varchar(80) not null,
	Pre�o float not null,
	Lan�amento date not null,
	Assunto varchar(50) not null,
	Cod_editora numeric (38) not null,
)

create table AUTOR_LIVRO(
	Cod_livro numeric(38) not null,
	Cod_autor numeric (38) not null,
	CONSTRAINT PK1 PRIMARY KEY(Cod_livro, Cod_autor),
	CONSTRAINT FK2 FOREIGN KEY (Cod_livro) REFERENCES Livro(C�digo),
	CONSTRAINT FK3 FOREIGN KEY (Cod_autor) REFERENCES Autor(Matricula),
)

create table Editora(
	Editora numeric (38) PRIMARY KEY not null,
	Nome varchar (80) not null,
)


alter table Livro 
add Edi��o char (20)

alter table Livro
drop column Edi��o

drop table Editora

create table Editora2(
	Editora numeric (38) PRIMARY KEY not null,
	Nome varchar (80) not null,
	Edi��o char (20),
)


INSERT INTO Editora2(Editora, Nome, Edi��o) VALUES 
(001, 'Addison', 1),
(002, 'Globo', 1),
(003, 'Pearson', 1),
(004, 'Abril', 1);

INSERT INTO Autor (Matricula, Nome, CPF, Endere�o, dataNasc, Nacionalidade) VALUES 
(911, 'Roberto', '12345678901', 'Rua A num 1', '1966-09-18', 'Brasileira'),
(922, 'Simone', '22345678901', 'Rua B num 1', '1976-08-08', 'Brasileira'),
(933, 'Fernando', '32345678901', 'Rua C num 1', '1996-07-13', 'Brasileira'),
(954, 'Felipe', '42345678901', 'Rua D num 1', '1967-02-28', 'Brasileira'),
(965, 'Fabio', '52345678901', 'Rua E num 1', '1988-03-08', 'Brasileira'),
(976, 'Fernanda', '62345678901', 'Rua E num 1', '1988-03-08', 'Brasileira'),
(997, 'Julio', '22345678901', 'Rua E num 1', '1988-03-08', 'Brasileira'),
(1001, 'Dario', '21345678901', 'Rua E num 1', '1998-03-08', 'Brasileira');

INSERT INTO Livro (C�digo, T�tulo, Pre�o, Lan�amento, Assunto, Cod_editora) VALUES 
(100, 'Sistemas de Banco de Dados', 99.00, '2015-01-01', 'Inform�tica', 003),
(200, 'Rede de Computadores', 199.00, '2002-05-01', 'Inform�tica', 003),
(300, 'Corpo Humano', 89.00, '2011-09-01', 'Medicina', 004),
(400, 'Leis da F�sica', 95.00, '2015-10-01', 'Ci�ncia', 002),
(500, 'F�sica Qu�ntica', 95.00, '2015-10-01', 'Ci�ncia', 005),
(600, 'O Cora��o', 289.00, '1999-09-01', 'Medicina', 004);

INSERT INTO AUTOR_LIVRO (Cod_livro, Cod_autor) VALUES 
(100, 911), 
(100, 965), 
(200, 911),  
(300, 976), 
(400, 976),  
(500, 976), 
(300, 965);  


UPDATE Livro
SET Pre�o = Pre�o * 1.10
WHERE Assunto = 'Medicina';

select * from Autor
select * from AUTOR_LIVRO
select * from Editora2


