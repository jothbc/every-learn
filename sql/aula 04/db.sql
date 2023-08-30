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

create table produto(
  id int PRIMARY key AUTO_INCREMENT,
  nome varchar(50),
  preco decimal(10, 2),
  estoque int
);

create table item_pedido(
  id int PRIMARY key AUTO_INCREMENT,
  pedido_id int,
  produto_id int,
  FOREIGN KEY (pedido_id) REFERENCES pedido(id),
  FOREIGN KEY (produto_id) REFERENCES produto(id)
);