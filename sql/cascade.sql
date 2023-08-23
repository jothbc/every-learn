CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    valor DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id) ON DELETE CASCADE
);


-- Nesse exemplo, a tabela Pedidos tem uma coluna cliente_id que é uma chave estrangeira que faz referência à coluna id da tabela Clientes. 
-- A cláusula "ON DELETE CASCADE" é usada para especificar que, se um registro na tabela Clientes for excluído, 
-- todas as linhas correspondentes na tabela Pedidos também serão excluídas automaticamente.

-- Por exemplo, suponha que você tenha um cliente com o ID 1 e esse cliente tenha vários pedidos associados a ele na tabela Pedidos. 
-- Se você excluir o cliente com ID 1 da tabela Clientes, todas as linhas relacionadas na tabela Pedidos com o cliente_id igual 
-- a 1 também serão excluídas automaticamente devido à opção "CASCADE". Isso ajuda a manter a integridade referencial entre as tabelas.