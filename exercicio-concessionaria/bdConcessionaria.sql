CREATE DATABASE bdConcessionaria

USE bdConcessionaria

CREATE TABLE tbModelo (
	idModelo INT PRIMARY KEY IDENTITY (1,1)
	,marcaModelo VARCHAR (30)
	,anoModelo INT
	,descrModelo VARCHAR (50)
);

CREATE TABLE tbCor (
	idCor INT PRIMARY KEY IDENTITY (1,1)
	,descricaoCor VARCHAR (50)
);

CREATE TABLE tbFuncionario (
	idFuncionario INT PRIMARY KEY IDENTITY (1,1)
	,nomeFuncionario VARCHAR (30)
	,dtNastFuncionario DATETIME
	,logFuncionario VARCHAR (30)
	,numLog INT
	,uFFuncionario VARCHAR (30)
	,ruaFuncionario VARCHAR (30)
	,bairroFuncionario VARCHAR (30)
);

CREATE TABLE tbFone (
	idFone INT PRIMARY KEY IDENTITY (1,1)
	,descriFone VARCHAR (50)
	,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
);

CREATE TABLE tbVeiculo (
	idVeiculo INT PRIMARY KEY IDENTITY (1,1)
	,diaVeiculo DATETIME
	,horaVeiculo DATETIME
	,placaVeiculo VARCHAR (7)
	,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
	,idModelo INT FOREIGN KEY REFERENCES tbModelo (idModelo)
	,idCor INT FOREIGN KEY REFERENCES tbCor (idCor)
);