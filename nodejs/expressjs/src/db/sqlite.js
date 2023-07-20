import sqlite3 from 'sqlite3';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const open = () => {
  let db = new sqlite3.Database(__dirname + '/database.sqlite', sqlite3.OPEN_READWRITE | sqlite3.OPEN_CREATE, (err) => {
    if (err) {
      console.error(err.message);
    } else {
      console.log('Conexão bem-sucedida com o banco de dados SQLite.');
    }
  });
  return db;
};

const close = (db) => {
  if (db) {
    db.close((err) => {
      if (err) {
        console.error(err.message);
      } else {
        console.log('Conexão fechada com o banco de dados SQLite.');
      }
    });
  }
};

const run = async (command, params = []) => {
  let db;
  try {
    db = open();
    const result = await new Promise((resolve, reject) => {
      db.run(command, params, function (err) {
        if (err) {
          reject(err.message);
        } else {
          resolve(this);
        }
      });
    });
    return result;
  } catch (err) {
    return err;
  } finally {
    close(db);
  }
};

const all = async (command, params = []) => {
  let db;
  try {
    db = open();
    const result = await new Promise((resolve, reject) => {
      db.all(command, params, (err, rows) => {
        if (err) {
          reject(err);
        } else {
          resolve(rows);
        }
      });
    });
    return result;
  } catch (err) {
    return err;
  } finally {
    close(db);
  }
};

const db = {
  run,
  all
};

export default db;
