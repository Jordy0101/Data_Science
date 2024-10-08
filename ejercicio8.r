# Simulación de datos categóricos
set.seed(123)  # Para reproducibilidad
n <- 100  # Número de observaciones

# Generar dos variables categóricas simuladas
var1 <- sample(c("A", "B", "C"), n, replace = TRUE)
var2 <- sample(c("X", "Y", "Z"), n, replace = TRUE)

# Crear una tabla de contingencia
tabla_contingencia <- table(var1, var2)

# Realizar la prueba chi-cuadrado
chi_cuadrado <- chisq.test(tabla_contingencia)

# Mostrar los resultados
print(chi_cuadrado)