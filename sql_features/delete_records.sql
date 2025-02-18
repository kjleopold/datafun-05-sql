-- Delete records from a table.

-- Delete author J.R.R. Tolkien record with incorrect author ID
DELETE FROM authors WHERE author_id = '16f3e0a1-24cb-4ed6-a50d-509f63e367f7';

-- Delete author George Orwell
DELETE FROM authors WHERE author_id = 'c3a47e85-2a6b-4196-a7a8-8b55d8fc1f70';

-- Delete book 1984
DELETE FROM books WHERE title = '1984';
