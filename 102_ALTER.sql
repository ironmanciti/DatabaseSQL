-- Table 생성
CREATE TABLE newbook(
    bookid INTEGER,
    bookname VARCHAR(20),
    publisher VARCHAR(20),
    price INTEGER
);

-- TABLE에 새로운 속성 추가
ALTER TABLE newbook ADD tax VARCHAR(20);

-- 속성 변경
ALTER TABLE newbook MODIFY tax INTEGER;

-- 속성 삭제
ALTER TABLE newbook DROP COLUMN tax;

-- bookid 속성에 NOT NULL 제약조건 적용
ALTER TABLE newbook MODIFY bookid INTEGER NOT NULL;

-- bookid를 Primary Key로 변경
ALTER TABLE newbook ADD PRIMARY KEY (bookid);
