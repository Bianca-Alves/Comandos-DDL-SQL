CREATE DATABASE bdConsulta

USE bdConsulta

CREATE TABLE tbPaciente (
	codPaciente INT PRIMARY KEY IDENTITY (1,1)
	,nomPaciente VARCHAR (30)
	,convenio VARCHAR (30)
	,rgPaciente INT
);

CREATE TABLE tbMedico (
	codMedico INT PRIMARY KEY IDENTITY (1,1)
	,nomeMedico VARCHAR (30)
	,crnMedico INT
	,rgMedico INT
);

CREATE TABLE tbTelefone (
	codTelefone INT PRIMARY KEY IDENTITY (1,1)
	,numeroTel INT
	,codPaciente INT FOREIGN KEY REFERENCES tbPaciente (codPaciente)
);

CREATE TABLE tbEndereco (
	codEndereco INT PRIMARY KEY IDENTITY (1,1)
	,logradouro VARCHAR (30)
	,numero INT
	,cep INT
	,bairro VARCHAR (30)
	,cidade VARCHAR (30)
	,estado VARCHAR (30)
	,codPaciente INT FOREIGN KEY REFERENCES tbPaciente (codPaciente)
);

CREATE TABLE tbConsulta (
	codConsulta INT PRIMARY KEY IDENTITY (1,1)
	,dataConsulta DATETIME
	,horaConsulta DATETIME
	,codPaciente INT FOREIGN KEY REFERENCES tbPaciente (codPaciente)
	,codMedico INT FOREIGN KEY REFERENCES tbMedico (codMedico)
);