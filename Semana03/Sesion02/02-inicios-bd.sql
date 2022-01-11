-- hacer una base de datos en la cual se maneje el directorio de alumnos de un colegio
-- el colegio solo tiene un año y una seccion pero si maneja varios cursos que son
-- comunicacion cta, ingles , french
-- el alumno puede llevar varios cursos y un curso puede tener varios alumnos
-- es que las fk y las pks no pueden ser nulas

CREATE DATABASE colegio;
use colegio;

CREATE TABLE ALUMNOS(
    id int not null primary key auto_increment,
    nombre varchar(100),
    apellido varchar(100),
    correo varchar(50)
);
CREATE TABLE CURSOS(
    id int not null primary key auto_increment,
    nombre varchar(100)
);

CREATE TABLE ALUMNOS_CURSOS(
    id int not null primary key auto_increment,
    curso_id int not null,
    alumno_id int not null,
    foreign key (curso_id) references cursos(id),
    foreign key (alumno_id) references alumnos(id)
);
 