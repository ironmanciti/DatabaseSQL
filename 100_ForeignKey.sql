CREATE TABLE customers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE  -- 고객이 삭제되면 주문도 자동 삭제
);

INSERT INTO customers(first_name, last_name, email)
VALUES ('홍', '길동', 'a123@gmail.com'),
        ('김', '철수', 'test@gmail.com'),
        ('이', '병철', 'bbb@naver.com'),
        ('박', '장환', 'test123@gmail.com'),
        ('장', '길수', 'test456@hanmail.com');

INSERT INTO orders(order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
        ('2017-11-11', 35.50, 1),
        ('2014-12-12', 800.97, 2),
        ('2015-01-10', 12.30, 2),
        ('1999-04-10', 450.25, 5);

-- Foreign Key constraint error
INSERT INTO orders(order_date, amount, customer_id)
VALUES ('2017-03-10', 99.99, 10);