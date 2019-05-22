DROP DATABASE IF EXISTS shopping;
DROP USER IF EXISTS jojo;
CREATE USER jojo@localhost;
SET PASSWORD FOR jojo = 'jojo';
CREATE DATABASE shopping;
GRANT ALL ON shopping.* to jojo;

DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS ordered;
DROP TABLE IF EXISTS ordered_detail;

USE shopping;

CREATE TABLE category (
code SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO category VALUES (1, 'book'),
                        (2, 'laptop');

CREATE TABLE item (
    code SERIAL PRIMARY KEY,
    category_code INTEGER,
    name TEXT,
    price INTEGER
);

INSERT INTO item VALUES (1, 1, 'Javaの基礎', 1000),
                        (2, 1, 'MLB Fun', 980),
                        (3, 1, '料理BOOK!', 1200),
                        (4, 2, 'MacBook Pro', 240000);

CREATE TABLE customer (
    code SERIAL PRIMARY KEY,
    name TEXT,
    address TEXT,
    tel TEXT,
    email TEXT
);

CREATE TABLE ordered (
    code SERIAL PRIMARY KEY,
    customer_code INTEGER,
    ordered_date DATE,
    total_price INTEGER
);

CREATE TABLE ordered_detail (
    order_code INTEGER,
    item_code INTEGER,
    num INTEGER
);