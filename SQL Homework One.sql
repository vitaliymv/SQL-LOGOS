DROP DATABASE IF EXISTS  library;
CREATE DATABASE library;
USE library;
CREATE TABLE books(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title_of_the_book VARCHAR(120) NOT NULL,
    description TEXT,
    publishing_date DATE NOT NULL DEFAULT '2018-01-01',
    category VARCHAR(30) NOT NULL,
    ISBN VARCHAR(20) NOT NULL UNIQUE,
    numbers_of_page INT NOT NULL,
	author_name VARCHAR(45) NOT NULL,
    author_lastname VARCHAR(45) NOT NULL,
    author_email VARCHAR(50) NOT NULL UNIQUE,
    author_age SMALLINT NOT NULL,
    auhor_date_of_birth DATE NOT NULL,
    author_awards VARCHAR(120) NULL
    );
SELECT * FROM books;
INSERT INTO books (title_of_the_book, description, publishing_date, category, ISBN, numbers_of_page, author_name, author_lastname, author_email, author_age, auhor_date_of_birth, author_awards)
VALUES
('451 ° Fahrenheit', NULL, '1953-01-19', 'Science fiction', 'RF-012-750', 140, 'Ray', 'Bradbury', 'Raybradbury@gmail.com', 25, '1940-05-22', 'Medals fond`s'),
('It', 'Horror', '1986-12-05', 'Roman', 'RD-015-823', 1138, 'Stiven', 'King', 'StivKing@gmail.com', 72, '1947-09-21', 'Best roman'),
('War and Peace', NULL, '1869-05-09', 'Historical novel', 'QF-123-3450', 1225, 'Leo', 'Tolstoy', 'LevTolstoy@gmail.com', 28, '1940-05-05', NULL),
('Anna Karenina', NULL, '1877-10-01', 'Realist novel', 'RF-013-756', 860, 'Leo', 'Tolstoy', 'Leotolstoy@gmail.com', 25, '1940-05-22', 'Medals fond`s'),
('2Kg words', NULL, '2019-01-19', 'Roman', 'RTI-6321967-23', 120, 'Alex', 'Polyarinov', 'Polyarinov@gmail.com', 80, '1980-11-12', NULL),
('Black cat', NULL, '2018-10-29', 'Child literature', 'RF-011-750', 120, 'Eddgar', 'Allan', 'Edallan@gmail.com', 60, '1960-05-22', NULL),
('Pilgrims Journey to Heavenly Land', NULL, '1990-01-19', 'Fantasy', 'RF-0123_50', 800, 'Joan', 'Rouding', 'Joanroud@ukr.net', 50, '1970-05-22', 'Medals fond`s'),
('Garry Potter', 'Roman`s seria', '1941-01-19', 'Fantasy', 'QF-0123_50', 50, 'Muriel', 'Spark', 'Spark@ukr.net', 21, '1970-05-16', NULL),
('Robinson Crusoe', NULL, '1941-01-19', 'Comedy', 'RQ-0123_50', 50, 'Lawrence', 'Stern', 'Stern@ukr.net', 72, '1911-01-30', 'Medals fond`s'),
('Clarissa', 'Comedy', '2001-01-01', 'Fantasy', 'RW-0123_50', 30, 'Jane', 'Rousten', 'Jane@ukr.net', 74, '1910-02-10', 'Medals fond`s'),
('Emma', NULL, '2000-01-01', 'Classic', 'RF-0123_5E', 1234, 'Mary', 'Shelley', 'Mary@ukr.net', 88, '1870-03-11', 'Medals fond`s'),
('Abbey of Nightmares', 'Horror', '1999-12-31', 'Drama', 'RR-0123_50', 120, 'Aldous', 'Faulkner', 'Aldous@ukr.net', 18, '1830-04-16', NULL),
('Vanity Fair', NULL, '1960-07-25', 'Drama', 'RF-Q3_50', 1200, 'Virginia', 'Huxley', 'Virginia@ukr.net', 21, '1919-05-15', 'Medals fond`s'),
('Scarlet Letter', 'Best english book', '1942-05-19', 'Comedy', 'RF-3573_50', 450, 'Anita', 'Waugh', 'Anita@ukr.net', 20, '1917-06-12', 'Medals fond`s'),
('Kidnapped', 'Best english book', '1981-01-25', 'Horror', 'RQQF-0123_50', 150, 'James', 'Green', 'James@ukr.net', 35, '1953-07-08', 'Medals fond`s'),
('Sign of four', 'Best english book', '1969-02-12', 'Fantasy', 'RDF-0123_50', 110, 'John', 'Lauri', 'Lauri@ukr.net', 20, '1934-08-04', 'Medals fond`s'),
('New street of literary bohemia', 'Classic', '2005-11-19', 'Fantasy', 'RF-0123_5F0', 100, 'Max', 'Bowen', 'Max@ukr.net', 42, '1912-09-02', 'Medals fond`s'),
('Kim', NULL, '2007-05-10', 'Drama', 'RF-012QR3_50', 750, 'Jack', 'Orwell', 'Orwell@ukr.net', 51, '1816-10-24', 'Medals fond`s'),
('Golden bowl', 'Best english book', '2009-08-08', 'Detective', 'RF-012YY3_50', 1500, 'Theodore', 'Bellow', 'Bellow@ukr.net', 59, '1970-11-05', 'Medals fond`s'),
('Adrian VII', NULL, '2012-12-12', 'Detective', 'QW-0123_50', 50, 'Joseph', 'Golding', 'Jos@ukr.net', 54, '1881-12-03', 'Medals fond`s'),
('Zuleika Dobson', 'Best english book', '2020-01-01', 'Fantasy', 'ER-0123_50', 70, 'Bram', 'White', 'Whited@ukr.net', 23, '1888-01-02', NULL),
('A soldier is always a soldier', NULL, '2015-09-29', 'Classic', 'TY-0123_50', 100, 'Oscar', 'Heller', 'Heller@ukr.net', 52, '1944-02-01', 'Medals fond`s'),
('Thirty nine steps', 'Roman`s seria', '2014-03-11', 'Fantasy', 'UF-0123_50', 90, 'Mark', 'Isherwood', 'Mark@ukr.net', 55, '1901-03-28', 'Medals fond`s'),
('Rainbow', 'Roman`s seria', '2011-07-12', 'Fantasy', 'QWW3_50', 440, 'George', 'Taylor', 'Tay@ukr.net', 48, '1920-04-16', NULL),
('Ulysses', 'Roman`s seria', '2012-06-13', 'Detective', 'ASF3_50', 490, 'Wilkie', 'Updike', 'Updike@ukr.net', 47, '1915-05-15', 'Medals fond`s'),
('Babbit', 'Roman`s seria', '2013-06-14', 'Fantasy', 'XCB23_50', 230, 'Herman ', 'Robinson', 'Rob@gmail.com', 46, '1912-06-14', 'Medals fond`s'),
('Trip to india', NULL, '2008-05-15', 'Fantasy', 'JHGK3_50', 600, 'Emily', 'Amis', 'Amis@ukr.net', 80, '1985-07-13', NULL),
('Fiesta', 'Roman`s seria', '2004-04-16', 'Fantasy', 'UIPO123_50', 500, 'Charlotte', 'Carey', 'Care@ukr.net', 40, '1850-08-12', 'Medals fond`s'),
('Tropic of Cancer', 'Roman`s seria', '2006-03-17', 'Fantasy', 'UIO11_50', 420, 'Benjamin', 'Lee', 'Lee@ukr.net', 25, '1854-09-11', 'Medals fond`s');

SELECT * FROM books;