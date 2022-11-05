SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length'
FROM books;

SELECT 
    CONCAT(author_lname, '은 길이가 ', CHAR_LENGTH(author_lname), ' 입니다.') AS author_lname
FROM books;