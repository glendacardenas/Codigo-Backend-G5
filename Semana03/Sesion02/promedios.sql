select * from alumnos;
-- funciones de agregacion  (agregation function
-- avg (columna)= da el promedio de una columna numerica
-- max(columna) => traera el valor maximo de los resultados
-- min (columna) => traera el valor minimo
-- count (columna) => puede ser numericos o strings
-- sum(colmnas) => traera el resultado de la suma dicha columna
-- first(columna) => traera el primer valor de 
-- last(columna) => el ultimo valor
select avg(id) from alumnos where id between 1 and 2; -- entre [1-2]
select avg(id) from alumnos where id>= 1 and id<=2;
select max(id) from alumnos;
-- nota cuando se usa alguna funcion de agregacion y ADEMAS se usa una columna comun y corriente entonces se tiene que modificar su agrupacion predeterminada
SELECT count(nombre), nombre FROM alumnos group by nombre;
SELECT * FROM ALUMNOS;
-- FUNCIONES DE AGREGACION (AGGREGATION FUCTION)
-- avg(columna) => da el promedio de una columna NUMERICA 
-- max(columna) => traera el valor maximo de los resultados
-- min(columna) => traera el valor minimo
-- count(columna) => puede ser numericos o strings
-- sum(columna) => traera el resultado de la suma de dicha columna
-- first(columna) => el primer valor
-- last(columna) => el ultimo valor

SELECT avg(id) from alumnos WHERE id between 1 and 2; -- entre [1 - 2]
SELECT avg(id) from alumnos WHERE id >= 1 and  id <=2;
SELECT max(id) from alumnos;
-- NOTA: cuando se usa alguna funcion de agregacion Y ADEMAS se usa
-- una columna comun y corriente entonces se tiene que modificar su
-- agrupacion predeterminada
SELECT count(nombre), nombre 
FROM alumnos 
WHERE id between 10 and 20
GROUP BY nombre
ORDER BY count(nombre) desc, nombre asc;

-- SELECT columnas 
-- FROM tablas [JOINS] 
-- WHERE condicionales 
-- GROUP BY col...
-- ORDER BY col...

SELECT * 
FROM cursos 
WHERE nombre LIKE '%a%' ;

create database	blog;
