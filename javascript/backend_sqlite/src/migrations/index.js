import db from '../db/sqlite.js';

console.log(await db.run(`CREATE TABLE user(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  avatar VARCHAR(255),
  password VARCHAR(100) NOT NULL
)`));
console.log(await db.run(`CREATE TABLE post(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  text VARCHAR(500),
  user_id INTEGER,
  created_at TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user(id)
)`));

