DROP DATABASE IF EXISTS  library_version_two;
CREATE DATABASE library_version_two;
USE library_version_two;
create table book(
	id int not null primary key auto_increment,
    name varchar(60) not null unique,
    description text,
    price int not null,
    isbn varchar(15) not null unique,
	genre_id int not null,
    author_id int not null
    );
create table genre(
	id int not null primary key auto_increment,
    name varchar(20) not null
    );
alter table book add foreign key (genre_id)
	references genre(id);
create table author(
	id int not null primary key auto_increment,
	first_name varchar(40) not null,
    last_name varchar(40) not null,
    email varchar(50) not null unique,
    address varchar(70) not null unique,
    birthday date not null
    );
create table book_author(
	id int not null primary key auto_increment,
	book_id int not null,
    author_id int not null
);
alter table book_author add foreign key (book_id)
	references book(id);
alter table book_author add foreign key (author_id)
	references author(id);