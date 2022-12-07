DROP DATABASE LeonardoFalango;
CREATE DATABASE LeonardoFalango;

GO
	USE LeonardoFalango;

GO
	CREATE TABLE Editora (
		id int primary key identity,
		nome varchar(50) NOT NULL
	)



GO
	CREATE TABLE Livros (
		id int primary key identity,
		nome varchar(50),
		id_editora int,
		FOREIGN KEY (id_editora) references Editora(id)
	)

/*
	Exercicio:
		Inserir 3 editoras (cia das letra é uma)
		Inserir os Livros (4 livros pelo menos é da cia das letras)
		Mostrar o nome dos livros que são da editora cia das letras SEM USAR JOIN
		Pesquisar por WHERE = 'cia das letras'
*/

INSERT INTO Editora (nome) 
	VALUES ('cia das letras'),
		('leitores anonimos'),
		('leitura legal')


INSERT INTO Livros
	VALUES ('Harry Potter e a Pedra Filosofal', 1), --1 é a cia das letras
		('Dom quixote', 2), --2 é a leitores anonimos
		('O Conde de Monte Cristo', 3), --3 é a leitura legal
		('O Pequeno Principe', 1),
		('O Senhor dos Aneis', 1),
		('Harry Potter e o Enigma do Príncipe', 1),
		('O Caso dos Dez Negrinhos', 1),
		('Cinquenta Tons de Cinza', 2),
		('Cinquenta Tons Mais Escuros', 2),
		('Ela, a Feiticeira', 3)

SELECT Livros.nome FROM Livros
	WHERE Livros.id_editora = (SELECT Editora.id FROM Editora WHERE Editora.nome = 'cia das letras')