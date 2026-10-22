# Lector para cuadros del INEC publicados en Excel, donde las etiquetas de
# fila ocupan una o varias líneas y las cifras están en las últimas columnas.

# Devuelve un tibble con la etiqueta de cada fila y sus n cifras finales.
# - archivo: ruta del Excel (una sola hoja)
# - n_cifras: cuántas columnas numéricas tiene el cuadro (excluidas las etiquetas)
# - desde: fila donde empieza el cuerpo del cuadro (después de los encabezados)
leer_cuadro_inec <- function(archivo, n_cifras, desde = 1) {
  crudo <- readxl::read_excel(
    archivo,
    col_names = FALSE,
    col_types = "text",
    .name_repair = "minimal"
  )

  filas <- seq(desde, nrow(crudo))
  etiqueta_pendiente <- character()
  resultado <- list()

  for (i in filas) {
    celdas <- as.character(unlist(crudo[i, ]))
    celdas <- celdas[!is.na(celdas)]
    if (length(celdas) == 0) next

    # Una celda es cifra si es un número o un guion (cantidad nula)
    es_cifra <- grepl("^-?[0-9.,]+$", celdas) | celdas == "-"
    cifras <- celdas[es_cifra]

    if (length(cifras) >= n_cifras) {
      # Las últimas n cifras son los datos; las celdas no numéricas, la etiqueta
      etiqueta <- c(etiqueta_pendiente, celdas[!es_cifra])
      etiqueta <- stringr::str_squish(paste(etiqueta, collapse = " "))
      valores <- tail(cifras, n_cifras)
      valores[valores == "-"] <- "0"
      resultado[[length(resultado) + 1]] <- c(etiqueta, valores)
      etiqueta_pendiente <- character()
    } else {
      # Fila de etiqueta que continúa en la siguiente
      etiqueta_pendiente <- c(etiqueta_pendiente, celdas)
    }
  }

  out <- do.call(rbind, resultado)
  out <- tibble::as_tibble(out, .name_repair = "minimal")
  names(out) <- c("etiqueta", paste0("v", seq_len(n_cifras)))
  dplyr::mutate(out, dplyr::across(dplyr::starts_with("v"), \(x) as.numeric(gsub(",", "", x))))
}
