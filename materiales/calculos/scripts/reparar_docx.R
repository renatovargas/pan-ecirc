# Posprocesamiento de los .docx que genera Quarto (post-render del proyecto).
#
# Los cuadros con `tbl-cap` y etiqueta `tbl-*` salen en Word dentro de una
# tabla contenedora de una celda cuyo último elemento es la tabla interna sin
# un párrafo posterior; Word lo considera contenido ilegible y pide
# "recuperar" (quarto-dev/quarto-cli#10587, abierto). Además la leyenda lleva
# dos elementos `w:pPr`. Aquí se agrega el párrafo vacío que falta y se unen
# los dos `w:pPr`, con `w:pStyle` primero como exige el esquema.

reparar_document_xml <- function(xml) {
  # Toda celda debe terminar en un párrafo
  xml <- gsub(
    "(</w:tbl>(?:\\s*<w:bookmarkEnd[^>]*/>)?)(\\s*</w:tc>)",
    "\\1<w:p/>\\2", xml, perl = TRUE
  )
  # Leyenda con dos w:pPr: se conserva el segundo, con w:pStyle al inicio
  xml <- gsub(
    paste0(
      "<w:pPr>(?:(?!</w:pPr>).)*</w:pPr>\\s*<w:pPr>\\s*",
      "<w:jc w:val=\"left\"\\s*/>\\s*<w:spacing w:before=\"200\"\\s*/>\\s*",
      "(<w:pStyle [^>]*/>)\\s*</w:pPr>"
    ),
    "<w:pPr>\\1<w:spacing w:before=\"200\"/><w:jc w:val=\"left\"/></w:pPr>",
    xml, perl = TRUE
  )
  xml
}

reparar_docx <- function(ruta) {
  tmp <- tempfile("docx_")
  dir.create(tmp)
  on.exit(unlink(tmp, recursive = TRUE))
  utils::unzip(ruta, exdir = tmp)
  f <- file.path(tmp, "word", "document.xml")
  xml <- paste(readLines(f, warn = FALSE, encoding = "UTF-8"), collapse = "\n")
  writeLines(reparar_document_xml(xml), f, useBytes = TRUE)
  ruta <- normalizePath(ruta)
  unlink(ruta)
  old <- setwd(tmp)
  on.exit(setwd(old), add = TRUE, after = FALSE)
  utils::zip(ruta, files = list.files(".", all.files = TRUE, recursive = TRUE), flags = "-r9Xq")
  invisible(ruta)
}

if (sys.nframe() == 0) {
  salidas <- strsplit(Sys.getenv("QUARTO_PROJECT_OUTPUT_FILES"), "\n")[[1]]
  for (s in salidas[grepl("\\.docx$", salidas)]) reparar_docx(s)
}
