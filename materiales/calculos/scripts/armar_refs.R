# Arma el refs.bib de cada memoria de cálculo y documento a partir de la
# bibliografía maestra. Cada refs.bib contiene solo las claves citadas en su index.qmd.
#
# Uso (desde la raíz del proyecto):
#   source("materiales/calculos/scripts/armar_refs.R")
#   armar_refs("materiales/documentos/a1c-sectores-economicos-priorizados")

library(stringr)

# Divide un texto bibtex en entradas con su clave
leer_bib <- function(archivo) {
  texto <- paste(readLines(archivo, warn = FALSE, encoding = "UTF-8"), collapse = "\n")
  entradas <- str_extract_all(texto, "(?s)@[A-Za-z]+\\{[^,\\n]+,.*?\\n\\}")[[1]]
  claves <- str_match(entradas, "@[A-Za-z]+\\{([^,\\n]+),")[, 2]
  setNames(entradas, claves)
}

armar_refs <- function(carpeta, maestro = "materiales/calculos/scripts/refs-maestro.bib") {
  qmd <- file.path(carpeta, "index.qmd")
  texto <- paste(readLines(qmd, warn = FALSE, encoding = "UTF-8"), collapse = "\n")

  # Claves citadas con [@clave], @clave y [@clave, p. 3]
  citadas <- unique(str_match_all(texto, "@([A-Za-z0-9_:.-]*[A-Za-z0-9_])")[[1]][, 2])
  # Referencias cruzadas de Quarto (@tbl-, @fig-, @sec-, @eq-) no son citas
  citadas <- citadas[!str_detect(citadas, "^(tbl|fig|sec|eq|lst|apx)-")]

  bib <- leer_bib(maestro)
  presentes <- intersect(citadas, names(bib))
  faltantes <- setdiff(citadas, names(bib))

  writeLines(unname(bib[presentes]), file.path(carpeta, "refs.bib"), sep = "\n\n")
  list(carpeta = carpeta, citas = length(presentes), faltantes = faltantes)
}
