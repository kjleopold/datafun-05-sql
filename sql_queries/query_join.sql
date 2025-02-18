-- Get books with their authors
SELECT authors.first_name, authors.last_name, books.title
FROM authors
INNER JOIN books ON authors.author_id = books.author_id;
