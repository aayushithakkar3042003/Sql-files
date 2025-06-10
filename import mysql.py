import mysql.connector
connection = mysql.connector.connect (
    host = "localhost",
    user = "root",
    password ="12345678",
    database = "Hospitaldbm"
)
if connection.is_connected():
    print(("successfully connected to my sql "))
else:
    print("failed to connect to my sql ")