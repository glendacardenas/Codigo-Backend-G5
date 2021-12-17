nombre= input("ingrese su nombre:")
edad = input ("Ingrese su edad:")
ecivil = input("Estado Civil:")


if ecivil== "C":
    valorec="Casado"
elif ecivil=="V":
    valorec="Viudo"
elif ecivil=="D":
    valorec="Divorciado"
else:
    valorec= "soltero"
print("Hola", nombre, "Su estado civil es : ", valorec)