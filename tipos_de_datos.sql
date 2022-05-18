CREATE TYPE humor AS ENUM ('triste', 'normal', 'feliz');

CREATE TABLE persona_prueba (
    nombre text,
    humor_actual humor
);

INSERT INTO persona_prueba VALUES ('Pablo', 'molesto'); -- No voy a poder insertarlo
INSERT INTO persona_prueba VALUES ('Pablo', 'feliz'); -- Voy a poder insertarlo

SELECT * FROM persona_prueba;