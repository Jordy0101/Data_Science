# Crear una variable categórica con 5 categorías
categorias <- factor(sample(c("A", "B", "C", "D", "E"), 100, replace = TRUE))

# Crear una tabla de frecuencias
tabla_frecuencias <- table(categorias)

# Mostrar la tabla de frecuencias
print(tabla_frecuencias)

# Generar un gráfico de barras
barplot(tabla_frecuencias, main = "Frecuencia de Categorías", xlab = "Categorías", ylab = "Frecuencia", col = "blue")