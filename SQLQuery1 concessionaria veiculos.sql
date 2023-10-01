create database concessionaria

create table Cliente (

	ClienteID INT PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR (250) NOT NULL,
	Telefone VARCHAR (15) NOT NULL,

);

CREATE TABLE Marca (
	MarcaID INT PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR (255) not null,
);

--drop table cliente
--drop table FormaPagamento
--drop table Marca
--drop table Veiculo
--drop table VeiculoCondicao
--drop table Venda


create table VeiculoCondicao
(
	CondicaoID INT PRIMARY KEY IDENTITY (1,1),
	dESCRICAO varchar (255) NOT NULL,

);

--Alter table FormaPagamento

CREATE TABLE FormaPagamento (

	FormPagID INT PRIMARY KEY IDENTITY (1, 1),
	Descricao VARCHAR (255) NOT NULL,
	CONSTRAINT UN_Descricao unique (Descricao)
);

CREATE TABLE Veiculo (
 
	VeiculoID INT PRIMARY KEY IDENTITY (1, 1),
	Nome VARCHAR (250) NOT NULL,
	MarcaID INT NOT NULL,
	Condicao INT,
	Preco money,
	Portas INT,
	AnoFabricacao INT,
	AnoModelo INT,
	Constraint FK_MarcaId foreign key (MarcaID) references Marca (MarcaID),
	Constraint FK_Condicao foreign key (Condicao) references Veiculo (VeiculoID),
	);


Create table Venda 
(

	VendaID INT IDENTITY (1, 1),
	ClienteID INT NOT NULL,
	VeiculoID INT NOT NULL,
	DataVenda DateTime NOT NULL,
	FormaPagamento int Not null,
	CONSTRAINT PK_VendaID Primary Key (VendaID),
	CONSTRAINT FK_VeiculoID foreign key (VeiculoID) REFERENCES Veiculo,
	CONSTRAINT FK_FormaPagamento Foreign key (FormaPagamento) REFERENCES FormaPagamento,

);


-----------------------------

-----------DADOS-----------

--INSERT INTO Marca (Nome) values ('BMW');
--INSERT INTO Marca (Nome) values ('FIAT');
--INSERT INTO Marca (Nome) values ('CHEVROLET');
--INSERT INTO Marca (Nome) values ('MERCEDES-BENZ');
--INSERT INTO Marca (Nome) values ('TOYTA');
--INSERT INTO Marca (Nome) values ('FORD');
--INSERT INTO Marca (Nome) values ('AUDI');
--INSERT INTO Marca (Nome) values ('VOLKSWAGEM');

--select * from Marca

--insert into VeiculoCondicao (Descricao) Values ('Novo');
--insert into VeiculoCondicao (Descricao) Values ('Seminovo');
--insert into VeiculoCondicao (Descricao) Values ('Recuperado de financiamento');

--select * from VeiculoCondicao


		
--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Gol', 8, 2, 10.123, 4, 2020, 2021);

--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Parati', 8, 2, 10.123, 4, 2020, 2021);

--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Gol 1.0', 8, 2, 10.123, 4, 2021, 2022);

--insert into Cliente (Nome, telefone) values ('Mateus','15 9915 5651');
--insert into Cliente (Nome, telefone) values ('Raquel','11 9937 4521');
--insert into Cliente (Nome, telefone) values ('Maria','18 9929 7623');
--insert into Cliente (Nome, telefone) values ('Victor','11 9915 0987');
--insert into Cliente (Nome, telefone) values ('Miguel','11 9917 1356');
--insert into Cliente (Nome, telefone) values ('Marcia','11 9981 5432');

--insert into FormaPagamento (descricao) values ('PIX');
--insert into FormaPagamento (descricao) values ('Boleto');
--insert into FormaPagamento (descricao) values ('Cartão');

--select * from Marca
--select * from Veiculo
--select * from Cliente
--select * from FormaPagamento
--select * from Venda
--select * from VeiculoCondicao

--INSERT INTO Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento)
--VALUES (1, 2, '2022-09-01 10:00:00', 1); 


--INSERT into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(2, 2, '2022-09-12 02:30:00', 2);

--Insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(3, 2, '2022-15-08 14:15:00', 3);


--Insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(4,2, '2022-07-12 12:00:00', 2);


--Insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(5,2,'2022-21-07 01:20:00', 3);

--select * from Venda









