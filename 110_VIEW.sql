-- VIEW 생성
CREATE OR REPLACE VIEW book_title
AS SELECT title, pages FROM books;

SELECT * FROM book_title;

-- VIEW 삭제
DROP VIEW book_title;

