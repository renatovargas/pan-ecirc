# Estructura del sitio y receta para replicarlo

Guía para crear un sitio de materiales (documentos y presentaciones) como el de este repositorio, con la misma estructura, el mismo flujo de trabajo y las mismas convenciones. Se escribe pensando en un proyecto nuevo para otra institución o país. Las rutas, nombres y colores de este archivo son los de la plantilla, no los de `pe-hc`.

Diferencias respecto a `pe-hc`: aquí las carpetas de datos se llaman `data/` y `data/outputs/` (en `pe-hc` son `datos/` y `datos/salidas/`), y las tablas de los documentos usan `flextable` (en `pe-hc` se usó `gt`). Un proyecto nuevo debe seguir esta guía y no copiar esos dos detalles de `pe-hc`.

## Plantilla lista para copiar

La carpeta `assets/site-template/` del repositorio de la skill `quarto-site-template` contiene un sitio mínimo ya armado y probado (renderiza a HTML y a Word): `_quarto.yml`, temas, un documento de ejemplo con `flextable`, una presentación de ejemplo, `assets/` (`apa-es.csl`, `apa-6th-edition.csl`, `reference.docx`), `data/` y `AGENTS.md`. Para crear un proyecto nuevo se copia su contenido a la raíz del repositorio y se ajusta lo que indican los pasos del final de este archivo. Esta guía es la fuente de verdad: se mantiene en `references/estructura.md` del mismo repositorio.

En `slides/pstyles.scss` de la plantilla no hay marca ni logo: la portada es la predeterminada de revealjs y las columnas izquierda y derecha del footer están vacías (`content: ""`). Para agregar marca o autor se escribe el texto en `&::before` y `&::after`.

## Principios

1. **Todo el cálculo es en R.** Ningún script auxiliar en Python, ni en otro lenguaje. Los chunks de los `.qmd` son `{r}`.
2. **Las rutas en código de R son relativas a la raíz del proyecto** (`execute-dir: project`). Nunca usar `here::here()` ni funciones similares.
3. **Los enlaces e imágenes del texto** (markdown o HTML) se resuelven relativos al `.qmd`, sin importar `execute-dir`.
4. **Las tablas de los documentos se hacen con `flextable`**, nunca con `gt()`, porque la salida a Word es prioritaria y `flextable` la renderiza mejor (ver sección de tablas).
5. **URL limpias:** cada documento o presentación vive en su propia carpeta con un `index.qmd`, de modo que la URL es `.../nombre/` y no `.../nombre.html`.
6. **`docs/` es salida generada.** No se edita a mano y no se renderiza sin que la persona responsable del proyecto lo pida.

## Árbol de carpetas

```
raíz/
├── _quarto.yml                  # configuración del sitio
├── index.qmd                    # portada
├── about.qmd                    # acerca de, autoría y descargo de responsabilidad
├── styles.scss                  # tema del sitio web (colores de la institución)
├── styles.css                   # reglas CSS del sitio (iframes de presentaciones)
├── AGENTS.md                    # notas del proyecto para asistentes de código
├── estructura.md                # este archivo
├── .gitignore
├── assets/
│   ├── logo-institucion.svg     # logo usado por el scss de las presentaciones
│   ├── apa-es.csl               # estilo de citas (APA 7 en español)
│   └── reference.docx           # documento de referencia para la salida a Word
├── data/                        # datos de entrada y ejemplos
│   ├── examples/                # archivos que se enlazan desde las diapositivas
│   ├── <iso3>/                  # datos por país (por ejemplo per, gtm, ecu)
│   └── outputs/                 # resultados exportados por los documentos
├── refs/                        # material de consulta; no se publica (excluido del render)
├── materiales/
│   ├── index.qmd                # índice con tarjetas: documentos y presentaciones
│   ├── documentos/
│   │   ├── estilos.css          # CSS compartido por los documentos
│   │   └── <nombre-documento>/
│   │       ├── index.qmd
│   │       ├── refs.bib
│   │       └── images/
│   └── presentaciones/
│       └── <nombre-corto>/
│           └── index.qmd        # página que embebe la presentación en un iframe
├── slides/
│   ├── pstyles.scss             # tema revealjs compartido (look de la institución)
│   └── <NN-nombre>/
│       ├── index.qmd            # la presentación (revealjs)
│       ├── refs.bib
│       └── images/
└── docs/                        # salida generada (GitHub Pages)
```

