/*
1 para 1 (1:1):
Um exemplo prático de relacionamento 1 para 1 poderia ser entre uma tabela de Pessoa e uma tabela de Passaporte. 
Cada pessoa tem um único passaporte e cada passaporte está vinculado a apenas uma pessoa.

Tabelas:
Tabela Pessoa: id, nome, data_nascimento
Tabela Passaporte: id, numero, data_emissao, pessoa_id (chave estrangeira referenciando a tabela Pessoa)
*/

CREATE TABLE Pessoa (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE Passaporte (
    id INT PRIMARY KEY,
    numero VARCHAR(20),
    data_emissao DATE,
    pessoa_id INT,
    FOREIGN KEY (pessoa_id) REFERENCES Pessoa(id)
);

/*
1 para Muitos (1:N):
Um exemplo de relacionamento 1 para muitos poderia ser entre uma tabela Departamento e uma tabela Funcionario. 
Cada departamento pode ter vários funcionários, mas cada funcionário pertence a apenas um departamento.

Tabelas:
Tabela Departamento: id, nome, descricao
Tabela Funcionario: id, nome, cargo, departamento_id (chave estrangeira referenciando a tabela Departamento)
*/

CREATE TABLE Departamento (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT
);

CREATE TABLE Funcionario (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id)
);

/*
Muitos para Muitos (N:N):
Um exemplo de relacionamento muitos para muitos poderia ser entre uma tabela Aluno e uma tabela Curso, 
onde um aluno pode estar matriculado em vários cursos e um curso pode ter vários alunos.

Tabelas:
Tabela Aluno: id, nome, data_nascimento
Tabela Curso: id, nome
Tabela intermediária Matricula: aluno_id (chave estrangeira referenciando a tabela Aluno), 
curso_id (chave estrangeira referenciando a tabela Curso)
No exemplo "Muitos para Muitos", é necessário usar uma tabela intermediária (como Matricula) 
para representar o relacionamento, já que não é prático incluir várias chaves estrangeiras diretamente em uma das tabelas.
*/

CREATE TABLE Aluno (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE Curso (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Matricula (
    aluno_id INT,
    curso_id INT,
    PRIMARY KEY (aluno_id, curso_id),
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id),
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);
