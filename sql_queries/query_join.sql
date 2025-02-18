-- Get books with their authors
SELECT a.first_name, a.last_name, b.title, b.year_published
FROM authors a
LEFT JOIN books b ON a.author_id = b.author_id;

-- Get books and their author sorted by year published
SELECT a.first_name, a.last_name, b.title, b.year_published
FROM authors a
JOIN books b ON a.author_id = b.author_id
ORDER BY b.year_published ASC;