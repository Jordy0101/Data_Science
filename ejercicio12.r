# Simulación de datos aleatorios
data_normalidad <- rnorm(100)

# Prueba de normalidad Shapiro-Wilk e impresión del resultado
print(shapiro.test(data_normalidad))
