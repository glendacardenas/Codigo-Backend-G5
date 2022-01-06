class Vehiculo: 
    ruedas = 4
    color = 'azul'

vehiculo1 = Vehiculo()
vehiculo1.ruedas=5
#esto no es una buena practica
vehiculo1.procedencia = 'JAPON'

vehiculo2 = Vehiculo()
vehiculo2.procedencia = 'mala'

print(vehiculo1.ruedas)
print(vehiculo2.ruedas)
print(vehiculo1.procedencia)
print(vehiculo2.procedencia)

class VehiculoConConstructor():
    #en todo metodo de la clases SIEMPRE tendremos que colocar como primer parametro la palabra self
    # self : sirve para referenciar a la instancia actual de la clase esto se podria con el uso de this
    def __init__(self, ruedas, color):
        self.ruedas = ruedas
        self.color = color
    def __str__(self):
        return 'Esta es una instancia de la clase VehiculoConConstructor'

#cuando la variable se define dentro de la clase esta pasa a llamarse atributo
#cuando la funcion se define dentro de la clase esta pasa a llamarse metodo
vehiculo3 = VehiculoConConstructor(4, 'morado')

print(vehiculo3)