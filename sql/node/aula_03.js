const { sql, close, open } = require('./mysql.js');
const { faker } = require('@faker-js/faker');

(async () => {
  await open();
  await sql('drop database if exists aula03');
  await sql('create database aula03');

  // Tabela de Categorias
  await sql(`
    create table aula03.categorias(
      id int primary key auto_increment,
      nome varchar(50) unique
    )
  `);

  const categorias = [...new Set(Array.from({ length: 20 }, () => faker.commerce.department()))];
  await Promise.allSettled(
    categorias.map((categoria) => {
      return sql(`insert into aula03.categorias(nome) values (?)`, [categoria]);
    })
  );

  // Tabela de Produtos
  await sql(`
    create table aula03.produtos(
      id int primary key auto_increment,
      nome varchar(50),
      preco decimal(10,2),
      estoque int,
      categoria_id int,
      foreign key(categoria_id) references aula03.categorias(id)
    )
  `);

  await Promise.allSettled(
    Array.from({ length: 100 }, () => { }).map(() => {
      return sql(`insert into aula03.produtos(nome, preco, estoque, categoria_id) values (?, ?, ?, ?)`,
        [faker.commerce.product(), faker.commerce.price(), faker.number.int({ min: 0, max: 300 }), faker.number.int({ min: 1, max: categorias.length })]);
    })
  );

  // Tabela de Pedidos
  await sql(`
    create table aula03.pedidos(
      id int primary key auto_increment,
      data_pedido date
    )
  `);

  await Promise.allSettled(
    Array.from({ length: 50 }, () => { }).map(() => {
      return sql(`insert into aula03.pedidos(data_pedido) values (?)`, [faker.date.recent(365)]);
    })
  );

  // Tabela de ItensPedido
  await sql(`
    create table aula03.itenspedido(
      id int primary key auto_increment,
      pedido_id int,
      produto_id int,
      quantidade int,
      foreign key(pedido_id) references aula03.pedidos(id),
      foreign key(produto_id) references aula03.produtos(id)
    )
  `);

  await Promise.allSettled(
    Array.from({ length: 200 }, () => { }).map(() => {
      return sql(`insert into aula03.itenspedido(pedido_id, produto_id, quantidade) values (?, ?, ?)`,
        [faker.number.int({ min: 1, max: 50 }), faker.number.int({ min: 1, max: 100 }), faker.number.int({ min: 1, max: 5 })]);
    })
  );

  await close();
})();
