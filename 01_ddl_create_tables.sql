CREATE DATABASE IF NOT EXISTS loja_estoque;
USE loja_estoque;

CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao VARCHAR(200)
);

CREATE TABLE Fornecedor (
    ID_Fornecedor INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CNPJ CHAR(14) UNIQUE NOT NULL,
    Telefone VARCHAR(15),
    Email VARCHAR(120)
);

CREATE TABLE Produto (
    ID_Produto INT PRIMARY KEY,
    Nome VARCHAR(120) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    ID_Categoria INT NOT NULL,
    ID_Fornecedor INT NOT NULL,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);

CREATE TABLE Movimentacao (
    ID_Movimentacao INT PRIMARY KEY,
    Tipo VARCHAR(10) NOT NULL CHECK (Tipo IN ('Entrada','Saida')),
    Quantidade INT NOT NULL,
    Data DATE NOT NULL,
    ID_Produto INT NOT NULL,
    ID_Fornecedor INT,
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);

CREATE TABLE Estoque (
    ID_Estoque INT PRIMARY KEY,
    ID_Produto INT UNIQUE NOT NULL,
    QuantidadeAtual INT NOT NULL,
    NivelMinimo INT NOT NULL,
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);