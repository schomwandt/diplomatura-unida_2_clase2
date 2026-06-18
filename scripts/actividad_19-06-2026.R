
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

# La función str() en R significa "estructura" (structure) y es una función del core de R
# se usa para mostrar de forma compacta y legible la estructura interna de cualquier objeto

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


# ========================================
# Tuplas 
# ========================================

# Una tupla es una agrupación ordenada de elementos que pueden contener diferentes tipos de variables.
# Una tupla no puede modificarse una vez que se define
# R no tiene un tipo nativo “tupla” como Python, pero podemos simularlas con vectores nombrados, que son inmutables por diseño de lenguaje

# Coordenadas de la Plaza de Mayo (latitud, longitud)
plaza_mayo <- c(lat = -34.6083, lon = -58.3712)
plaza_mayo

plaza_mayo["lat"]
plaza_mayo["lon"]

# Información de la ciudad
info_caba <- c(
  nombre = "Ciudad Autónoma de Buenos Aires",
  pais = "Argentina",
  fundacion = "1580")

info_caba["nombre"]

# ========================================
# DataFrames o Marco de Datos 
# ========================================

# El DataFrame es la estructura central para el análisis de datos en R: una tabla con filas
# (observaciones) y columnas (variables), donde cada columna puede ser de un tipo diferente. Es
# equivalente a una hoja de cálculo o a una tabla de base de datos.

#  Construir un marco de datos 

# DataFrame con datos de comunas de CABA
comunas_df <- data.frame(
  id_comuna = 1:5,
  nombre = c("Commune 1", "Commune 2", "Commune 3", "Commune 4", "Commune 5"),
  superficie = c(5.27, 2.76, 6.31, 9.17, 6.85),
  poblacion = c(205886, 157932, 187537, 218245, 179005),
  es_costero = c(TRUE, FALSE, FALSE, TRUE, FALSE)
  )

str(comunas_df)

# Resumen estadístico
summary(comunas_df)

# Dimensiones
nrow(comunas_df) # número de filas
ncol(comunas_df) # número de columnas
dim(comunas_df) # ambas dimensiones

# Nombres de columnas
colnames(comunas_df)

#  Acceso y manipulación 

# Acceso por columna
comunas_df$nombre
comunas_df[["poblacion"]]

# Acceso por fila y columna [fila, columna]
comunas_df[1, ] # primera fila completa
comunas_df[, "nombre"] # columna "nombre"
comunas_df[2, "superficie"]

# Filtrado condicional
comunas_df[comunas_df$es_costero == TRUE, ]
comunas_df[comunas_df$poblacion > 190000, ]

# Agregar columnas con la función cbind() 

# Calcular densidad poblacional
densidad <- comunas_df$poblacion / comunas_df$superficie
print(densidad)


comunas_df <- cbind(comunas_df, densidad_hab_km2 = densidad)

head(comunas_df)

# La función head() en R permite imprimir en consola el inicio de un objeto de datos (como un data frame, matriz o vector).
# por defecto muestra 6 registros


#  Importación de datos o dataset 

#  Tipo de dataset "CSV"

# El paquete readr (parte del tidyverse) ofrece funciones rápidas y robustas para leer archivos de texto delimitado


# descarga del dataset: 
# https://data.buenosaires.gob.ar/dataset/barrios/resource/7ac3ebfa-2f32-41d4-ae39-ae6f5ba15070

# Instalar y cargar readr (si no está instalado)

# install.packages("readr")

library(readr)

# Acceder al dataset en el dirctorio 

getwd() # esta función nos brinda la posibilidad de acceder a la ubicación de nuestro proyecto 

file.choose() # podemos localizar el archivo o dataset y nos devuelve el path del mismo 

path_datos <- "" # dentro almacenamos el path como variable y la podemos reutilizar 

#  podemos utilizar la ruta relativa de "datos/"barrios_comunas_p_Ciencia_de_Datos_y_PP.csv"

#  Importar CSV local
barrios <- read_csv("datos/barrios_comunas_p_Ciencia_de_Datos_y_PP.csv")

# Al utilizar read_csv es un paquete que lee primero la estructura del archivo CSV 

#  si se desea utilizar la función de base, sin traer la librería, entonces se necesita especificar
barrios_base <- read.csv("datos/barrios_comunas_p_Ciencia_de_Datos_y_PP.csv", sep = ",", encoding = "UTF-8", stringsAsFactors = FALSE)

# Diferencia clave: readr::read_csv() es más rápida, infiere mejor los tipos de
# columnas y no convierte strings a factores por defecto.


str(barrios)
View(barrios)

length(barrios)
ncol(barrios)
nrow(barrios)
colnames(barrios)
names(barrios)
rownames(barrios)

# ---------------------
# crear un vector de nombres de barrios CABA 

barrios$nombre
barrios$comuna

#  extraer un vector de un marco de datos 
nombre_barrios <- barrios$nombre
print(nombre_barrios)


#  Acceder al dataset desde una URL 
# R puede leer datos directamente desde internet usando una URL como si fuera un archivo local.

# https://raw.githubusercontent.com/eparker12/nCoV_tracker/master/input_data/coronavirus_today.csv

#  URL del dataset de COVID-19 (GitHub)
#  creamos una variable para almacenar la variable URL 

url_covid <- paste0(
  "https://raw.githubusercontent.com/eparker12/nCoV_tracker/",
  "master/input_data/coronavirus.csv")

print(url_covid)

#  importamos el dataset 
covid_data <- read.csv(url(url_covid))

# Explorar
str(covid_data)
head(covid_data)
head(covid_data[, 1:6])

dim(covid_data) #  dimensiones 

#  Importar un dataset JSON 

# El formato JSON es muy común en APIs y datos web. Dos paquetes populares: rjson y jsonlite.

# Instalar paquetes
# install.packages("rjson")
# install.packages("jsonlite")


# --- Con rjson ---

library(rjson)

url_ny <- "https://data.ny.gov/api/views/9a8c-vfzj/rows.json"

datos_ny_raw <- fromJSON(file = url_ny)

# Los datos JSON suelen venir en listas anidadas
class(datos_ny_raw)

names(datos_ny_raw)

str(datos_ny_raw)

# sabemos que hay una lista que tiene dos listas anidadas

# --- Con jsonlite (más conveniente para APIs) ---
library(jsonlite)

datos_ny <- fromJSON(url_ny) # jsonlite intenta convertir automáticamente a data.frame
str(datos_ny)
class(datos_ny)

# accediendo a las listas dentro de la lista "meta" y "data"

datos_ny_raw$meta
# Ver estructura de meta
str(datos_ny_raw$meta)

datos_ny_raw$data

# Acceder a la primera lista anidada
datos_ny_raw$rows  # o datos_ny_raw[["rows"]]



# Convertir a Data Frame para análisis:
# para esto es necesario haber importado la librearía con la función de "jsonlite" 
# Método 1: Convertir data a data frame
datos_ny_df <- as.data.frame(datos_ny$data)

# Método 2: Si data es una lista de vectores/records
datos_ny_df <- data.frame(datos_ny$data, row.names = NULL)

# Ver estructura
str(datos_ny_df)
head(datos_ny_df)

# Ver columnas
names(datos_ny_df)
 







