-- Projeto Mercado


create database mercado;

use mercado;

create table usuario (
	id int unsigned auto_increment primary key,
	name varchar(255)
);

create table produto(
	id int unsigned auto_increment primary key,
	name varchar(255),
	value decimal(10,2)
);

create table item_pedido (
	id int unsigned auto_increment primary key,
	fk_id_produto int unsigned,
	fk_id_pedido int unsigned,
	qtd decimal(10,2),
	foreign key (fk_id_produto) references produto(id),
	foreign key (fk_id_pedido) references pedido(id)
);

create table pedido (
	id int unsigned auto_increment primary key,
	fk_id_usuario int unsigned,
	created_at datetime default CURRENT_TIMESTAMP,
	foreign key (fk_id_usuario) references usuario(id)
);


insert into pedido (fk_id_usuario) values (1);
select * from pedido

insert into item_pedido (fk_id_produto, fk_id_pedido, qtd) values (1,1,5);
select * from item_pedido

select pedido.id as pedido_id, item_pedido.fk_id_produto as id_produto, produto.name  ,pedido.created_at as data_pedido, usuario.name as cliente 
	from pedido 
	join usuario on usuario.id = pedido.fk_id_usuario
	join item_pedido on item_pedido.fk_id_pedido = pedido.id
	join produto on produto.id = item_pedido.fk_id_produto