CREATE SCHEMA Bookstore;
USE Bookstore;

CREATE TABLE BOOK(
	Book_title VARCHAR(100) NOT NULL,
    Book_id INTEGER,
    Book_category VARCHAR(100) NOT NULL,
    Book_author VARCHAR(100) NOT NULL,
    PRIMARY KEY (Book_id)
);

INSERT INTO BOOK 
	(Book_title, Book_id, Book_category, Book_author)
VALUES 
	('Throne of Glass', 10, 'Fantasy', 'Sarah J.Maas'), 
	('Crown of Midnight', 11, 'Fantasy', 'Sarah J.Maas'),
    ('The Assassins Blade', 12, 'Fantasy', 'Sarah J.Maas'),
    ('Heir of Fire', 13, 'Fantasy', 'Sarah J.Maas'),
    ('Empire of Storms', 14, 'Fantasy', 'Sarah J.Maas'),
    ('Tower of Dawn', 15, 'Fantasy', 'Sarah J.Maas'),
    ('Kingdom of Ash', 16, 'Fantasy', 'Sarah J.Maas');

INSERT INTO BOOK
	(Book_title, Book_id, Book_category, Book_author)
VALUES 
    ('The Hunger Games', 17, 'Fantasy', 'Suzanne Collins'),
    ('Catching Fire', 18, 'Fantasy', 'Suzanne Collins'),
    ('The Mockingjay', 19, 'Fantasy', 'Suzanne Collins');

INSERT INTO BOOK
	(Book_title, Book_id, Book_category, Book_author)
VALUES
	('Twilight', 20, 'Supernatural', 'Stephenie Meyer'),
    ('New Moon', 21, 'Supernatural', 'Stephenie Meyer'),
    ('Eclipse', 22, 'Supernatural', 'Stephenie Meyer'),
    ('Breaking Dawn', 23, 'Supernatural', 'Stephenie Meyer');
    
SELECT 
	* 
FROM 
	BOOK 
WHERE 
	Book_category = 'Fantasy' AND 
    Book_author = 'Sarah J.Maas';
    