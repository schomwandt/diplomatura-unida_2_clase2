cat > CLAUDE.md << 'EOF'
# Proyecto: Diplomatura en Análisis Exploratorio de Datos Espaciales
## Clase 2 — Introducción al manejo de R con RStudio

### Contexto
- **Institución:** Universidad de Buenos Aires (UBA)
- **Diplomatura:** Análisis Exploratorio de Datos Espaciales aplicados a las Ciencias Sociales
- **Docentes:** Dr. David Schomwandt, Nora Lucioni
- **Unidad:** II — Clase 2

### Objetivo de la clase
Introducir a los participantes al manejo de datos en R: tipos de datos, estructuras fundamentales e importación de datasets desde distintas fuentes.

### Contenidos cubiertos
1. Variables y expresiones — operador `<-`
2. Vectores — numéricos, decimales, texto, lógicos; operaciones y funciones (`length`, `sort`, `order`, `sum`, `max`, `mean`, `median`)
3. Matrices — función `matrix()`, operaciones, `colMeans`, `rowMeans`, `colSums`, `rowSums`
4. Listas — creación, acceso por `$` e índice `[[]]`, función `append()`
5. Tuplas — simuladas con vectores nombrados
6. DataFrames — creación, `str()`, `summary()`, `ncol()`, `nrow()`, `colnames()`, `cbind()`
7. Importación de datos:
   - CSV con `readr::read_csv()` y `read.csv()`
   - XLSX con paquete `xlsx` + `rJava`
   - Desde URL con `read.csv(url)`
   - JSON con `rjson` y `jsonlite::fromJSON()`

### Datasets utilizados
- **Barrios por Comuna CABA** (CSV): https://data.buenosaires.gob.ar/dataset/barrios
  - Archivo: `barrios_comunas_p_Ciencia_de_Datos_y_PP.csv`
- **Población por barrio CABA** (XLSX): Censo 2010, misma fuente
  - Archivo: `caba_pob_barrios_2010.xlsx`
- **COVID-19** (CSV desde URL): GitHub eparker12/nCoV_tracker
- **Dataset JSON NY**: https://data.ny.gov/api/views/9a8c-vfzj/rows.json

### Estructura del proyecto