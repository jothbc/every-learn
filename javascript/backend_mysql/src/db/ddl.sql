create database mw;

use mw;

create table users(
	id int primary key auto_increment,
	name varchar(200),
	email varchar(200) unique,
	password varchar(200),
	avatar varchar(200),
	created_at timestamp default current_timestamp,
	updated_at timestamp default current_timestamp on update current_timestamp
);

create table posts(
	id int primary key auto_increment,
	text varchar(5000),
	user_id int,
	foreign key (user_id) references users(id)
);