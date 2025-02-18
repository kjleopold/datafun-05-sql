-- update records in a table.

-- Add genre column
ALTER TABLE books ADD COLUMN genre TEXT;

-- Insert authors data
INSERT INTO authors (author_id, first_name, last_name, year_born)
VALUES
    ('9e220224-8436-4190-8ad0-e288980693f7', 'Stephenie', 'Meyer', 1973),
    ('edd8d71b-80af-4366-a28f-b182df552c91', 'John', 'Saul', 1942);

-- Insert books data
INSERT INTO books (book_id, title, year_published, author_id, genre)
VALUES
    ('df6263e6-b5df-435a-8811-f0992ea4ef74', 'Harry Potter and the Chamber of Secrets', 1998, '6b693b96-394a-4a1d-a4e2-792a47d7a568', 'Fantasy'),
    ('cfc38c1b-83da-4242-b724-9c198dd397e6', 'Harry Potter and the Prisoner of Azkaban', 1999, '6b693b96-394a-4a1d-a4e2-792a47d7a568', 'Fantasy'),
    ('037f9166-78a9-43ed-8e84-677d5931b3ed', 'Harry Potter and the Goblet of Fire', 2000, '6b693b96-394a-4a1d-a4e2-792a47d7a568', 'Fantasy'),
    ('5d6db19a-795b-4a7d-bb63-15423b96d2b9', 'Harry Potter and the Order of the Pheonix', 2003, '6b693b96-394a-4a1d-a4e2-792a47d7a568', 'Fantasy'),
    ('2ce2f75c-ea25-447f-a9ad-1a3284a774bd', 'Harry Potter and the Half-Blood Prince', 2005, '6b693b96-394a-4a1d-a4e2-792a47d7a568', 'Fantasy'),
    ('38ddc8b8-b8be-450a-9f38-5607c0c39156', 'Harry Potter and the Deathly Hallows', 2007, '6b693b96-394a-4a1d-a4e2-792a47d7a568', 'Fantasy'),
    ('f91447c8-e02b-4563-a163-396c37e5dcc1', 'Twilight', 2005, '9e220224-8436-4190-8ad0-e288980693f7', 'Young Adult'),
    ('cbb39c2d-d69a-4280-aeb6-00d13d746d3f', 'New Moon', 2006, '9e220224-8436-4190-8ad0-e288980693f7', 'Young Adult'),
    ('1f2b6578-d06b-4c90-b44e-f1c212178fd6', 'Eclipse', 2007, '9e220224-8436-4190-8ad0-e288980693f7', 'Young Adult'),
    ('955ac168-f76f-441b-8d93-d0e188c79034', 'Breaking Dawn', 2008, '9e220224-8436-4190-8ad0-e288980693f7', 'Young Adult'),
    ('629a0c8c-17a1-4ca0-83c2-2bafd1efb958', 'Midnight Sun', 2020, '9e220224-8436-4190-8ad0-e288980693f7', 'Young Adult'),
    ('fcdacee2-b612-4e97-9923-2472d5bfbf4f', 'Nightshade', 2000, 'b0fa7d1e-df1f-483f-99a2-87ff0e98ff9f', 'Horror');

    
-- Update the title of a book
UPDATE books
SET title = "Harry Potter and the Sorcerer's Stone"
WHERE title = "Harry Potter and the Philosopher's Stone";

-- Update the genre of a book
UPDATE books
SET genre = "Fantasy"
WHERE author_id = "6b693b96-394a-4a1d-a4e2-792a47d7a568";

Update books
SET genre = "Fantasy"
WHERE author_id = "06cf58ab-90f1-448d-8e54-055e4393e75c";

Update books
SET genre = "Distopian"
WHERE author_id = "7b144e32-7ff4-4b58-8eb0-e63d3c9f9b8d";

Update books
SET genre = "Tragedy"
WHERE author_id = "e0b75863-866d-4db4-85c7-df9bb8ee6dab";

Update books
SET genre = "Southern Gothic"
WHERE author_id = "10f88232-1ae7-4d88-a6a2-dfcebb22a596";

Update books
SET genre = "Coming-of-age"
WHERE author_id = "8d8107b6-1f24-481c-8a21-7d72b13b59b5";

Update books
SET genre = "Distopian"
WHERE author_id = "0cc3c8e4-e0c0-482f-b2f7-af87330de214";

Update books
SET genre = "Romance"
WHERE author_id = "4dca0632-2c53-490c-99d5-4f6d41e56c0e";

-- Update the author ID of a book
UPDATE books
SET author_id = "06cf58ab-90f1-448d-8e54-055e4393e75c"
WHERE author_id = "16f3e0a1-24cb-4ed6-a50d-509f63e367f7";

