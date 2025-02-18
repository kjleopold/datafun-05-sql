-- Group books by author
SELECT authors.first_name || ' ' || authors.last_name AS author_name, 
       (SELECT COUNT(*) FROM books WHERE books.author_id = authors.author_id) AS total_books
FROM authors
WHERE (SELECT COUNT(*) FROM books WHERE books.author_id = authors.author_id) > 1
ORDER BY total_books DESC;