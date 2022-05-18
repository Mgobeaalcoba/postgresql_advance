-- Minimo agrupado por categoria de clasificacion de 
-- la pelicula
SELECT clasificacion, MIN(precio_renta)
FROM peliculas
GROUP BY clasificacion;

-- Funciones de agrupamiento: SUM, COUNT, MAX, MIN, AVG, etc

SELECT clasificacion, AVG(precio_renta) AS precio_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY precio_promedio;

SELECT clasificacion, AVG(duracion) AS duracion_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY duracion_promedio DESC;

-- La planeacion de la presentación de los datos debe 
-- pensarse antes de comenzar a extraer los datos y nos ordenará
-- la extración
-- ¿Donde se van a mostrar? ¿De que manera?
-- ¿Con que tipo de graficas?
