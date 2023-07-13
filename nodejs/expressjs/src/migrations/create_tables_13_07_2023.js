const execute = `
  CREATE TABLE user(
    id int auto_increment primary key,
    name varchar(100),
    email varchar(100),
    avatar varchar(255),
    password varchar(100)
  )
`;

export default execute;