## `_quarto.yml`

El bloque `project` es el centro de la configuración:

```yaml
project:
  type: website
  output-dir: docs
  execute-dir: project
  render:
    - "*.qmd"
    - "materiales/**/*.qmd"
    - "slides/**/*.qmd"
    - "!refs/"
  resources:
    - data/
    - assets/
```

Particularidades:

- `output-dir: docs` permite publicar con GitHub Pages desde la carpeta `docs/` de la rama principal.
- `execute-dir: project` hace que el código de R se ejecute desde la raíz del proyecto. Los paths dentro de los chunks son, por ejemplo, `read_excel("data/per/archivo.xlsx")`, sin importar en qué carpeta esté el `.qmd`.
- `render` lista explícitamente qué se renderiza. `"!refs/"` excluye la carpeta de consulta (incluye un `.qmd` de pruebas, si lo hay). Para ocultar páginas aún no publicadas se agregan exclusiones como `"!materiales/presentaciones/<nombre-corto>/"` y se quitan al publicar.
- `resources` copia `data/` y `assets/` a `docs/` al renderizar el **proyecto completo**. Al renderizar un solo archivo, Quarto no copia los recursos; por eso los enlaces a `data/` y los logos del CSS pueden fallar en una vista previa individual.

El resto del archivo:

```yaml
website:
  title: "Título del sitio"
  repo-url: https://github.com/<usuario>/<repo>
  repo-branch: main
  repo-actions: [source]
  description: "Descripción corta"
  navbar:
    left:
      - href: index.qmd
        text: Inicio
      - href: materiales/index.qmd
        text: Materiales
      - href: about.qmd
        text: Acerca de
  sidebar:
    - title: Materiales
      style: docked
      search: false
      contents:
        - text: "Materiales"
          href: materiales/index.qmd
        - section: Documentos
          contents:
            - text: "Título legible del documento"
              href: materiales/documentos/<nombre-documento>/index.qmd
        - section: Presentaciones
          contents:
            - materiales/presentaciones/<nombre-corto>/index.qmd

format:
  html:
    theme:
      - yeti
      - styles.scss
    css: styles.css
    toc: true
```

Los enlaces del `sidebar` apuntan al `.qmd` (Quarto los traduce a la URL de salida). Cada documento nuevo y cada presentación nueva se agrega aquí a mano.

## Tema de la institución (`slides/pstyles.scss`)

Es el archivo que hay que ajustar primero en un proyecto para otra institución. Define el aspecto de todas las presentaciones y se reutiliza desde cada una con `theme: [simple, ../pstyles.scss]`. Pasos:

1. **Colores nombrados** en la sección `defaults`: una variable `$theme-<Inst><color>` por cada color de la paleta institucional (azul, azul claro, amarillo, gris, blanco, y los de acento). Todo el resto del scss usa esas variables. Reasignar `$body-bg`, `$body-color`, `$presentation-heading-color`, `$link-color` y `$code-color` a esa paleta.
2. **Tipografías:** `$presentation-font-family`, `$presentation-heading-font` y `$font-family-monospace`, con el `@import` de Google Fonts correspondiente. Usar las fuentes de la institución o equivalentes abiertas.
3. **Escala:** `$presentation-font-size-root` (25px en la plantilla) y `$code-block-font-size`.
4. **Logo:** colocar el SVG en `assets/` y apuntar la portada a él. La ruta de `url(...)` dentro del scss es relativa al **CSS compilado**, que queda en `docs/site_libs/revealjs/dist/theme/`; en la plantilla es `../../../../assets/logo-institucion.svg`.
5. **Clases de diapositiva** que usa el YAML de cada presentación:
   - `.theme-title`: portada (panel de color a la izquierda, logo, título y autores alineados a la izquierda).
   - `.theme-content`: diapositiva de fondo de color con texto blanco.
   - `.theme-blank`: diapositiva en blanco, para centrar un mensaje o tabla de descargas.
