const mysql = require('mysql2');

var connection;

const open = () => {
  return new Promise((resolve, reject) => {
    connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'mw_biblioteca'
    });
    connection.connect(err => {
      if (err) {
        console.error('Erro ao conectar ao banco de dados:', err);
        return reject(results);
      } else {
        return resolve({ message: 'ok' })
      }
    });
  })
}

const sql = (query, params = []) => {
  return new Promise((resolve, reject) => {
    connection.query(query, [...params], (err, results) => {
      if (err) {
        console.error('Erro:', err);
        return reject(results);
      }
      console.log(results);
      return resolve(results);
    });
  })
}


const close = () => connection?.end();

// Conectar ao banco de dados
module.exports = { open, sql, close }
