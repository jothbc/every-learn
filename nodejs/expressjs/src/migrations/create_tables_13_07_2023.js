const execute = `
  CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    avatar VARCHAR(255),
    password VARCHAR(100) NOT NULL
  )
`;

export default execute;