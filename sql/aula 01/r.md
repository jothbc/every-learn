- 1

```sql
create DATABASE Loja CHARACTER set utf8 COLLATE utf8_general_ci;
```

- 2
    
```sql
create table produtos (
    id int PRIMARY key AUTO_INCREMENT,
    nome varchar(100),
    preco decimal(10,2),
    estoque int
)
```
    
- 3
```sql
alter table produtos add categoria varchar(50)
```
- 4

```sql
insert into produtos (nome, preco, estoque, categoria) values ('ford ka', 50499.99, 10, 'carro');

insert into produtos (nome, preco, estoque, categoria) values ('yamaha titan', 10800, 50, 'moto');

insert into produtos (nome, preco, estoque, categoria) values ('eco sport', 120000, 5, 'carro');
```
    
- 5

```sql
update produtos set nome =  'ford ka 2', preco = 55000 where id = 1
```
    
- 6
    
```sql
delete from produtos where id = 3
```

- 7
    
```sql
drop table produtos
```
    
- 8
    
```sql
drop database loja
```
    
- 9
    
```sql
create database escola character set urf8 collate utf8_general_ci;
use escola;

create table alunos(
    id int primary key auto_increment,
    nome varchar(100),
    idade int,
    curso_id int
);

create table cursos(
    id int primary key auto_increment,
    nome varchar(50)
);

alter table alunos add FOREIGN key(curso_id) REFERENCES cursos(id);
```
    
- 10
    
```sql
alter table alunos add email varchar(100)
```