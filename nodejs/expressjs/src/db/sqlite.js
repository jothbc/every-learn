import sqlite3 from 'sqlite3';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const open = () => {
  let db = new sqlite3.Database(__dirname + '/database.sqlite', (err) => {
    if (err) {
      return console.error(err.message);
    }
    console.log('Conexão bem-sucedida com o banco de dados SQLite.');
  });
  return db;
}
const close = (db) => {
  if(!db) return;
  db.close((err) => {
    if (err) {
      return console.error(err.message);
    }
    console.log('Conexão fechada com o banco de dados SQLite.');
  });
}

const run = async (command, params = []) => {
  var db;
  try {
    db = open();
    var result = await new Promise((resolve, reject) => {
      const stmt = db.prepare(command, params);
      stmt.run(params, function (err) {
        if (err) {
          return reject(err.message);
        }
        return resolve(this);
      })
    });
    return result;
  } catch (err) {
    return err
  } finally {
    close(db);
  }
}

const all = async (command, params = []) => {
  let db;
  try {
    db = open();
    var result = await new Promise((resolve, reject)=>{
      db.all(command, params, (err, rows) => {
        if (err) {
          return reject(err);
        }
        return resolve(rows);
      });
    });
    return result;
  } catch (err) {
    return err
  } finally {
    close(db);
  }
}

const db = {
  run,
  all
};

export default db;