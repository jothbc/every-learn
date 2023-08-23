const { sql, close, open } = require('./mysql.js');
const { faker } = require('@faker-js/faker');

(async () => {
  await open();
  await sql('create database aula02');
  await sql(`
    create table aula02.produtos(
      id int primary key auto_increment,
      nome varchar(50),
      preco decimal(10,2),
      estoque int,
      categoria varchar(50)
    )
  `);
  await sql(`
    create table aula02.cursos(
      id int primary key auto_increment,
      nome varchar(50),
    )
  `);

  await sql(`
    create table aula02.alunos(
      id int primary key auto_increment,
      nome varchar(50),
      sobrenome varchar(50),
      idade int,
      curso_id int,
      foreign key(curso_id) references cursos(id)
    )
  `);

  await Promise.allSettled(
    Array.from({ length: 100 }, (i) => i).map(() => {
      return sql(`insert into aula02.produtos(nome, preco, estoque, categoria) values (?,?,?,?)`, [faker.commerce.product(), faker.commerce.price(), faker.number.int({ min: 0, max: 300 }), faker.commerce.department()])
    })
  )
  const cursos = [
    'Engenharia de Software',
    'Ciência da Computação',
    'Design Gráfico',
    'Administração de Empresas',
    'Marketing Digital',
    'Medicina',
    'Direito',
    'Engenharia Civil',
    'Psicologia',
    'Arquitetura',
    'Economia',
    'Enfermagem',
    'Biologia',
    'Física',
    'Matemática',
    'Química',
    'História',
    'Geografia',
    'Letras',
    'Pedagogia',
    'Gastronomia',
    'Engenharia Elétrica',
    'Música',
    'Cinema',
    'Teatro',
    'Dança',
    'Jornalismo',
    'Relações Internacionais',
    'Design de Moda',
    'Engenharia Mecânica',
    'Nutrição',
    'Farmácia',
    'Veterinária',
    'Fisioterapia',
    'Odontologia',
    'Artes Plásticas',
    'Turismo',
    'Hotelaria',
    'Engenharia Química',
    'Engenharia de Alimentos',
    'Medicina Veterinária',
    'Engenharia de Produção',
    'Astrofísica',
    'Engenharia Aeroespacial',
    'Robótica',
    'Geologia',
    'Neurociência'
  ];
  await Promise.allSettled(
    cursos.map((curso) => {
      return sql(`insert into aula02.cursos(nome) values (?)`, [curso]);
    })
  )
  await Promise.allSettled(
    Array.from({ length: 100 }, (i) => i).map(() => {
      return sql(`insert into aula02.alunos(nome,sobrenome, idade, curso_id) values (?,?,?)`, [faker.person.firstName(), faker.person.lastName(), faker.number.int({ min: 18, max: 80 }), faker.number.int({ min: 1, max: 100 })])
    })
  )

  await close();



})();