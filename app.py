# Importando la clase Flask de flask y algunos paquetes.
from flask import Flask, request, redirect, render_template, url_for
from configBD.config import connectionBD  # Importando la conexión a BD

# Declarando nombre de la aplicación e inicializando,
# crear la aplicación Flask
app = Flask(__name__)
application = app
app.secret_key = '97110c78ae51a45af397be6534caef90ebb9b1dcb3380af008f90b23a5d1616bf19bc29098105da20fe'


# Definiendo algunas rutas (parametros -argumentos - funciones)
@app.route('/')
# Definiendo una funcion llamada inicio
def inicio():
    # Retornando una vista sin parametros
    return render_template('index.html', amigos=lista_amigos())


def lista_amigos():
    try:
        with connectionBD() as conexion_MySQLdb:
            with conexion_MySQLdb.cursor(dictionary=True) as cursor:
                querySQL = "SELECT * FROM amigos ORDER BY id DESC"
                cursor.execute(querySQL,)
                lista_amigos = cursor.fetchall()
        return lista_amigos

    except Exception as e:
        print(f"Ocurrió un ERROR lista_amigos: {e}")
        return []


# Redireccionando cuando la página no existe
@app.errorhandler(404)
def not_found(error):
    return redirect(url_for('inicio'))


@app.errorhandler(500)
def server_error(error):
    return redirect(url_for('inicio'))


# Ejecutando el objeto Flask
if __name__ == '__main__':
    # Método que indica la app, con la dirección, puerto y mode de argumento(debug)
    app.run(debug=True, port=5600)
