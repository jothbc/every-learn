const { sql, close, open } = require('./mysql.js');
const { faker } = require('@faker-js/faker');

(async () => {
  await open();
  
  const arr = Array.from({ length: 1000 }, (i) => i);
  await Promise.allSettled(
    arr.map((categoria) => {
      return sql(`insert into aula04.item_pedido(pedido_id, produto_id) values (?,?)`, [
        faker.number.int({min: 1, max:20 }),
        faker.number.int({min: 1, max:50 }),
      ]);
    })
  );

  await close();
})();
