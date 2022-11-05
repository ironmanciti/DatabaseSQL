SELECT 
    REPLACE(title, 'e', '3')
From books;

SELECT 
    SUBSTR(REPLACE(title, 'e', '3'), 1, 10) AS 'title'
FROM books;