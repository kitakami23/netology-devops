INSERT INTO orders VALUES
(1, 'Шоколад', 10),
(2, 'Принтер', 3000),
(3, 'Книга', 500),
(4, 'Монитор', 7000),
(5, 'Гитара', 4000);

INSERT INTO clients VALUES
(1, 'Иванов Иван Иванович', 'USA'),
(2, 'Петров Петр Петрович', 'Canada'),
(3, 'Иоганн Себастьян Бах', 'Japan'),
(4, 'Ронни Джеймс Дио', 'Russia'),
(5, 'Ritchie Blackmore', 'Russia');

SELECT COUNT (*) FROM orders;
SELECT COUNT (*) FROM clients;