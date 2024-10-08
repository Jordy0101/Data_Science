# Simulación de datos continuos
set.seed(123)
data_continua <- rnorm(100)

# Creación del boxplot
boxplot(data_continua, main = "Boxplot de una variable continua", ylab = "Valores")
