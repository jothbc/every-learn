const { sql, close, open } = require('./mysql.js');
const { faker } = require('@faker-js/faker');

(async () => {
  await open();

  
  const arr = Array.from({ length: 500 }, (i) => i);
  await Promise.allSettled(
    arr.map((categoria) => {
      const date = new Date(faker.number.int({min: 1672531200000, max: new Date().getTime()}));
      return sql(`insert into aula_fk.passaportes(numero, data_emissao, pessoa_id) values (?,?, ?)`, [
        faker.number.int({min: 1, max: 9999999 }),
        `${date.getFullYear()}-${date.getMonth()}-${date.getDay()}`,
        faker.number.int({min: 1, max:50 }),
      ]);
    })
  );

  await close();
})();
