# Simulación de datos
set.seed(123)
n <- 100
x <- rnorm(n, mean = 5, sd = 2)
y <- 3 + 2 * x + rnorm(n)

# Ajuste del modelo de regresión lineal simple
modelo <- lm(y ~ x)

# Reporte de los coeficientes
coeficientes <- coef(modelo)
print(coeficientes)