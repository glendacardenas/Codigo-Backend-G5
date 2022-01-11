from faker import Faker
from faker.providers import person, internet

objFaker = Faker()
objFaker.add_provider(person)
objFaker.add_provider(internet)


# print(objFaker.first_name_nonbinary())
# print(objFaker.free_email())
# print(objFaker.name())

cursos = ["COMUNICACION", "CTA", "INGLES", "FRENCH"]

# hacer un for para que en cada item del curso me imprima lo siguiente
# insert into cursos (nombre) values ('Comunicacion');
# insert into cursos (nombre) values ('cta');

for curso in cursos:
    print(f"INSERT INTO CURSOS (nombre) values ('{curso}');")
    # print ("insert into cursos(nombre) values ('{}'); ".format(curso))

# crear 100 alumnos
# insert into alumnos (nombre, apellido ,correo ) VALUES(....)
# hacer un for que se repita 100 veces

for x in range(100):
    nombre = objFaker.first_name()
    apellido = objFaker.last_name()
    correo = objFaker.free_email()
    print(
        f"insert into alumnos(nombre, apellido, correo) VALUES ('{nombre}','{apellido}','{correo}');"
    )

# hacer un for 200 veces encontrar un numero random entre 1 y 100 (que seria el alumno) y luego un numero random entre 1 y 4 (que seria los cursos),
# 50 2
# 75 3
# 80 2
# 50 2
# 50 2 <(3)
# ... (200)
# si se vuelve a repetir el mismo alumno con el mismo curso entonces obviarlo pero no incrementar el for

print(f"INSERT INTO ALUMNOS_CURSOS VALUES (CURSO_ID, ALUMNO_ID) VALUES(1,3);")
print(f"INSERT INTO ALUMNOS_CURSOS VALUES (CURSO_ID, ALUMNO_ID) VALUES(10,2);")
print(f"INSERT INTO ALUMNOS_CURSOS VALUES (CURSO_ID, ALUMNO_ID) VALUES(32,1);")
print(f"INSERT INTO ALUMNOS_CURSOS VALUES (CURSO_ID, ALUMNO_ID) VALUES(55,4);")
print(f"INSERT INTO ALUMNOS_CURSOS VALUES (CURSO_ID, ALUMNO_ID) VALUES(86,3);")
print(f"INSERT INTO ALUMNOS_CURSOS VALUES (CURSO_ID, ALUMNO_ID) VALUES(10,1);")
