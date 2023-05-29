

CREATE TABLE public.customers (
    customer_id integer,
    first_name text,
    last_name text,
    address text
);


ALTER TABLE public.customers OWNER TO admin;


CREATE TABLE public.order_info (
    order_id integer,
    customer_id integer,
    product_code text,
    qty integer
);


ALTER TABLE public.order_info OWNER TO admin;

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
