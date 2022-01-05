from flask import Flask, render_template, request, redirect, url_for

from productos import Productos

app=Flask(__name__)

lista_productos = [
    Productos('COMPUTADOR','COMPUTADOR DE QUINTA GENERACION',2700),
    Productos('Impresora','SYTLUS',350),
    Productos('USB','SAMSUNG',30),

]

@app.route("/")
def index():
    return render_template('lista de productos.html',productos=lista_productos)

app.run(debug=True)