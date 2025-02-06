import mysql.connector

config = {
    "host": "", #Completar con los datos del boton edit connection
    "port": "", #Completar con los datos del boton edit connection
    "database": "", #Completar con los datos del boton edit connection
    "user": "", #Completar con los datos del boton edit connection
    "password": "" #Completar con los datos del boton edit connection
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = ""  #Query que siera consultar ejemplo "Select * from Nombre_tabla"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()