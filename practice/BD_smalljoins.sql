SELECT * FROM customers LIMIT 5
EXPLAIN SELECT * FROM emails;

EXPLAIN SELECT * FROM emails LIMIT 5;

EXPLAIN SELECT * FROM emails WHERE clicked_date BETWEEN '2011-01-01' and '2011-02-01';






-- Используйте команду EXPLAIN, чтобы вернуть план запроса для выбора всех доступных записей в таблице клиентов.

EXPLAIN SELECT * FROM customers;

-- Повторите запрос из шага 2 этого упражнения, на этот раз ограничив количество возвращаемых записей до 15.

Sqlda=# EXPLAIN SELECT * FROM customers LIMIT 15;

-- Создайте план запроса, выбрав все строки, где клиенты живут в пределах широты 30 и 40 градусов.

Sqlda=# EXPLAIN SELECT * FROM customers WHERE latitude > 30 and latitude < 40;




-- Упражнение. Создание индексного сканирования 


EXPLAIN SELECT * FROM customers WHERE state='FO';


EXPLAIN SELECT DISTINCT state FROM customers;

CREATE INDEX ix_state ON customers(state);

EXPLAIN SELECT * FROM customers WHERE state='FO';

EXPLAIN SELECT * FROM customers WHERE gender='M';

CREATE INDEX ix_gender ON customers(gender);

EXPLAIN SELECT * FROM customers WHERE gender='M';

EXPLAIN SELECT * FROM customers WHERE (latitude < 38) AND (latitude > 30);


CREATE INDEX ix_latitude ON customers(latitude);

EXPLAIN SELECT * FROM customers WHERE (latitude < 38) AND (latitude > 30);

EXPLAIN ANALYZE SELECT * FROM customers WHERE (latitude < 38) AND (latitude > 30);

CREATE INDEX ix_latitude_less ON customers(latitude) WHERE (latitude < 38) and (latitude > 30);

--создать хэш-индекс:

CREATE INDEX ix_gender ON customers USING HASH(gender);

CREATE INDEX ix_gender ON customers USING btree(gender);

EXPLAIN ANALYZE SELECT * FROM customers 
WHERE gender='M';


DROP INDEX ix_gender;

CREATE INDEX ix_gender ON customers USING HASH(gender);


EXPLAIN ANALYZE SELECT * FROM customers WHERE gender='M';

DROP INDEX ix_state;

CREATE INDEX ix_state ON customers USING HASH(state);

EXPLAIN ANALYZE SELECT * FROM customers WHERE state='FO';



EXPLAIN ANALYZE SELECT customers.*, order_info.order_id, order_info.product_code, order_info.qty 
FROM customers INNER JOIN order_info ON customers.customer_id=order_info.customer_id;

DROP INDEX ix_gender;

EXPLAIN ANALYZE SELECT * FROM customers WHERE gender='M';




CREATE TABLE public.customers (
    customer_id integer,
    first_name text,
    last_name text,
    address text
);


ALTER TABLE public.customers OWNER TO admin;

--

--

CREATE TABLE public.order_info (
    order_id integer,
    customer_id integer,
    product_code text,
    qty integer
);


ALTER TABLE public.order_info OWNER TO admin;

--

--

CREATE TABLE public.products (
    product_code text,
    name text,
    stock integer
);


ALTER TABLE public.products OWNER TO admin;


INSERT INTO customers  (customer_id, first_name, last_name, address)
VALUES
(4,'Guybrush','Threepwood','Melee Island'),
(5,'Murray','TheSkull','Plunder island'),
(1,'Meat','Hook','Melee Island'),
(2,'Captain','Blondebeard','Puerto Pollo'),
(3,'Griswold','Goodsoup','Blood Island');


INSERT INTO order_info  (order_id, customer_id, product_code, qty)
VALUES
(1618,3,'GROG1',12),
(1619,2,'POULET3',3),
(1620,4,'MON123',1),
(1621,4,'MON636',3),
(1622,5,'MON666',1);

INSERT INTO products (product_code, name, stock)
VALUES
('MON636','Red Herring',99),
('MON666','Murray"s Arm',0),
('GROG1','Grog',65),
('POULET3','El Pollo Diablo',3),
('MON123','Rubber Chicken + Pulley',7);