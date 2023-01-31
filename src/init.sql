CREATE USER "test-admin-user" WITH PASSWORD 'test';
CREATE USER "test-simple-user" WITH PASSWORD 'test';

CREATE DATABASE test_db;
GRANT ALL PRIVILEGES ON DATABASE test_db TO "test-admin-user";

\c test_db "test-admin-user"

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  price INTEGER
);

CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  surname VARCHAR(100),
  country VARCHAR(100),
  order_id INTEGER,
  FOREIGN KEY (order_id) REFERENCES orders (id)
);

GRANT SELECT, INSERT, UPDATE, DELETE 
ON orders, clients 
TO "test-simple-user";