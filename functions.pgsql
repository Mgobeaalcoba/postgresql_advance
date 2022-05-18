-- Creo una función en Postgres SQL

CREATE OR REPLACE FUNCTION test_dropcate_function()
RETURNS VOID
LANGUAGE PLpgSQL
AS $$
BEGIN
    DROP TABLE IF EXISTS aaa;
    CREATE TABLE aaa (bbb char(5) CONSTRAINT firstkey PRIMARY KEY, ccc char(5))
    DROP TABLE IF EXISTS aaab;
    CREATE TABLE aaab (bbba char(5) CONSTRAINT secondkey PRIMARY key, ccc char(5))
END 
$$;

-- Ejecuto una función en Postgres SQL

SELECT test_dropcate_function();

-- Creo función para contar cantidad de peliculas en alquiler y que me devuelva solo un entero

CREATE OR REPLACE FUNCTION count_total_movies()
RETURNS int
LANGUAGE PLpgSQL
AS $$
BEGIN
    RETURN COUNT(*) FROM peliculas;
END
$$;

SELECT count_total_movies();
