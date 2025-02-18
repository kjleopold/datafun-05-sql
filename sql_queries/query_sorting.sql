-- Get all books ordered by publication year
SELECT title, year_published
FROM books
ORDER BY year_published ASC;

-- Sort books by author's last name
SELECT b.title, a.first_name, a.last_name
FROM books b
JOIN authors a ON b.author_id = a.author_id
ORDER BY a.last_name ASC;