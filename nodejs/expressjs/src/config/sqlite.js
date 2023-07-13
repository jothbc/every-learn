import sqlite3 from 'sqlite3';

const open = () => {
  let db = new sqlite3.Database('../database.sqlite', (err) => {
    if (err) {
      return console.error(err.message);
    }
    console.log('Conexão bem-sucedida com o banco de dados SQLite.');
  });
  return db;
}
const close = (db) => {
  db.close((err) => {
    if (err) {
      return console.error(err.message);
    }
    console.log('Conexão fechada com o banco de dados SQLite.');
  });
}

const run = (command)=>{
  const db = open();
  db.run(command, (err)=>{
    return console.log(err.message);
  })
  console.log('comando executado com sucesso.');
  close(db);
}

const all = (command, params = []) =>{
  const db = open();
  let result = undefined;
  db.all(command, params, (err, rows) => {
    if (err) {
      throw err;
    }
    result = rows;
  });
  close(db);
  return result;
}


export default {
  run,
  all
}