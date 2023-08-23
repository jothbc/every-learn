const mysql = require('mysql2');
const faker = require('@faker-js/faker');

// Configurações da conexão ao banco de dados
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'mw_biblioteca'
});

// Conectar ao banco de dados
connection.connect(err => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
  } else {
    console.log('Conexão bem-sucedida ao banco de dados');
  }
});

// Métodos CRUD

// CREATE
const create = (table, objValues) => {
  const obj = Object.entries(objValues);
  const query = `INSERT INTO ${table} (${obj.map(([k])=>k).join(',')}) VALUES (${obj.map(([k])=>k).map(() => '?').join(',')})`;
  connection.query(query, obj.map(([k,v])=>v), (err, results) => {
    if (err) {
      console.error('Erro ao criar:', err);
    } else {
      console.log('Criado com sucesso');
    }
  });
};

// READ
const getAll = (table) => {
  const query = `SELECT * FROM ${table}`;
  connection.query(query, (err, results) => {
    if (err) {
      console.error('Erro ao buscar:', err);
    } else {
      console.log('Resultado:', results);
    }
  });
};

// UPDATE
const updateProductPrice = (productId, newPrice) => {
  const query = 'UPDATE products SET price = ? WHERE id = ?';
  connection.query(query, [newPrice, productId], (err, results) => {
    if (err) {
      console.error('Erro ao atualizar preço do produto:', err);
    } else {
      console.log('Preço do produto atualizado com sucesso');
    }
  });
};

// DELETE
const deleteProduct = productId => {
  const query = 'DELETE FROM products WHERE id = ?';
  connection.query(query, [productId], (err, results) => {
    if (err) {
      console.error('Erro ao deletar produto:', err);
    } else {
      console.log('Produto deletado com sucesso');
    }
  });
};

for(let x=0;x<500;x++){
  create('autor', {
    nome: faker.faker.person.fullName(),
    nacionalidade: faker.faker.location.country(),
    nascimento: faker.faker.date.birthdate({min: 1500, max: 2005})
  });
}
getAll('autor');
// updateProductPrice(1, 12.99);
// deleteProduct(1);

// Fechar a conexão após as operações
connection.end();
