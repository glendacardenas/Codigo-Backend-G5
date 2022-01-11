CREATE DATABASE  pruebas;
USE pruebas;
-- https://dev.mysql.com/doc/refman/8.0/en/data-types.html 
-- https://dev.mysql.com/doc/refman/8.0/en/create-table.html#create-table-types-attributes
create table personas(
	-- Ahora definimos las columnas pertenecientes a esta tabla
    -- solamente se puede tener una sola pk (primary key) por tabla y ademas una sola columna auto incrementable
    id INT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,-- solamente se podran almacenar numeros
    nombre VARCHAR (100) NOT NULL, -- se podran almacenar caracteres HASTA 100 como maximo
    dni CHAR(8) UNIQUE NOT NULL, -- siempre se almacenaran 8 caracteres
    fecha_nacimiento DATE, -- seran solamente fecha
    created_at DATETIME NOT NULL, -- sera fecha y hora , minuto, segundo
    sexo ENUM('MASCULINO', 'FEMENINO', 'OTRO', 'HELICOPTERO'), -- solamente para tener los valores definidos
    estado BOOL -- o sera true o false
  
);

-- ahora ingresaremos los datos
-- DML (DATA MANIPULATION LANGUAGE) lenguaje de manipulacion de datos
-- INSERT : ingresar nueva informacion a una tabla en especifico

INSERT INTO personas (id, nombre, dni, fecha_nacimiento, sexo, estado, created_at) VALUES
					 (1,'eduardo', '73500749', '1992-08-01', 'MASCULINO', true, now());

INSERT INTO personas ( nombre, dni, fecha_nacimiento, sexo, estado, created_at) VALUES
					 ('MARIA', '29621917', '1991-08-02', 'helicoptero', true, now());
INSERT INTO personas (nombre, dni, fecha_nacimiento, sexo, estado, created_at) VALUES
					 ('juan', '02438288', '1992-08-11', 'MASCULINO', true, now());

-- select : leer los datos de una determinada tabla o tablas

SELECT nombre, id FROM personas;
-- DDL (Data Definition Language)Lenguaje de Definicion de Datos
-- CREATE : Crear tablas, bases de datos y funciones y procedimientos almacenados entre otros

-- DROP : Eliminar completamente toda una tabla , una base de datos, una estructura
-- ESTO no elimina solamente el contenido de la tabla SINO que elimina toda su estructura
select * from personas where id =1 and  nombre='Eduardo'; 
select * from personas where   nombre='maria' and estado =true; 
select * from personas where   sexo='helicoptero' ; 
select * from personas where nombre ='eduardo' or estado = false;

select * from personas order by sexo desc;

-- CREAR UNA TABLA LLAMADA ACTIVIDADES EN LA CUAL TENGAMOS EL ID, NOMBRE, INTENSIDAD Y SU 
-- ESTADO, EL ID TIENE QUE SER PK Y UNIQUE, EL NOMBRE NO PUEDE EXCEDER LOS 20 CARACTERES,
-- LA INTENSIDAD DEBE SER BAJA, MEDIA, ALTA O MUY ALTA Y SU ESTADO V O F
create table actividades(
	-- Ahora definimos las columnas pertenecientes a esta tabla
    -- solamente se puede tener una sola pk (primary key) por tabla y ademas una sola columna auto incrementable
    id INT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,-- solamente se podran almacenar numeros
    nombre VARCHAR (20) NOT NULL, -- se podran almacenar caracteres HASTA 20 como maximo
    intensidad enum('baja','media', 'alta', 'muy alta'),
    estado BOOL, -- o sera true o false
    persona_id int,
    -- para crear las relaciones
    foreign key(persona_id) references personas(id)
);
use pruebas;
INSERT INTO actividades (id, nombre, intensidad, estado, persona_id) VALUES
					 (1,'programar', 'muy alta', true, 1);
INSERT INTO actividades (nombre, intensidad, estado, persona_id) VALUES
					 ('manejar', 'media', true, 2),
					 ('cocinar', 'alta', true, 1),                   
					 ('diseñar', 'baja', true, 3);                     

select * from actividades ;
select * from personas ;
-- modificar algo de la tabla
ALTER TABLE actividades MODIFY id INT AUTO_INCREMENT PRIMARY KEY UNIQUE;
DROP TABLE personas; 
INSERT INTO personas (nombre, dni, fecha_nacimiento, sexo, estado, created_at) VALUES
                     ('Patricio', '15934757', '1991-08-01', 'helicoptero', true, now());

INSERT INTO actividades (nombre, intensidad, estado) VALUES
                        ('NADAR', 'ALTA', true);

select * from personas inner join actividades on personas.id = actividades.persona_id;
select * from personas left join actividades on personas.id = actividades.persona_id;
select * from personas right join actividades on personas.id = actividades.persona_id;

select * from personas left join actividades on personas.id = actividades.persona_id union select * from personas right join actividades on personas.id = actividades.persona_id;

-- MOSTRAR TODAS LAS PERSONAS CUYA INTENSIDAD EN LA ACTIVIDAD SEA ALTA
-- MOSTRAR TODOS LOS REGISTROS CUYO SEXO SEA MASCULINO o SU ESTADO DE LA ACTIVIDAD SEA true
-- MOSTRAR LAS PERSONAS QUE NO TENGAN ACTIVIDADES SOLAMENTE SU NOMBRE Y ID

select * from personas inner join actividades on personas.id = actividades.persona_id where actividades.intensidad = 'alta';
select * from personas inner join actividades on personas.id = actividades.persona_id where personas.sexo= 'masculino' or actividades.estado ='true';
select * from personas left join actividades on personas.id = actividades.persona_id union select * from personas right join actividades on personas.id = actividades.persona_id;
select * from personas inner join actividades on personas.id = actividades.persona_id;

select distinct personas.nombre from actividades inner join personas on actividades.persona_id= personas.id where intensidad ='alta';

select personas.nombre , personas.id from personas left join actividades on personas.id= actividades.persona_id where actividades.persona_id is null;

select nombre,id from personas where id not in (select persona_id from actividades WHERE persona_id is not null);
select * from personas order by sexo desc;
select * from personas order by sexo asc;
select * from personas order by sexo desc;







 







