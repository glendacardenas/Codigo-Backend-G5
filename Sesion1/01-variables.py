
# variable numerica 
numero = 10
numero2 =10.5
#numero ="Febrero"
nombre = "Eduardo"
fecha = 0
print ('hola :)')
print(type(numero2))
print(type(numero))

soltero=True
calor=True
print(type(soltero))

# variables que tienen varios valores

#arreglos son listas list

edades= [10, 12 , 40 , 60, 'Eduardo', 14.5 , False, [1,2]]
#si nosotros en la posicion colocamos el siguiente formato , recorrido es de izquierda a derecha siempre apesar qe tengamos valores negativos
#Para ingresar a los valores de una lista debemos indicar la POSICION que siempre empieza en 0 (cero) ademas si queremos usar valores entonces la lista
#empezara por ultima posicion (-1: la ultima posicion)
print(edades [2:])
print(edades [:3])
print(edades [-5:-1])
print(edades [:-1])
print(edades [1:-1])


#JSON (JavaScript Object Notation )/diccionario
curso={
    'nombre': 'Backend',
    'dificultad':'Dificil',
    'skills':[
        {
            'nombre':'Base de datos',
            'nivel': 'Intermedio'
        },
        {
            'nombre': 'ORM',
            'nivel': 'Avanzado'
        }
    ]

}
print (curso['dificultad'] )

#quiero el nivel del skill orm
print (curso['skills'][1]['nivel'])
print (curso['skills'][0]['nombre'])
print (curso['skills'][0]['nivel'])
print (curso['skills'][1]['nombre'])
print (curso['skills'][1]['nivel'])
[primer_mes, segundo_mes,tercer_mes,cuarto_mes]= ['enero','febrero','marzo', 'abril']
print(primer_mes)
print (curso['nombre'])
print (curso['dificultad'])

personas = [{
    'nombre': 'Eduardo',
    'nacionalidad': 'peruano',
    'hobbies':[
        {
            'nombre': 'Volar drones',
            'experiencia': '2 años'
        },{
            'nombre':'Programar',
            'experiencia': '1 mes'
        }
    ]
},{
    'nombre': 'Juliana',
    'nacionalidad': 'colombiana',
    'hobbies':[
        {
            'nombre': 'Montar bici',
            'experiencia': '4 años'
        },{
            'nombre':'Bases de datos',
            'experiencia': '8 mes'
        }
    ]
}]

#nacionalidad de la primera persona
#los hobbies de la segunda persona
#la expereriencia del segundo hobbie de la primera persona

print (personas[0]['nacionalidad'])
print (personas[1]['hobbies'])
print (personas[0]['hobbies'][1]['experiencia'])
# como se elimina una variable
del personas[0]
print(personas)

