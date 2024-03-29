CREATE DATABASE T_Ssolve

USE T_Ssolve

CREATE TABLE Clientes 
(
IdCliente Int PRIMARY KEY IDENTITY 
,NomeFantasia VARCHAR (255) NOT NULL
,CNPJ VARCHAR (11) NOT NULL UNIQUE
,RazaoSocial VARCHAR (255) NOT NULL
,EnderecoCompleto VARCHAR (255) NOT NULL
);

CREATE TABLE Funcionarios
(
IdFuncionario INT PRIMARY KEY IDENTITY
,Nome VARCHAR (255)

);

CREATE TABLE Servicos
(
IdServico INT PRIMARY KEY IDENTITY 
,Tipo VARCHAR (255) NOT NULL
);

CREATE TABLE Sstatus
(
IdStatus INT PRIMARY KEY IDENTITY 
,Sstatus VARCHAR (255)
);
CREATE TABLE Comodos
(
IdComodo INT PRIMARY KEY IDENTITY 
,Comodos VARCHAR (255)
);

CREATE TABLE ServicosFuncionarios
(
IdFuncionarios INT FOREIGN KEY REFERENCES  Funcionarios (IdFuncionario)
,IdServico INT FOREIGN KEY REFERENCES Servicos (IdServico) 
);

CREATE TABLE Pedidos 
(
IdPedido INT PRIMARY KEY IDENTITY
,Valor VARCHAR (255) NOT NULL
,IdClientes INT FOREIGN KEY REFERENCES Clientes (IdCliente)
,IdServicos INT FOREIGN KEY REFERENCES Servicos (IdServico)
,IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios (IdFuncionario)
,IdStatus INT FOREIGN KEY REFERENCES Sstatus (IdStatus)
,idComodo INT FOREIGN KEY REFERENCES Comodos (IdComodo)
);