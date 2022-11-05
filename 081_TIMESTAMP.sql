CREATE TABLE timestamp (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW(),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);
 
INSERT INTO timestamp (content) VALUES('첫번째 행');
 
INSERT INTO timestamp (content) VALUES('두번째 행');
 
INSERT INTO timestamp (content) VALUES('세번째 행');
 
SELECT * FROM timestamp ORDER BY created_at DESC;
 
UPDATE timestamp SET content='두번째 업데이트' WHERE content='두번째 행';
 
SELECT * FROM timestamp ORDER BY changed_at;
 
