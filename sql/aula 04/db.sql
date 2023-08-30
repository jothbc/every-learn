create table clientes(
  id int PRIMARY key AUTO_INCREMENT,
  nome varchar(50),
  sobrenome varchar(100)
);

create table pedido(
  id int PRIMARY key AUTO_INCREMENT,
  cliente_id int,
  created_at timestamp,
  FOREIGN key (cliente_id) REFERENCES clientes(id)
);

create table categorias_produtos(
  id int PRIMARY key AUTO_INCREMENT,
  nome varchar(50)
);

create table produto(
  id int PRIMARY key AUTO_INCREMENT,
  nome varchar(50),
  preco decimal(10, 2),
  estoque int,
  categoria_id int,
  FOREIGN key (categoria_id) REFERENCES categorias_produtos(id)
);

create table item_pedido(
  id int PRIMARY key AUTO_INCREMENT,
  pedido_id int,
  produto_id int,
  FOREIGN KEY (pedido_id) REFERENCES pedido(id),
  FOREIGN KEY (produto_id) REFERENCES produto(id)
);

-- INSERTS


INSERT INTO categorias_produtos (nome) VALUES
    ('Bebidas'),
    ('Carnes'),
    ('Laticínios'),
    ('Higiene Pessoal'),
    ('Padaria'),
    ('Frutas e Verduras'),
    ('Limpeza Doméstica'),
    ('Produtos de Higiene'),
    ('Congelados'),
    ('Mercearia');

INSERT INTO produto (nome, preco, estoque, categoria_id) VALUES
    ('Refrigerante Coca-Cola', 5.99, 100, 1),
    ('Frango Assado', 15.75, 50, 2),
    ('Leite Integral', 3.49, 120, 3),
    ('Sabonete Dove', 2.25, 200, 4),
    ('Pão Francês', 0.75, 80, 5),
    ('Maçãs', 2.50, 150, 6),
    ('Detergente Líquido', 1.99, 90, 7),
    ('Shampoo Pantene', 8.50, 110, 8),
    ('Pizza Congelada', 12.99, 30, 9),
    ('Arroz Branco', 4.79, 200, 10),
    ('Cerveja Heineken', 6.49, 80, 1),
    ('Carne Moída', 10.25, 45, 2),
    ('Iogurte Natural', 2.99, 90, 3),
    ('Papel Higiênico', 3.75, 150, 4),
    ('Pão Integral', 1.00, 70, 5),
    ('Bananas', 1.75, 120, 6),
    ('Limpador Multiuso', 2.49, 100, 7),
    ('Condicionador Tresemmé', 7.75, 95, 8),
    ('Sorvete de Chocolate', 7.99, 25, 9),
    ('Feijão Preto', 3.29, 180, 10),
    ('Suco de Laranja', 4.50, 70, 1),
    ('Bife de Alcatra', 18.99, 40, 2),
    ('Queijo Mussarela', 7.25, 60, 3),
    ('Pasta de Dentes Colgate', 2.99, 180, 4),
    ('Croissant', 1.50, 65, 5),
    ('Melancia', 5.50, 85, 6),
    ('Desinfetante', 2.25, 110, 7),
    ('Creme Dental Sensodyne', 5.99, 75, 8),
    ('Lasanha Congelada', 9.99, 20, 9),
    ('Macarrão Espaguete', 2.79, 220, 10),
    ('Água Mineral', 1.25, 130, 1),
    ('Costela Suína', 13.49, 30, 2),
    ('Queijo Cheddar', 8.75, 40, 3),
    ('Sabonete em Barra', 1.25, 250, 4),
    ('Baguete', 1.25, 55, 5),
    ('Morangos', 3.99, 100, 6),
    ('Amaciante de Roupas', 4.49, 70, 7),
    ('Condicionador Herbal Essences', 6.25, 85, 8),
    ('Nuggets de Frango', 6.99, 40, 9),
    ('Feijão Carioca', 2.49, 150, 10),
    ('Chá Gelado', 2.75, 100, 1),
    ('Picanha', 22.99, 25, 2),
    ('Iogurte de Frutas', 2.75, 110, 3),
    ('Desodorante Rexona', 3.25, 190, 4),
    ('Rosquinhas', 1.25, 75, 5),
    ('Abacaxi', 2.99, 90, 6),
    ('Lustra Móveis', 2.25, 80, 7),
    ('Shampoo Head & Shoulders', 7.99, 60, 8),
    ('Sorvete de Baunilha', 7.49, 35, 9),
    ('Macarrão Instantâneo', 1.99, 200, 10);

INSERT INTO clientes (nome, sobrenome) VALUES
    ('Ana', 'Silva'),
    ('João', 'Santos'),
    ('Carla', 'Pereira'),
    ('Lucas', 'Oliveira'),
    ('Mariana', 'Souza'),
    ('Pedro', 'Almeida'),
    ('Juliana', 'Ferreira'),
    ('Fernando', 'Rocha'),
    ('Amanda', 'Cavalcanti'),
    ('Rafael', 'Costa'),
    ('Camila', 'Barbosa'),
    ('Gustavo', 'Gomes'),
    ('Larissa', 'Rodrigues'),
    ('Rodrigo', 'Martins'),
    ('Bianca', 'Nascimento'),
    ('Felipe', 'Carvalho'),
    ('Mariano', 'Mendes'),
    ('Isabela', 'Ramos'),
    ('André', 'Dias'),
    ('Luísa', 'Fonseca'),
    ('Thiago', 'Araújo'),
    ('Beatriz', 'Moreira'),
    ('Ricardo', 'Cardoso'),
    ('Natália', 'Machado'),
    ('Hugo', 'Pinto'),
    ('Lívia', 'Lima'),
    ('Bruno', 'Andrade'),
    ('Letícia', 'Barros'),
    ('Vitor', 'Fernandes'),
    ('Marina', 'Correia'),
    ('Eduardo', 'Garcia'),
    ('Carolina', 'Viana'),
    ('Guilherme', 'Monteiro'),
    ('Ana Clara', 'Oliveira'),
    ('Rafaela', 'Pereira'),
    ('Paulo', 'Santana'),
    ('Lívia', 'Azevedo'),
    ('Marcos', 'Campos'),
    ('Isabel', 'Barros'),
    ('Thiago', 'Farias'),
    ('Mariana', 'Gonçalves'),
    ('Fernanda', 'Rocha'),
    ('José', 'Mendes'),
    ('Renata', 'Lima'),
    ('Matheus', 'Castro'),
    ('Catarina', 'Dias'),
    ('Eduardo', 'Ferreira'),
    ('Luana', 'Martins'),
    ('Roberto', 'Albuquerque');

INSERT INTO pedido (cliente_id) VALUES
  (15),
  (8),
  (3),
  (10),
  (6),
  (1),
  (18),
  (12),
  (5),
  (20),
  (7),
  (2),
  (13),
  (11),
  (4),
  (9),
  (17),
  (14),
  (19),
  (16);
