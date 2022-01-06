class Vehiculo:
    """ Clase que sirve para el uso de los vehiculos"""

    def __init__(self, color, modelo, traccion):
        self.color = color
        self.modelo = color
        self.traccion = color
        # ecncapsulado el atributo velocidad para que no pueda ser accedido desde afuera de la clase
        self.__velocidad = 0

    def acelerar(self):
        """MEtodo que acelera el vehiculo de 20 en 20"""
        self.__velocidad += 20
        return 'LA velocidad actual es {} km/h'.format(self.__velocidad)

    def desacelerar(self):
        """MEtodo que acelera el vehiculo de 20km/h"""
        self.__velocidad -= 20
        self.__prueba()
        return self.__velocidad


class VehiculoVolador(Vehiculo):
    def __init__(self, color, modelo, traccion, vuela=False):
        super().__init__(color, modelo, traccion)
        self.vuela = vuela

    def volar(self):
        self.vuela = True

    def aterrizar(self):
        self.vuela = False
