CREATE TABLE people 
    (name VARCHAR(100), birthday DATE, birthtime TIME, birthdt DATETIME);

INSERT INTO people (name, birthday, birthtime, birthdt)
    VALUES ('홍길동', '1983-11-11', '10:10:30', '1983-11-11 10:10:30');

INSERT INTO people (name, birthday, birthtime, birthdt)
    VALUES ('김철수', '1990-01-11', '11:10:30', '1990-01-11 11:10:30');

INSERT INTO people (name, birthday, birthtime, birthdt)
    VALUES ('이영희', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;

SELECT name, birthday, DAY(birthday) FROM people;