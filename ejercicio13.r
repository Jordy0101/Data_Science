# Simulación de tres variables numéricas
set.seed(123)
var1 <- rnorm(100)
var2 <- rnorm(100)
var3 <- rnorm(100)

# Creación del data frame
data_correlacion <- data.frame(var1, var2, var3)

# Generación de la matriz de correlación e impresión
print(cor(data_correlacion))
