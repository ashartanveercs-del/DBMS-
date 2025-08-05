CREATE DATABASE library_db;

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    year_published INT,
    isAvailable BOOLEAN DEFAULT TRUE,
    price DECIMAL(10,2),
    publication VARCHAR(255)
);

INSERT INTO books (title, author, year_published, isAvailable, price, publication) VALUES
('The Very Hungry Caterpillar', 'Eric Carle', 1969, TRUE, 299.99, 'World Publishing Company'),
('Where the Wild Things Are', 'Maurice Sendak', 1963, TRUE, 399.50, 'Harper & Row'),
('Goodnight Moon', 'Margaret Wise Brown', 1947, FALSE, 450.00, 'Harper & Brothers'),
('The Cat in the Hat', 'Dr. Seuss', 1957, TRUE, 320.75, 'Random House'),
('Charlotte''s Web', 'E.B. White', 1952, TRUE, 380.00, 'Harper & Brothers'),
('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 1997, TRUE, 650.00, 'Bloomsbury'),
('The Gruffalo', 'Julia Donaldson', 1999, TRUE, 520.99, 'Macmillan'),
('The Little Prince', 'Antoine de Saint-Exupéry', 1943, TRUE, 275.50, 'Reynal & Hitchcock'),
('Matilda', 'Roald Dahl', 1988, FALSE, 425.00, 'Jonathan Cape'),
('The Lion, the Witch and the Wardrobe', 'C.S. Lewis', 1950, TRUE, 485.75, 'Geoffrey Bles'),
('The BFG', 'Roald Dahl', 1982, TRUE, 550.00, 'Jonathan Cape'),
('Alice''s Adventures in Wonderland', 'Lewis Carroll', 1865, TRUE, 475.25, 'Macmillan'),
('The Hobbit', 'J.R.R. Tolkien', 1937, TRUE, 395.99, 'George Allen & Unwin'),
('Peter Pan', 'J.M. Barrie', 1911, FALSE, 340.00, 'Hodder & Stoughton'),
('Winnie-the-Pooh', 'A.A. Milne', 1926, TRUE, 310.50, 'Methuen & Co.');

-- Query 1: Books published after 2000
SELECT * FROM books 
WHERE year_published > 2000;

-- Query 2: Books under 599.00 ordered by price descending
SELECT * FROM books 
WHERE price < 599.00 
ORDER BY price DESC;

-- Query 3: Top 3 most expensive books
SELECT * FROM books 
ORDER BY price DESC 
LIMIT 3;

-- Query 4: Books ordered by year published descending, skip first 2, get next 2
SELECT * FROM books 
ORDER BY year_published DESC 
LIMIT 2 OFFSET 2;

-- Query 5: Books from Macmillan publication ordered by title ascending
SELECT * FROM books 
WHERE publication = 'Macmillan' 
ORDER BY title ASC; 
