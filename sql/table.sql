-- CHANGE COLUMN NAME
ALTER TABLE minha_tabela CHANGE COLUMN nome_antigo nome_novo VARCHAR(255);

-- DROP COLUMN
ALTER TABLE minha_tabela DROP nome_coluna;

-- ADD COLUMN
ALTER TABLE minha_tabela add nome_coluna VARCHAR(255);

-- POSITION OF COLUMN
ALTER TABLE minha_tabela ADD COLUMN nova_coluna VARCHAR(255) FIRST;
ALTER TABLE minha_tabela ADD COLUMN nova_coluna VARCHAR(255) AFTER outra_coluna;

-- ADD UNIQUE 
ALTER TABLE usuarios ADD UNIQUE (email);
