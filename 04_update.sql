UPDATE Produto 
SET Preco = 2099.99
WHERE ID_Produto = 1;

UPDATE Fornecedor 
SET Telefone = '(11)90000-0000'
WHERE ID_Fornecedor = 1;

UPDATE Estoque
SET QuantidadeAtual = QuantidadeAtual - 10
WHERE ID_Produto = 1;