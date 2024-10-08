# Cargar las librerías necesarias
library(ggplot2)

# Crear un conjunto de datos de ejemplo
set.seed(123)
data <- data.frame(
    x = rnorm(100),
    y = rnorm(100)
)

# Crear el gráfico de dispersión y ajustar una línea de regresión
ggplot(data, aes(x = x, y = y)) +
    geom_point() +
    geom_smooth(method = "lm", col = "red") +
    labs(title = "Gráfico de Dispersión con Línea de Regresión",
             x = "Variable X",
             y = "Variable Y")