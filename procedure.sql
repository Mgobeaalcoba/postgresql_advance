CREATE OR REPLACE PROCEDURE test_dropcreate_procedure()
LANGUAGE SQL
AS $$
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (bbb char(5) CONSTRAINT firstkey PRIMARY KEY);
$$; -- Solo crea el procedure o procedimiento
-- No lo ejecuta aún

CALL test_dropcreate_procedure(); -- Para correr el procedure
