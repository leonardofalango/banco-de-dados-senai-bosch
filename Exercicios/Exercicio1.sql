USE LeonardoFalango; -- Usando a database LeonardoFalango


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
('Mizael S�tima', '090.654.213-12'),
('Iara Paula', '123.654.741-35'),
('Lucy Lage', '874.104.789-01');

INSERT INTO Produtos VALUES
('Sabonete IPE', 5),
('XAMPU generico', 12.96),
('Maçã Verde KG', 2.98),
('Tevelisão 67 polegadas', 5963),
('Doritos 1 KG', 82.65),
('Amaciante OMO', 36.6),
('Kit Shampoo e Condicionador DOVE', 30.65)




