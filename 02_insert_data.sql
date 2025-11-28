INSERT INTO Categoria VALUES
(1, 'Eletrônicos', 'Itens de tecnologia'),
(2, 'Roupas', 'Moda masculina e feminina'),
(3, 'Acessórios', 'Itens diversos');

INSERT INTO Fornecedor VALUES
(1, 'TechMaster Import', '12345678000199', '(11)99999-1111', 'contato@techmaster.com'),
(2, 'FashionPlus', '98765432000155', '(21)98888-2222', 'vendas@fashionplus.com'),
(3, 'AccStore', '11223344000177', '(31)97777-3333', 'suporte@accstore.com');

INSERT INTO Produto VALUES
(1, 'Smartphone X100', 1999.90, 1, 1),
(2, 'Camiseta Premium', 79.90, 2, 2),
(3, 'Relógio Digital', 149.50, 3, 3),
(4, 'Mouse Gamer', 120.00, 1, 1);

INSERT INTO Movimentacao VALUES
(1, 'Entrada', 50, '2025-01-10', 1, 1),
(2, 'Entrada', 100, '2025-01-11', 2, 2),
(3, 'Saida', 10, '2025-01-15', 1, NULL),
(4, 'Entrada', 30, '2025-01-20', 4, 1),
(5, 'Saida', 5, '2025-01-22', 3, NULL);

INSERT INTO Estoque VALUES
(1, 1, 40, 10),
(2, 2, 100, 20),
(3, 3, 15, 5),
(4, 4, 30, 8);