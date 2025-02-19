-- Group books by author
SELECT a.first_name, a.last_name, COUNT(*) AS total_books
FROM books b
JOIN authors a ON b.author_id = a.author_id
WHERE b.author_id = '9e220224-8436-4190-8ad0-e288980693f7'
GROUP BY a.author_id;