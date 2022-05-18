-- Un trigger es una función que va a ejecutarse cuando una situación particular suceda.

-- Creo la función que va a usar mi trigger
-- Para ello el retorno de la funcion debe ser
-- un trigger

CREATE OR REPLACE FUNCTION duplicate_record()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO aaab(bbba, ccca)
	VALUES (NEW.bbb, NEW.ccc);
	RETURN NEW;
END
$$;

-- Creo el trigger donde especifico en que situaciones
-- se va a ejecutrar mi trigger

CREATE TRIGGER aaa_changes
	BEFORE INSERT
	ON aaa
	FOR EACH ROW
	EXECUTE PROCEDURE duplicate_record();

-- Ejecuto un comando donde se cumpla la situación en la
-- que se debe ejecutar mi trigger para probarlo

INSERT INTO aaa(bbb, ccc)
VALUES ('Hola!','Chau!');
