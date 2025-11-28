SELECT p.Nome AS Produto, p.Preco, c.Nome AS Categoria, f.Nome AS Fornecedor
FROM Produto p
JOIN Categoria c ON p.ID_Categoria = c.ID_Categoria
JOIN Fornecedor f ON p.ID_Fornecedor = f.ID_Fornecedor;

SELECT p.Nome, e.QuantidadeAtual, e.NivelMinimo
FROM Estoque e
JOIN Produto p ON e.ID_Produto = p.ID_Produto
WHERE e.QuantidadeAtual < e.NivelMinimo;

SELECT *
FROM Movimentacao
WHERE Tipo = 'Entrada'
ORDER BY Data DESC;

SELECT p.Nome, SUM(m.Quantidade) AS TotalSaidas
FROM Movimentacao m
JOIN Produto p ON m.ID_Produto = p.ID_Produto
WHERE m.Tipo = 'Saida'
GROUP BY p.Nome
ORDER BY TotalSaidas DESC
LIMIT 2;