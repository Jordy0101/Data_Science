# Generar un conjunto de datos con 100 observaciones aleatorias
set.seed(123) # Para reproducibilidad
datos <- rnorm(100)

# Calcular la media
media <- mean(datos)

# Calcular la mediana
mediana <- median(datos)

# Calcular la varianza
varianza <- var(datos)

# Calcular la desviación estándar
desviacion_estandar <- sd(datos)

# Imprimir los resultados
cat("Media:", media, "\n")
cat("Mediana:", mediana, "\n")
cat("Varianza:", varianza, "\n")
cat("Desviación Estándar:", desviacion_estandar, "\n")
