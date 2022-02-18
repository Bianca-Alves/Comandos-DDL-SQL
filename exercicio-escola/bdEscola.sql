CREATE DATABASE bdEscola

USE bdEscola

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY(1,1)
	,dataMatricula SMALLDATETIME
	,codAluno INT
	,codTurma INT
);

CREATE TABLE tbAluno(
	codAluno_codAluno INT FOREIGN KEY REFERENCES tbMatricula
	,nomeAluno VARCHAR(30)
	,dataNascAluno SMALLDATETIME
	,rgAluno VARCHAR(30)
	,naturalAluno VARCHAR(30)
);

CREATE TABLE tbTurma(
	codTurma_codTurma INT FOREIGN KEY REFERENCES tbMatricula
	,nomeTurma VARCHAR(30)
	,horarioTurma SMALLDATETIME
	,codCurso INT PRIMARY KEY IDENTITY(1,1)
);

CREATE TABLE tbCurso(
	codCurso_codCurso INT FOREIGN KEY REFERENCES tbTurma
	,nomeCurso VARCHAR(30)
	,cargahoraCurso SMALLDATETIME
	,valorCurso VARCHAR(30)
);