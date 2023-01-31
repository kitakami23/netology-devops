SELECT datname from pg_database;

SELECT table_name, column_name, data_type, column_default
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE table_name IN ('orders', 'clients');

SELECT grantee, table_catalog, table_name, privilege_type 
FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES 
WHERE table_name IN ('orders', 'clients');