# Simulación de datos con outliers
set.seed(123)
data_outliers <- c(rnorm(95), rnorm(5, mean = 10))  # 5 valores atípicos

# Calcular media y mediana antes de eliminar outliers
media_antes <- mean(data_outliers)
mediana_antes <- median(data_outliers)

# Eliminar outliers utilizando el criterio de 1.5 * rango intercuartílico (IQR)
Q1 <- quantile(data_outliers, 0.25)
Q3 <- quantile(data_outliers, 0.75)
IQR <- Q3 - Q1
limite_inferior <- Q1 - 1.5 * IQR
limite_superior <- Q3 + 1.5 * IQR

data_sin_outliers <- data_outliers[data_outliers >= limite_inferior & data_outliers <= limite_superior]

# Calcular media y mediana después de eliminar outliers
media_despues <- mean(data_sin_outliers)
mediana_despues <- median(data_sin_outliers)

# Comparación
cat("Media antes de eliminar outliers:", media_antes, "\n")
cat("Mediana antes de eliminar outliers:", mediana_antes, "\n")
cat("Media después de eliminar outliers:", media_despues, "\n")
cat("Mediana después de eliminar outliers:", mediana_despues, "\n")