6. **Footer de tres columnas** (`.reveal .footer`): marca de la institución a la izquierda (`&::before`), el texto `footer:` del YAML al centro y el nombre de la persona autora a la derecha (`&::after`). Las columnas son `15% 70% 15%`. Reemplazar el texto de marca y de autor en el scss. Requiere `box-sizing: border-box`; sin eso la barra desborda a la derecha y se corta la tercera columna. La portada oculta el footer con `data-state: sin-footer`.
7. **Clases utilitarias:** `.emphasis` (texto de énfasis en color de acento), `a.button` (botón de descarga), `a.ref-card` (tarjeta con cita), `.bg-*` (resaltado de matrices) y `.diagrama` (tabla de bloques). Conservar solo las que se usen.

El tema del sitio web (`styles.scss` de la raíz) es más corto: solo reasigna `$primary` y `$link-color` al color principal de la institución, para que el sitio y las presentaciones combinen.

## Presentaciones (revealjs)

Cada presentación tiene su carpeta en `slides/` y una página envoltorio en `materiales/presentaciones/<nombre-corto>/index.qmd`, donde `<nombre-corto>` es el nombre de la presentación en corto con guiones, para que la URL sea `.../presentaciones/<nombre-corto>/` sin `.html`.

**`slides/<NN-nombre>/index.qmd`:**

```yaml
---
title: "Título"
subtitle: "Subtítulo"
author:
  - name: "Nombre Apellido"
    affiliations:
      - name: Institución
lang: es
bibliography: refs.bib
csl: ../../assets/apa-es.csl
format:
  revealjs:
    theme: [simple, ../pstyles.scss]
    include-in-header:
      - text: |
          <script>
            window.MathJax = {
              "HTML-CSS": { scale: 80 }
            };
          </script>
    footer: "Título corto para el pie"
    title-slide-attributes:
      class: theme-title
      data-state: sin-footer
execute:
  echo: true
---
```

Notas:

- `lang: es` es necesario para que las citas salgan con "y" y "3.ª ed." y no con "&" y "3rd ed.".
- `bibliography` y `csl` son relativas al `.qmd`.
- La diapositiva de bibliografía contiene solo `::: {#refs}` y `:::`, para que Quarto coloque ahí la lista sin crear una diapositiva aparte.
- Citas en el texto con `[@clave]`; no escribir "(Autor, año)" a mano.
- Vínculos internos con el id directo, `[texto](#suma)`, y ids explícitos en el título (`## Suma {#suma}`).
- Quarto carga MathJax 2 en revealjs. La escala de las fórmulas se ajusta solo con el número `scale` del YAML. No forzar `font-size` con CSS. No definir `Macros` con colores hexadecimales (el `#` se lee como parámetro). Para resaltar con color usar `\bbox[#B5E6A2,3px]{\mathbf{Z}}` escrito de forma literal, y `\widehat{...}` en lugar de `\hat{...}`.

**`materiales/presentaciones/<nombre-corto>/index.qmd`** (página que la embebe; las rutas suben tres niveles):

```markdown
---
title: "Título"
subtitle: "Subtítulo"
---

::::{.slide-embed}
<iframe class="slide-deck" src="../../../slides/<NN-nombre>/index.html" title="Título" loading="lazy"></iframe>
::::

::::{.slide-links}
[⛶ Pantalla completa](../../../slides/<NN-nombre>/index.html){target="_blank"}
::::

## Objetivos

- Objetivo 1
- Objetivo 2
```

Las clases `.slide-embed`, `.slide-deck` y `.slide-links` están en `styles.css` de la raíz (iframe de relación 3:2 con borde y enlace a pantalla completa alineado a la derecha).

