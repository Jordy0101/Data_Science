# Fijar la semilla para reproducibilidad
set.seed(123)

# Simulación de datos binarios
n <- 100  # Número de observaciones
x1 <- rnorm(n)  # Variable independiente 1
x2 <- rnorm(n)  # Variable independiente 2

# Coeficientes verdaderos
beta0 <- -1  # Intercepto
beta1 <- 0.5  # Coeficiente de x1
beta2 <- -0.3  # Coeficiente de x2

# Probabilidades generadas
prob <- 1 / (1 + exp(-(beta0 + beta1 * x1 + beta2 * x2)))

# Generación de la variable respuesta binaria
y <- rbinom(n, 1, prob)

# Creación del data frame
data_binario <- data.frame(y = y, x1 = x1, x2 = x2)

# Ajuste del modelo de regresión logística
modelo_logit <- glm(y ~ x1 + x2, data = data_binario, family = binomial)

# Resumen del modelo
summary(modelo_logit)

# Evaluación del modelo
pred_prob <- predict(modelo_logit, type = "response")
pred_clase <- ifelse(pred_prob > 0.5, 1, 0)

# Instalación y carga de paquete para matriz de confusión
install.packages("caret")
library(caret)

# Matriz de confusión
confusionMatrix(as.factor(pred_clase), as.factor(data_binario$y))

# Curva ROC y AUC
install.packages("pROC")
library(pROC)
roc_curve <- roc(data_binario$y, pred_prob)
plot(roc_curve, main = "Curva ROC")
auc(roc_curve)
