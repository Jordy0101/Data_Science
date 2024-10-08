# Función para calcular la moda de un conjunto de datos numéricos
calcular_moda <- function(datos) {
    # Tabla de frecuencias
    frecuencias <- table(datos)
    # Obtener el valor con la frecuencia máxima
    moda <- as.numeric(names(frecuencias)[frecuencias == max(frecuencias)])
    return(moda)
}

# Ejemplo de uso
datos <- c(1, 2, 2, 3, 4, 4, 4, 5)
moda <- calcular_moda(datos)
print(paste("La moda es:", moda))