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

insert into author (first_name, last_name, email, address, birthday) values
('Rey', 'Radberry', 'Radbar@gmail.com', 'Brown street', '1966-12-12'),
('Stiven', 'King', 'Stiv@gmail.com', '42 street', '1953-02-05'),
('Leo', 'Tolstoy', 'Leo@ukr.net', 'Broadwey street', '1988-03-02'),
('James', 'Green', 'Jamgre@gmail.com', 'Times square', '1972-07-07'),
('Emily', 'Amis', 'Amis@ukr.net', '5 Avenu', '1935-01-11');

insert into genre (name) values
('Classic'),
('Detective'),
('Fantasy'),
('Drama'),
('Comedy');


insert into book (name, description, price, isbn, genre_id, author_id) values
('451 Farenheit', null, 150, 'RB-123-05', 3, 1),
('It', 'Horror', 300, 'RQ-183-05', 2, 2),
('War and peace', null, 400, 'QRE-765-00', 1, 3),
('Anna Karenina', null, 110, 'GH-123-05', 1, 3),
('Emma', null, 70, 'FF-123-05', 2, 5),
('Kidnapped', null, 170, 'FF-787-KJ', 4, 4),
('Robinson Crusoe', null, 180, 'QA-FGT-12', 5, 5);

insert into book_author (book_id, author_id) values
(1, 2),
(2, 1),
(1, 3),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(1, 5),
(3, 4),
(2, 4);

select 	book.name, book.price, book.isbn, genre.name as genre, author.first_name as author_first_name, author.last_name as author_last_name from book
left join genre on book.genre_id = genre.id
left join author on book.author_id = author.id;

select book.name, author.first_name, author.last_name, genre.name as genre, book.price from book_author
left join author on book_author.author_id = author.id
left join book on book_author.book_id = book.id 
left join genre on book.genre_id = genre.id;

