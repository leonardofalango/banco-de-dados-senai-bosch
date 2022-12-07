/* USE master
DROP DATABASE LeonardoFalango;
CREATE DATABASE LeonardoFalango; */

USE LeonardoFalango; -- Usando a database LeonardoFalango

SELECT DATEFORMAT FROM syslanguages WHERE NAME = @@LANGUAGE; -- Verifying the data format dd/mm/yyyy or ...

SELECT CAST(2.12 as numeric(3,2)) as number; -- Numeric type for formating
SELECT CAST(21 as numeric(4,2)) as number;


/* Atividade

BANCO MERCADO:
cliente,	produto,	venda

Inserir 3 clientes, 5 produtos e 6 vendas
Mostrar as vendas com nome do cliente e nome do produto
*/

CREATE TABLE Clientes (
	id INT PRIMARY KEY IDENTITY,
	nome VARCHAR(80) NOT NULL,
	cpf VARCHAR(15) UNIQUE NOT NULL,
	data_cadastro DATE  NOT NULL DEFAULT getdate()
)

CREATE TABLE Produtos (
	id INT PRIMARY KEY IDENTITY,
	nome VARCHAR(20) NOT NULL,
	preco DECIMAL(10,2) NOT NULL
)

CREATE TABLE Vendas (
	id INT PRIMARY KEY IDENTITY,
	id_cliente INT NOT NULL,
	id_produto INT NOT NULL,
	data_venda DATE NOT NULL DEFAULT getdate(),
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
	FOREIGN KEY (id_produto) REFERENCES Produtos(id),
)

INSERT INTO Clientes VALUES
	('Mizael S�tima', '090.654.213-12', '07-02-2020'),
	('Iara Paula', '123.654.741-35', '05-21-2021'),
	('Lucy Lage', '874.104.789-01', '09-20-2022');

INSERT INTO Produtos VALUES
	('Sabonete IPE', 5),
	('XAMPU generico', 12.96),
	('Maçã Verde KG', 2.98),
	('Tevelisão 67 pol', 5963),
	('Doritos 1 KG', 82.65),
	('Amaciante OMO', 36.6),
	('Kit Shampoo e Condicionador DOVE', 30.65)


INSERT INTO Vendas VALUES
	(1, 5, '11-23-2022'),
	(1, 6, '11-23-2022'),
	(2, 9, '11-20-2022'),
	(3, 5, '11-20-2022'),
	(1, 7, '11-20-2022'),
	(2, 8, '11-20-2022'),
	(2, 8, '11-20-2022'),
	(2, 10, '11-20-2022')




SELECT * FROM Clientes
SELECT * FROM Produtos
SELECT * FROM Vendas

SELECT Clientes.nome, Produtos.nome, Vendas.data_venda FROM Vendas
	INNER JOIN Clientes
	ON Vendas.id_cliente = Clientes.id
	INNER JOIN Produtos
	ON Vendas.id_produto = Produtos.id

