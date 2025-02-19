-- Count the number of books in the database
SELECT COUNT(*) AS total_books
FROM books;

-- Calculate the number of books by each author
SELECT a.first_name, a.last_name, 
       SUM(1) AS total_books
FROM authors a
LEFT JOIN books b ON a.author_id = b.author_id
GROUP BY a.author_id
ORDER BY total_books DESC;

-- Oldest and Newest Published Books
SELECT title, year_published
FROM books
WHERE year_published = (SELECT MIN(year_published) FROM books);

SELECT title, year_published
FROM books
WHERE year_published = (SELECT MAX(year_published) FROM books);