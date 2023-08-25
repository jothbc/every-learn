-- Projeto Biblioteca
create table livro (
	id int unsigned primary key auto_increment,
	titulo varchar(200),
	autor varchar(200),
	data_lancamento date,
	categoria varchar(100)
);


insert into livro (titulo, autor, preco, data_lancamento, categoria) values ('Herry Potter e o Enigma do Príncipe', 'J. K. Rowling',2199.90, now(), 'fnatasia')

select * from livro

update livro set categoria = 'fantasia', autor = 'J. K. Rowling' where id = 1

select concat(autor, ' escreveu ', titulo) from livro

select UPPER(autor) from livro

alter table livro drop column preco;
-- alter table livro modify column preco decimal(10,2) after autor;
alter table livro add preco decimal(10,2) after autor

update livro set preco = 1199.90 where id = 1

select CAST(YEAR(data_lancamento) as CHAR) as ano, titulo from livro

select datediff('2020-01-01', data_lancamento) from livro 


insert into livro (titulo, autor, preco, data_lancamento, categoria) values ('É Assim Que Acaba', 'Collen Hoover',34.10, '2018-01-18', 'Romance');

insert into livro (titulo, autor, preco, data_lancamento, categoria) values ('Livro O Diário Perdido De Gravity Falls', 'R.L. Stine',79.90, '2020-01-31', 'Infantil');

select *, count(*) as livros from livro group by autor