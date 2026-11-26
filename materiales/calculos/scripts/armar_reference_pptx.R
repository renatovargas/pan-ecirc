# Arma assets/reference.pptx, la plantilla de PowerPoint de las presentaciones
#
# Parte de la plantilla por defecto de pandoc (16:9) y le aplica la paleta de
# slides/pstyles.scss: títulos en el azul principal alineados a la izquierda,
# secciones con fondo azul secundario y texto blanco, letra Arial y cuerpo
# más pequeño para que quepan las diapositivas densas.
#
# Uso (desde la raíz del proyecto):
#   source("materiales/calculos/scripts/armar_reference_pptx.R")
#   armar_reference_pptx()

library(stringr)

armar_reference_pptx <- function(salida = "assets/reference.pptx") {
  tmp <- tempfile("refpptx")
  dir.create(tmp)
  base <- file.path(tmp, "base.pptx")
  system2("quarto", c("pandoc", "--print-default-data-file", "reference.pptx"), stdout = base)
  dir_x <- file.path(tmp, "x")
  utils::unzip(base, exdir = dir_x)

  editar <- function(ruta, reemplazos) {
    f <- file.path(dir_x, ruta)
    x <- paste(readLines(f, warn = FALSE, encoding = "UTF-8"), collapse = "\n")
    for (r in reemplazos) {
      stopifnot(str_detect(x, fixed(r[1])))
      x <- str_replace_all(x, fixed(r[1]), r[2])
    }
    writeLines(x, f, useBytes = TRUE)
  }

  # Paleta y letra del tema
  editar("ppt/theme/theme1.xml", list(
    c('<a:dk2><a:srgbClr val="1F497D"/>', '<a:dk2><a:srgbClr val="2E86C1"/>'),
    c('<a:accent1><a:srgbClr val="4F81BD"/>', '<a:accent1><a:srgbClr val="009EDB"/>'),
    c('<a:accent2><a:srgbClr val="C0504D"/>', '<a:accent2><a:srgbClr val="2E86C1"/>'),
    c('<a:accent3><a:srgbClr val="9BBB59"/>', '<a:accent3><a:srgbClr val="F39C12"/>'),
    c('<a:accent4><a:srgbClr val="8064A2"/>', '<a:accent4><a:srgbClr val="FFCE5E"/>'),
    c('<a:hlink><a:srgbClr val="0000FF"/>', '<a:hlink><a:srgbClr val="2E6DA4"/>'),
    c('<a:latin typeface="Calibri"/>', '<a:latin typeface="Arial"/>')
  ))

  # Títulos azules a la izquierda y cuerpo más pequeño
  editar("ppt/slideMasters/slideMaster1.xml", list(
    c('<p:titleStyle><a:lvl1pPr algn="ctr"', '<p:titleStyle><a:lvl1pPr algn="l"'),
    c('<a:defRPr sz="3300" kern="1200"><a:solidFill><a:schemeClr val="tx1"/>',
      '<a:defRPr sz="2600" b="1" kern="1200"><a:solidFill><a:srgbClr val="009EDB"/>'),
    c('<a:defRPr sz="2400" kern="1200">', '<a:defRPr sz="1800" kern="1200">'),
    c('<a:defRPr sz="2100" kern="1200">', '<a:defRPr sz="1600" kern="1200">'),
    c('<a:defRPr sz="1800" kern="1200"><a:solidFill><a:schemeClr val="tx1"/></a:solidFill><a:latin typeface="+mn-lt"/><a:ea typeface="+mn-ea"/><a:cs typeface="+mn-cs"/></a:defRPr></a:lvl3pPr>',
      '<a:defRPr sz="1400" kern="1200"><a:solidFill><a:schemeClr val="tx1"/></a:solidFill><a:latin typeface="+mn-lt"/><a:ea typeface="+mn-ea"/><a:cs typeface="+mn-cs"/></a:defRPr></a:lvl3pPr>')
  ))

  # Encabezado de sección con fondo azul y texto blanco
  editar("ppt/slideLayouts/slideLayout3.xml", list(
    c('<p:cSld name="Section Header">',
      '<p:cSld name="Section Header"><p:bg><p:bgPr><a:solidFill><a:srgbClr val="2E86C1"/></a:solidFill><a:effectLst/></p:bgPr></p:bg>'),
    c('<a:defRPr sz="3000" b="1" cap="all"/>',
      '<a:defRPr sz="3000" b="1" cap="none"><a:solidFill><a:srgbClr val="FFFFFF"/></a:solidFill></a:defRPr>'),
    c('<a:schemeClr val="tx1"><a:tint val="75000"/></a:schemeClr>', '<a:srgbClr val="FFFFFF"/>')
  ))

  archivos <- list.files(dir_x, recursive = TRUE, all.files = TRUE, no.. = TRUE)
  # [Content_Types].xml va primero en el zip
  archivos <- c("[Content_Types].xml", setdiff(archivos, "[Content_Types].xml"))
  if (file.exists(salida)) file.remove(salida)
  zip::zip(file.path(normalizePath(dirname(salida)), basename(salida)), files = archivos, root = dir_x)
  invisible(salida)
}
