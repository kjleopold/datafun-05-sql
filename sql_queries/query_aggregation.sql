-- Count the number of books in the database
SELECT COUNT(*) AS total_books
FROM books;

-- Calculate the number of books by each author
SELECT a.first_name, a.last_name, COUNT(b.book_id) AS total_books
FROM authors a
LEFT JOIN books b ON a.author_id = b.author_id
GROUP BY a.author_id
ORDER BY total_books DESC;

-- Earliest Published Book
SELECT title, year_published
FROM books
ORDER BY year_published ASC
LIMIT 1;