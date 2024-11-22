CREATE TABLE clientes (id serial, name text);

INSERT INTO clientes(name) SELECT 'João' FROM generate_series(1, 1000000);

EXPLAIN ANALYZE SELECT * FROM clientes WHERE ID = '2';

CREATE INDEX test_idx_clientes ON clientes(id);