## Documentos (HTML y Word)

Cada documento vive en `materiales/documentos/<nombre-documento>/index.qmd`, con su `refs.bib` y su carpeta `images/`. El nombre de la carpeta es el que aparece en la URL (`.../documentos/<nombre-documento>/`), así que debe ser corto, en minúsculas y con guiones.

```yaml
---
title: "Título del documento"
description: "Resumen de una línea"
author: "Nombre Apellido"
date: "2026-01-01"
lang: es
categories:
  - tema
  - rstats
bibliography: refs.bib
csl: ../../../assets/apa-es.csl
format:
  html:
    toc: true
    toc-depth: 3
    number-sections: true
    css: ../estilos.css
  docx:
    toc: true
    toc-depth: 3
    number-sections: true
    reference-doc: ../../../assets/reference.docx
execute:
  warning: false
---
```

- Las rutas de `csl`, `css` y `reference-doc` son relativas al `.qmd`: desde `materiales/documentos/<nombre>/index.qmd` se sube tres niveles para llegar a `assets/`.
- El **documento de referencia de Word** (`assets/reference.docx`) fija los estilos (Título, Encabezados, Texto, tablas, pie de página) con la identidad de la institución. La plantilla trae uno (`assets/reference.docx`); para personalizarlo se abre en Word, se modifican los estilos (no el contenido) y se guarda. Uno nuevo se puede generar con `quarto pandoc -o reference.docx --print-default-data-file reference.docx`. Todos los documentos lo reutilizan.
- En `pe-hc` los documentos incluyen también salida a PDF. Si Word es el formato principal, se puede omitir.
- Cada documento debe poder leerse sin los demás; los enlaces cruzados entre documentos son opcionales.
- No renumerar secciones de un documento que otros citan ("sección 3.3"); lo nuevo va como encabezado de cuarto nivel.

### Tablas con flextable (no con gt)

`gt` se ve bien en HTML, pero en Word queda peor que `flextable`. Como los documentos se entregan en Word, todas las tablas se construyen con `flextable`, que funciona igual en HTML y en docx.

Preámbulo y función auxiliar de la plantilla (ponerla una vez por documento, en el chunk de preámbulo):

```r
library(readxl)     # leer los datos de Excel
library(tidyverse)  # manipular datos
library(flextable)  # tablas
library(openxlsx)   # exportar resultados a Excel

set_flextable_defaults(
  font.size = 9,
  font.family = "Arial",
  padding = 3,
  big.mark = ","
)

tabla_ft <- function(x, digitos = 0) {
  x |>
    as.data.frame() |>
    tibble::rownames_to_column(" ") |>
    flextable() |>
    colformat_double(digits = digitos) |>
    autofit()
}
```

Reglas:

- Usar `tabla_ft(x)` o `flextable()` directamente; nunca cargar `gt`.
- Las leyendas y referencias cruzadas se definen con las opciones de chunk de Quarto (`#| label: tbl-nombre` y `#| tbl-cap: "..."`), no con `set_caption()`, para que funcionen en HTML y en Word.
- Ajustar el ancho con `autofit()` o `set_table_properties(layout = "autofit", width = 1)`. Revisar siempre la salida en Word, que es la que cuenta.
- Para ecuaciones, Quarto las convierte a ecuaciones nativas de Word; probar las fórmulas largas en el docx.

## Bibliografía (BibTeX)

- **Un `refs.bib` por documento y por presentación**, dentro de su carpeta. Cada uno se declara con `bibliography: refs.bib` (ruta relativa al `.qmd`).
- **Estilo de citas único:** `assets/apa-es.csl` (APA 7 en español), referenciado con `csl: ../../assets/apa-es.csl` (presentaciones) o `csl: ../../../assets/apa-es.csl` (documentos).
- **Claves:** `autorañopalabra`, en minúsculas (por ejemplo `millerblair2022`). La misma clave puede repetirse en varios `refs.bib`; cada archivo contiene solo lo que cita su documento.
- **Autores institucionales** con doble llave: `author = {{United Nations}}`, para que la cita corta use el nombre completo. Los demás organismos van en `note`.
- Contrastar autores, año y DOI con Crossref antes de agregar una entrada.

