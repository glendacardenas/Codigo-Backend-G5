#operadores aritmeticos
#suma , resta, multipicacion , division, exponente, cociente, modulo

numero1=10
numero2=30

resultado = numero1+numero2
print(resultado)
print('El resultado es : ', resultado, 'y nada mas')
print ('El resultado es {} y nada mas {}'.format(resultado, numero1))
print(f'El resultado es {resultado}')

print ('El resultado es {1} y nada mas {0}'.format(numero1, resultado))
resultado=numero1+numero2
resultado=numero1-numero2
resultado=numero1/numero2
print(resultado)
print('{:.1f}'.format(resultado))
print(f'{resultado:.1f)}')
#el modulo 
resultado=numero1%numero2
print(resultado)
#el cociente
resultado=numero1//numero2
print('El cociente es : ', resultado)
print(resultado)
texto= "Hola mi nombre es Glenda"

#division 
resultado=numero1**numero2
print('El exponente es : ', resultado)

