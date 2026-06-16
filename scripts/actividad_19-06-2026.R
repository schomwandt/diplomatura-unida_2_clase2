
# =========================================== 
# actividad viernes 19 de junio de 2026
# Primeros pasos en R con RStudio 
# =========================================== 

# Definición de una variable en R 

#'En R, una variable es un objeto de R que sirve para guardar datos. 
#'Más específicamente, es un espacio en la memoria de la computadora donde se almacena un objeto 
#'como vectores, matrices, funciones, etc. para poder utilizarlo posteriormente.
#'

#' El propósito de una variable es:
#' Guardar datos para usarlos varias veces, repetir operaciones y estructurar el análisis 
#' Puede contener valores lógico, entero, real, complejo o caracter


# Asignación de variables
nombre <- "Buenos Aires"
poblacion <- 3120612
tasa_desempleo <- 8.5
es_capital <- TRUE

#  ¿Cómo sabemos el tipo de variable que hemos creado?

#  desde "Environment", como por ejemplo se puede observar la descripción de cada variable. 
# podemos imprimir los valores 

nombre # solo llamando a la variable por su nombre 
print(nombre) # utilizando la función "print", se recomienda utilizar esta función siempre que se desea imprimir en consula

# ========================================
# Vectores 
# ========================================

# Un vector es la estructura de datos más básica en R: una secuencia ordenada de elementos del
# mismo tipo. Se crea con la función c() (combine).

# Tipos de Vectores 

# Vector numérico (enteros)
comunas <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)

# Vector de decimales
superficies_km2 <- c(5.27, 2.76, 6.31, 9.17, 6.85, 6.61, 12.43,
                     21.37, 16.53, 13.69, 13.43, 7.44, 14.05,
                     13.14, 12.44)

# Vector de texto (character)
nombres_comunas <- c("San Nicolás-Monserrat", "Recoleta", "Balvanera-San Cristóbal",
                     "La Boca-Barracas-Parque Patricios-Nueva Pompeya",
                     "Almagro-Boedo", "Caballito", "Flores-Parque Chacabuco",
                     "Villa Soldati-Villa Riachuelo-Villa Lugano",
                     "Liniers-Mataderos-Parque Avellaneda",
                     "Floresta-Monte Castro-Vélez Sársfield-Versalles-Villa Real-Villa del Parque",
                     "Villa General Mitre-Villa Devoto-Villa del Parque-Villa Santa Rita",
                     "Coghlan-Saavedra-Villa Urquiza-Villa Pueyrredón",
                     "Belgrano-Núñez-Colegiales",
                     "Palermo",
                     "Chacarita-Villa Crespo-Paternal-Villa Ortúzar-Agronomía-Parque Chas")

# Vector lógico
es_costero <- c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE,
                TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE)


# Operaciones con los vectores 

# Longitud del vector
length(comunas) # cantidad o número de elementos que tiene un vector 

# Suma y estadísticas
sum(superficies_km2)
max(superficies_km2)
mean(superficies_km2)
median(superficies_km2)







