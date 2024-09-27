create table Consumidores (
	CPF char(11) primary key not null,
	Nome varchar(80) not null,
	Cidade varchar(15),
	Estado char (2),
	unique (CPF)
)

create table Revendedoras (
	CNPJ char(14) primary key not null,
	Nome varchar(80) not null,
	Cidade varchar(15),
	Estado char (2),
	unique (CNPJ)
)

create table Negocios (
	CPF char(11) not null,
	CNPJ char(14) not null,
	Automovel varchar (15) not null,
	DataCompra date not null,
	Preco numeric not null,
	primary key (CNPJ, CPF, DataCompra),
    foreign key (CNPJ) references Revendedoras (CNPJ),
    foreign key (CPF) references Consumidores (CPF)
)



insert into Consumidores (CPF, Nome, Cidade, Estado) values 
('12345678901', 'Roberto', 'Rio de Janeiro', 'RJ'),('11145678901', 'Ana', 'Niterói', 'RJ'),
('13345678901', 'Ricardo', 'Rio de Janeiro', 'RJ'),('12245678901', 'Rachel', 'Niterói', 'RJ'), ('16645678901', 'Ninho', 'Niterói', 'RJ');

insert into Revendedoras (CNPJ, Nome, Cidade, Estado) values 
('12345678901234', 'BobAuto', 'Rio de Janeiro', 'RJ'),('44445678904444', 'SenacAuto', 'Niterói', 'RJ');

insert into Negocios (CNPJ, CPF, Automovel, DataCompra, Preco) values
('12345678901234', '12345678901', 'Honda FIT', '10-01-2023', 80000), ('12345678901234', '13345678901', 'Honda CIVIC', '10-03-2023', 100000),('44445678904444', '12245678901', 'Honda CRV', '10-04-2023', 130000),
('44445678904444', '16645678901', 'Toyota Corolla', '15-01-2023', 85000);

update Negocios
set Preco = 90000 
where CNPJ = '12345678901234' and CPF = '12345678901' and Automovel = 'Honda FIT';


select * from Negocios
select * from Consumidores
select * from Revendedoras