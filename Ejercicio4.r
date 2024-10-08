# Simulación de dos variables numéricas
set.seed(123)  # Para reproducibilidad
variable1 <- rnorm(100)  # 100 valores simulados para la primera variable
variable2 <- rnorm(100)  # 100 valores simulados para la segunda variable

# Calcular el coeficiente de correlación
correlacion <- cor(variable1, variable2)

# Mostrar el resultado
print(paste("El coeficiente de correlación es:", correlacion))
