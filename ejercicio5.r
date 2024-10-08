# Cargar los datos
datos <- c(45, 52, 48, 50, 49, 51, 47, 53, 46, 54)

# Realizar la prueba t de una muestra
resultado <- t.test(datos, mu = 50)

# Mostrar los resultados
print(resultado)