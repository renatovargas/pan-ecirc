# Funciones y constantes compartidas por las memorias de cálculo y los documentos.
# Se carga con source("materiales/calculos/scripts/funciones_comunes.R")
# desde la raíz del proyecto (execute-dir: project).

library(tidyverse)
library(flextable)
library(openxlsx)

# Los seis sectores de la Hoja de Ruta de Economía Circular de Panamá (2024),
# más una categoría residual para que los totales sumen a la economía completa.
sectores_politica <- c(
  "Residuos",
  "Energía",
  "Recursos hídricos",
  "Industrias",
  "Agricultura y alimentos",
  "Ciudades y construcción",
  "Resto de la economía"
)

# Formato común de las tablas de flextable
set_flextable_defaults(
  font.size = 9,
  font.family = "Arial",
  padding = 3,
  big.mark = ",",
  decimal.mark = "."
)

# Convierte un data frame en flextable con formato uniforme.
# digitos: decimales de las columnas numéricas (no enteras).
tabla_ft <- function(x, digitos = 1) {
  x |>
    flextable() |>
    colformat_double(digits = digitos) |>
    theme_booktabs() |>
    autofit()
}

# Lee un RDS de data/outputs/ por su nombre (sin extensión)
leer_salida <- function(nombre) {
  readRDS(file.path("data", "outputs", paste0(nombre, ".rds")))
}

# Guarda un data frame en data/outputs/ como RDS y como Excel
guardar_salida <- function(x, nombre, hoja = "datos") {
  saveRDS(x, file.path("data", "outputs", paste0(nombre, ".rds")))
  write.xlsx(
    x,
    file.path("data", "outputs", paste0(nombre, ".xlsx")),
    sheetName = hoja,
    overwrite = TRUE
  )
  invisible(x)
}

# ---- Funciones para los documentos publicados (formato en español) ----

# Número con coma decimal y punto de miles, para el texto corrido
formato_es <- function(x, digitos = 1) {
  formatC(x, format = "f", digits = digitos, big.mark = ".", decimal.mark = ",")
}

# Tema común de los gráficos
tema_grafico <- function() {
  theme_minimal(base_size = 10) +
    theme(legend.position = "bottom", legend.title = element_blank())
}

# Tabla de flextable con formato español, ajustada al ancho de la página
tabla_ft_es <- function(x, digitos = 1, enteros = NULL) {
  tabla <- x |>
    # Los enteros pasan a numéricos para usar el mismo formato que los decimales
    mutate(across(where(is.integer), as.numeric)) |>
    flextable() |>
    colformat_double(digits = digitos, big.mark = ".", decimal.mark = ",")

  # Columnas de conteos o montos que se muestran sin decimales
  if (!is.null(enteros)) {
    tabla <- colformat_double(
      tabla, j = enteros, digits = 0, big.mark = ".", decimal.mark = ","
    )
  }

  tabla |>
    theme_booktabs() |>
    fontsize(size = 8, part = "all") |>
    set_table_properties(layout = "autofit", width = 1)
}
