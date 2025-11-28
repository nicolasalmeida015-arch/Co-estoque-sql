📦 Sistema de Controle de Estoque – SQL

Este repositório contém os scripts SQL do projeto de banco de dados para um Sistema de Controle de Estoque de uma Loja Online. Inclui criação das tabelas, inserção de dados, consultas, atualizações e exclusões.

🗂 Arquivos do Repositório

01_ddl_create_tables.sql – Criação do banco e tabelas

02_insert_data.sql – Inserção de dados iniciais

03_select_queries.sql – Consultas (SELECT)

04_update.sql – Atualizações (UPDATE)

05_delete.sql – Exclusões (DELETE)

README.md – Documentação do projeto

🧱 Estrutura do Banco de Dados
🔹 Tabelas

Categoria: ID_Categoria, Nome, Descricao

Fornecedor: ID_Fornecedor, Nome, CNPJ, Telefone, Email

Produto: ID_Produto, Nome, Preco, ID_Categoria (FK), ID_Fornecedor (FK)

Movimentacao: ID_Movimentacao, Tipo, Quantidade, Data, ID_Produto (FK), ID_Fornecedor (FK opcional)

Estoque: ID_Estoque, ID_Produto (FK e único), QuantidadeAtual, NivelMinimo

🚀 Como Executar no MySQL

Abra o MySQL Workbench

Execute 01_ddl_create_tables.sql

Execute 02_insert_data.sql

Rode os demais scripts para testar SELECT, UPDATE e DELETE

✔ Normalização & Relacionamentos

Modelo validado em 1FN, 2FN e 3FN

Relacionamentos principais:

Produto–Categoria (N:1)

Produto–Fornecedor (N:1)

Produto–Estoque (1:1)

Produto–Movimentação (1:N)
