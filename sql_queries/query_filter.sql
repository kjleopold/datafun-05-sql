-- Filter authors with more than one book
SELECT a.first_name, a.last_name, COUNT(b.book_id) AS total_books
FROM authors a
JOIN books b ON a.author_id = b.author_id
GROUP BY a.author_id
HAVING COUNT(b.book_id) > 1
