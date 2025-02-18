-- Count the number of books in the database
SELECT COUNT(*) AS total_books
FROM books;

-- Calculate the number of books by each author
SELECT a.first_name, a.last_name, COUNT(b.book_id) AS total_books
FROM authors a
LEFT JOIN books b ON a.author_id = b.author_id
GROUP BY a.author_id
ORDER BY total_books DESC;

-- Find the earliest and latest year of publication
SELECT a.first_name, a.last_name, 
       MIN(b.year_published) AS earliest_year, 
       MAX(b.year_published) AS latest_year
FROM authors a
LEFT JOIN books b ON a.author_id = b.author_id
GROUP BY a.author_id
ORDER BY latest_year DESC;

-- Count the number of authors in the database
SELECT COUNT(*) AS total_authors
FROM authors;