## Datos (`data/`)

- `data/examples/`: archivos de ejemplo (`.xlsx`, `.R`) que se enlazan desde las diapositivas con `../../data/examples/archivo` y botones `{.button download="archivo"}`.
- `data/<iso3>/`: datos por país con su nombre original.
- `data/outputs/`: resultados que exportan los documentos (por ejemplo con `openxlsx`), con el nombre del documento que los genera.
- Rutas en código R, desde la raíz: `read_excel("data/<iso3>/archivo.xlsx")`.
- La carpeta `data/` está en `resources` del `_quarto.yml`; Quarto la copia a `docs/data/` al renderizar el proyecto completo.
- Las cifras de los documentos se leen de los archivos con R; no copiar números a mano.

## Páginas de portada y de índice

- `index.qmd`: portada con descripción del proyecto y enlaces a la sección de materiales.
- `about.qmd`: autoría, y un **descargo de responsabilidad** (las opiniones son de los autores y no de la institución).
- `materiales/index.qmd`: dos tarjetas (Documentos y Presentaciones) con la grilla de Bootstrap (`.grid`, `.g-col-12 .g-col-md-6`, `.card .h-100 .shadow-sm`, botón `.btn .btn-primary`).

## `.gitignore`

Como mínimo: `/.quarto/`, `**/*.quarto_ipynb`, `/refs/` (si el material de consulta no se versiona), y los archivos del sistema operativo (`.DS_Store`, `Thumbs.db`, etc.).

## `AGENTS.md` del proyecto

Conviene crear un `AGENTS.md` en la raíz con las reglas que un asistente debe respetar. Contenido mínimo:

- Estructura del `project` de `_quarto.yml` y el significado de `execute-dir: project`.
- Todo el proyecto usa solo R; nunca crear herramientas auxiliares en Python.
- Tablas con `flextable`, nunca con `gt`.
- No renderizar el proyecto sin que se pida; `docs/` es salida generada.
- Estilo de prosa y terminología acordados.

## Lista de pasos para un proyecto nuevo

1. Crear el repositorio y copiar `_quarto.yml`, `styles.scss`, `styles.css`, `index.qmd`, `about.qmd`, `.gitignore`, `AGENTS.md` y `estructura.md`.
2. Crear `assets/` con el logo, `apa-es.csl` y `reference.docx` (con los estilos de la institución).
3. Ajustar `slides/pstyles.scss` a la institución: paleta, tipografías, logo, texto de marca y de autor del footer.
4. Ajustar `styles.scss` (color primario) y el título, la descripción, `repo-url` y la navegación de `_quarto.yml`.
5. Crear `data/`, `data/examples/` y `data/outputs/`.
6. Crear el primer documento (`materiales/documentos/<nombre>/index.qmd` con su `refs.bib`) y la primera presentación (`slides/<NN-nombre>/index.qmd` y su página en `materiales/presentaciones/<nombre-corto>/index.qmd`).
7. Agregar ambos al `sidebar` de `_quarto.yml`.
8. Renderizar el proyecto completo (`quarto render`) y revisar en pantalla el HTML, las presentaciones y el docx.
9. Publicar `docs/` con GitHub Pages (rama principal, carpeta `/docs`).

## Verificación sin renderizar

- Extraer el código de un documento con `knitr::purl("materiales/documentos/<nombre>/index.qmd")` y correrlo en un entorno nuevo, sin el chunk de exportación.
- Para chunks sueltos con `knitr::knit()`, fijar `knitr::opts_knit$set(root.dir = <raíz del proyecto>)`, porque `knit` cambia el directorio de trabajo.
- Las citas se comprueban con `pandoc --citeproc` y la bibliografía del documento.
