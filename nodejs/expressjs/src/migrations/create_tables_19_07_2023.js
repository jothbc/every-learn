const execute = `
  CREATE TABLE post(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    text VARCHAR(500),
    user_id INTEGER,
    created_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(id)
  )
`;

export default execute;