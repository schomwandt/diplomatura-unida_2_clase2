
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
# se realizan dentro del vector 
sum(superficies_km2)
max(superficies_km2)
mean(superficies_km2)
median(superficies_km2)

# --------------------------------------------
# Ordenar
# En R, sort() y order() tienen propuestos completamente diferentes:

# sort() Ordenar directamente los datos del vectro 

# order() Los índices que permitirían ordenar el vector - Devolver la permutación de posiciones 
# da en qué posición estaban originalmente los valores ordenados

sort(superficies_km2) # ascendente
sort(superficies_km2, decreasing = TRUE) # descendente

# Índice del orden
order(superficies_km2)

# --------------------------------------------
# Acceso a elementos
# En R, el acceso a elementos se realiza principalmente con el operador de corchetes [].

# Acceso por posición (R indexa desde 1)
superficies_km2[1] # primera comunas
superficies_km2[c(1,3)] # primera y tercera
superficies_km2[1:5] # primeras cinco


#  | Operador | Uso                                                | Devuelve                                                    |
#  | -------- | -------------------------------------------------- | ----------------------------------------------------------- |
#  | []       | Subconjuntos de vectores, matrices, data frames    | Objeto de la misma clase que el original rsanchezs.gitbooks |
#  | [[ ]]    | Extraer elementos de listas o data frames          | Solo un elemento, clase puede cambiar rsanchezs.gitbooks    |
#  | $        | Extraer elementos de listas/data frames por nombre | Similar to [[ ]] rsanchezs.gitbooks                         |

# Acceso con condición lógica
superficies_km2[superficies_km2 > 10]


# ========================================
# Matrices 
# ========================================

#´ Definición de matrices en R
#'
#' En R, una matriz es una colección de elementos del mismo tipo de datos 'numéricos, caracteres o lógicos'
#' dispuestos en un número fijo de filas y columnas. Es una estructura bidimensional (solo filas y columnas).
#' 
#' Argumentos de la función matrix():

matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

# Crear una matriz de datos de población por grupo etario (inventado)
datos_poblacion <- matrix(
  data = c(120000, 115000, 98000, 87000,
           200000, 195000, 180000, 170000,
           150000, 145000, 130000, 120000),
  nrow = 3,
  ncol = 4,
  byrow = TRUE)

print(datos_poblacion)

# Asignar nombres a filas y columnas

#  Nombre de los registros por grupo etario 
rownames(datos_poblacion) <- c("0-17 años", "18-64 años", "65+ años")

#  nombre de las columnas por zona
colnames(datos_poblacion) <- c("Norte", "Sur", "Este", "Oeste")

print(datos_poblacion)

# Ver los nombres de filas
rownames(datos_poblacion)
# Ver los nombres de columnas
colnames(datos_poblacion)

# --------------------------------------
#  Operaciones con matrices 

# Dimensiones
nrow(datos_poblacion) #  número de registros
ncol(datos_poblacion) #  número de columnas
dim(datos_poblacion) #  dimensiones de la matriz 

# Medias por fila y columna
rowMeans(datos_poblacion) # promedio por grupo etario
colMeans(datos_poblacion) # promedio por zona

# Sumas
rowSums(datos_poblacion) # total por grupo etario
colSums(datos_poblacion) # total por zona

# sumar todo el contenido de la matriz
sum(datos_poblacion)

# promedio de población por zonas
colMeans(datos_poblacion)

# Acceso a elementos mediante [fila, columna]
datos_poblacion[1, 2] # fila 1, columna 2
datos_poblacion[, 1] # toda la columna 1 (zona Norte)
datos_poblacion[2, ] # toda la fila 2 (18-64 años)

# Acceso a elementos mediante el nombre
datos_poblacion[c("0-17 años", "18-64 años"), ]
# también es posible utilizar la posición numérica 
datos_poblacion[c(1, 2), ]

# Filas y columnas específicas, es un recorte de la matriz
datos_poblacion[c("0-17 años", "18-64 años"), c("Norte", "Sur")]

# si deseamos trasponer la matriz lo podemos realizar con la función t() 
t(datos_poblacion)


# ========================================
# Listas 
# ========================================

#' En R, una lista es un contenedor de objetos que pueden ser de cualquier clase, 
#' como vectores, matrices, arrays, funciones, data frames e incluso otras listas. 
#' Es una estructura de datos unidimensional que permite almacenar 
#' elementos de distintos tipos y dimensiones.
#'


# Crear una lista con información de un barrio

barrio_palermo <- list(nombre = "Palermo",
                       comuna = 14,
                       superficie = 15.98,
                       poblacion = 234184,
                       es_costero = FALSE,
                       limites = c("Belgrano", "Recoleta", "Villa Crespo", "Chacarita")
                       ) 

# Ver estructura completa
str(barrio_palermo)

# Acceso a elementos de una lista 

# Por nombre con $
barrio_palermo$nombre
barrio_palermo$poblacion

# Por índice con [[]]
barrio_palermo[[1]] # primer elemento
barrio_palermo[[4]] # cuarto elemento

#  acceder por nombres
barrio_palermo$nombre          # "Palermo"
barrio_palermo$comuna          # 14
barrio_palermo$superficie      # 15.98
barrio_palermo$limites         # c("Belgrano", "Recoleta", "Villa Crespo", "Chacarita")

# Acceder a elementos dentro de un elemento (vector):
barrio_palermo$limites[1]      # "Belgrano" (primer límite)
barrio_palermo$limites[2:4]    # c("Recoleta", "Villa Crespo", "Chacarita")
barrio_palermo$limites[3]      # "Villa Crespo"


# Modificar un elemento de la lista
barrio_palermo$poblacion <- 235000

# Crear lista con otro barrio
barrio_recoleta <- list(nombre = "Recoleta",
                        comuna = 14,
                        superficie = 4.6,
                        poblacion = 171155,
                        es_costero = FALSE,
                        limites = c("Palermo", "Belgrano", "Caballito"))

# Crear lista de barrios (lista recursiva)
barrios_ba <- list(barrio_palermo, barrio_recoleta)
# Ver estructura completa
str(barrios_ba)

# ---------------------------------------------------------

# muy importante: 
# Existe una relación directa y fundamental entre las listas en R y los archivos JSON/GeoJSON: 
# las listas en R son la representación natural de JSON en el ambiente de trabajo.

#  | Tarea          | PostgreSQL/PostGIS       | R (con listas)                    |
#  | -------------- | ------------------------ | --------------------------------- |
#  | Serialización  | ST_GeoJSON(geometry)     | geojson_out(lista) rdocumentation |
#  | Importación    | ST_GeomFromGeoJSON(json) | fromJSON(archivo)                 |
#  | Transformación | Funciones SQL espaciales | Manipulación de listas            |
#  | Visualización  | QGIS, pgAdmin            | leaflet, ggplot2, sf              |




