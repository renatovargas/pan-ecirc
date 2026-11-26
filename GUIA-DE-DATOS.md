# Guía de datos para reutilizar los resultados de este proyecto

Esta guía está pensada para equipos (y sus agentes de programación) que quieran construir tableros, visualizaciones o análisis con los datos procesados en este repositorio. Explica qué bases hay, cuáles son las más útiles, cómo se leen, qué supuestos llevan y con qué herramientas se produjeron.

El proyecto analiza instrumentos económicos para aumentar los flujos de recursos hacia la economía circular en Panamá, en el marco de la Ley 502 de 2025. Lo elaboró Renato Vargas como consultor para la Comisión Económica para América Latina y el Caribe (CEPAL). El sitio con los documentos, las memorias de cálculo y las presentaciones está en <https://renatovargas.github.io/pan-ecirc/>.

## Dónde están los datos

Todas las bases procesadas están en `data/outputs/`, cada una en dos formatos con el mismo contenido:

- `.rds`, para R, que conserva los tipos (factores ordenados, fechas).
- `.xlsx`, una hoja llamada `datos`, para cualquier otro lenguaje o herramienta.

Se pueden descargar directamente, sin clonar el repositorio:

```
https://raw.githubusercontent.com/renatovargas/pan-ecirc/main/data/outputs/<base>.rds
https://raw.githubusercontent.com/renatovargas/pan-ecirc/main/data/outputs/<base>.xlsx
https://renatovargas.github.io/pan-ecirc/data/outputs/<base>.xlsx
```

Estas bases son la fuente de verdad: los documentos y las presentaciones leen sus cifras de ellas. Ninguna se edita a mano. Cada una la produce una memoria de cálculo (`materiales/calculos/<cNN-nombre>/index.qmd`), que documenta paso a paso el método, las fuentes y las limitaciones. Antes de interpretar una cifra conviene leer la memoria que la produce, publicada en <https://renatovargas.github.io/pan-ecirc/materiales/calculos/>.

Los datos originales descargados están en las demás carpetas de `data/` (por fuente). Su inventario, con dirección web, año y limitaciones, está en `data/fuentes-descargadas.md`. Las notas de investigación con fuente, página y grado de verificación están en `research/`.

## Conceptos que hay que conocer

- **Sector de política.** Son siete: los seis que prioriza la Hoja de Ruta de Economía Circular del Ministerio de Ambiente (Residuos, Energía, Recursos hídricos, Industrias, Agricultura y alimentos, y Ciudades y construcción) más Turismo, delimitado con las actividades características de la Cuenta Satélite de Turismo. Lo que no pertenece a ninguno queda en "Resto de la economía". La columna se llama siempre `sector_principal`.
- **Sector principal único.** Cada actividad económica pertenece a un solo sector principal, de modo que las cifras por sector suman el total nacional sin doble conteo. Los vínculos con otros sectores están en `sectores_secundarios` de `mapeo_sectores_scn`.
- **Actividad económica.** Es una clase de las cuentas nacionales (columna `cod_scn`, 80 actividades) o de la matriz insumo-producto de 2018 (columna `cod_mip`, 76 actividades). La matriz tiene menos porque reúne pesca y acuicultura (AE14), el comercio de zona franca, al por mayor y al por menor (AE44) y dos actividades de apoyo al transporte por agua (AE52). Las bases que terminan en `_mip2018` usan las 76; las de cuentas, empleo, inversión y emisiones usan las 80.
- **Grupo de actividades económicas.** Es una sección de la CIIU, identificada con una letra (columna `seccion` o `ciiu_seccion`). Se usa cuando la fuente no tiene más detalle, como el directorio de empresas o la encuesta de empleo.
- **Bandera de calidad.** `sectores_priorizados` indica para cada cifra si es `Alta` (dato oficial desagregable sin supuestos), `Media` (dato oficial que requiere un supuesto de asignación) o `Baja` (dato de un grupo más amplio o con cobertura limitada). Un tablero honesto debería mostrarla.

### Orden y colores de los sectores

En los `.rds`, `sector_principal` es un factor con este orden; en los `.xlsx` es texto y hay que reordenarlo. Estos son los colores que usan todos los gráficos del proyecto:

| Sector | Color |
|---|---|
| Residuos | `#8C564B` |
| Energía | `#F39C12` |
| Recursos hídricos | `#009EDB` |
| Industrias | `#6C3483` |
| Agricultura y alimentos | `#2E8B57` |
| Ciudades y construcción | `#C0392B` |
| Turismo | `#E377C2` |
| Resto de la economía | `#B3B3B3` |

## Las bases más útiles para un tablero

### Para empezar: un indicador por sector

- **`sectores_priorizados`** (memoria c08) es la mejor puerta de entrada. Tiene formato largo, con una fila por indicador y sector, y columnas `criterio`, `indicador`, `sector_principal`, `valor`, `unidad`, `anio`, `calidad` y `memoria`. Reúne en una sola tabla producto, empleo, comercio exterior, inversión, concentración de mercado, emisiones, uso de recursos, potencial de recuperación y eslabonamientos. Algunos indicadores aparecen dos veces con distinta calidad porque provienen de dos fuentes; hay que filtrar por `calidad` o elegir una.
- **`matriz_relevancia_sectorial`** y **`matriz_relevancia_sectorial_ancha`** (c08) dan a cada sector un puntaje de 1 a 5 en seis indicadores y un puntaje medio con pesos iguales. Sirven para un mapa de calor.

### Series de tiempo

| Base | Memoria | Contenido | Unidad |
|---|---|---|---|
| `cuentas_sector_2018_2024` | c02 | Producción, consumo intermedio, valor agregado, exportaciones e importaciones por sector y año | millones de balboas corrientes |
| `cuentas_actividad_2018_2024` | c02 | Lo mismo por actividad (80) | millones de balboas corrientes |
| `crecimiento_vab_sector` | c02 | Crecimiento anual compuesto del valor agregado 2018-2024 | % |
| `empleo_sector_2018_2024` | c03 | Puestos de trabajo por categoría y remuneración | puestos |
| `empleo_actividad_2018_2024` | c03 | Lo mismo por actividad | puestos |
| `emisiones_sector_1970_2025` | c05 | Emisiones de gases de efecto invernadero por sector | Gg de CO₂ equivalente |
| `intensidad_emisiones_sector` | c05 | Emisiones por millón de balboas de valor agregado | Gg por millón |
| `energia_sector_2018_2024` | c06 | Consumo de energía e intensidad energética | miles de barriles equivalentes de petróleo |
| `fbkf_sector_estimada_2018_2024` | c09 | Formación bruta de capital fijo estimada por sector (dos métodos) | millones de balboas |
| `exportaciones_desechos_2021_2025` | c06 | Exportaciones de desechos por material | toneladas y dólares |

### Perfiles de un año

- `empleo_sector_perfil_2024` (c03): participación estimada de mujeres y de empleo informal por sector.
- `estructura_empresarial_sector_2022` y `empresas_seccion_tamano_2022` (c07): empresas por tamaño (micro, pequeña, mediana, grande).
- `residuos_composicion_2021` (c06): composición de los residuos municipales por material.
- `agua_uso_sector_2022` (c06): extracción de agua por uso.
- `eslabonamientos_sector_mip2018` y `eslabonamientos_actividad_mip2018` (c04): encadenamientos hacia atrás y hacia adelante, multiplicadores y clasificación de cada actividad (clave, de arrastre, de impulso o independiente).
- `flujos_intersectoriales_mip2018` (c04): matriz de compras entre sectores (fila vende, columna compra), útil para un diagrama de Sankey o de cuerdas.

### Instrumentos de política

- `fichas_instrumentos` (c10): los catorce instrumentos con familia, paso, mecanismo, norma necesaria, responsable, fuente de recursos, experiencia internacional, indicadores y riesgos.
- `factibilidad_instrumentos` (c10): puntaje de 1 a 5 por instrumento y criterio (98 filas), con justificación escrita y confianza. `factibilidad_rubrica` explica qué significa cada puntaje.
- `factibilidad_ranking_sensibilidad` y `factibilidad_impacto_facilidad` (c10): orden de prioridad, su sensibilidad a los pesos y los ejes de impacto y facilidad.
- `incidencia_precios_sector_mip2018`, `incidencia_precios_actividad_mip2018` e `incidencia_precios_hogares_mip2018` (c11): cuánto suben los precios por sector, por actividad y en la canasta de los hogares cuando un instrumento impone un cargo.
- `capacidades_institucionales` y `capacidades_indice_institucion` (c12): qué funciones legales tiene cada institución (regular, registrar, recaudar, controlar, monitorear, financiar).
- `cartera_credito_sector_politica_2026`, `emisiones_tematicas_latinex_2026` y `sistema_financiero_actores` (c13): crédito bancario por sector y bonos temáticos vigentes en la bolsa local.
- Las bases `hoja_ruta_*` (c14): parámetros, pasos con calendario, roles, fuentes de financiamiento, reformas, riesgos e indicadores de seguimiento de la Hoja de Ruta Nacional para el Financiamiento de la Economía Circular. `hoja_ruta_pasos` tiene año y semestre, lo que permite un diagrama de Gantt.

### Equivalencias

- `mapeo_sectores_scn` (c01): las 80 actividades con su sector principal, sectores secundarios, tipo de vínculo, código de la matriz insumo-producto y la evidencia de la asignación. Es la llave para unir cualquier dato por actividad con los sectores.

## Supuestos que un tablero no debería ocultar

- Las cifras de las cuentas nacionales están a precios corrientes; las tasas de crecimiento no descuentan la inflación. El año 2024 es provisional.
- La inversión por sector (`fbkf_*_estimada`) es una estimación con calidad Baja: las cuentas nacionales publican la inversión por producto, y su reparto entre actividades se hizo con dos métodos que dan un rango. Conviene mostrar ese rango en lugar de un solo valor.
- La participación de mujeres y del empleo informal por sector está imputada a partir de la encuesta de empleo por sección CIIU.
- El modelo de precios supone traslado completo del cargo al precio y no incluye cambios de comportamiento; sus resultados son cotas superiores.
- Las emisiones por sector provienen de EDGAR, asignadas a sectores por categoría del IPCC (`asignacion_ipcc_sector`). `contraste_edgar_inventario_nacional_2021` las compara con el inventario nacional.
- Las cifras de residuos combinan fuentes de distintos años (2015 a 2021) y son órdenes de magnitud.
- Las exportaciones de desechos sobre la generación municipal (`recuperacion_contraste_2021`) indican un orden de magnitud: las exportaciones incluyen material industrial y el reciclaje dentro del país no se mide.

## Cómo leer los datos

En R:

```r
library(tidyverse)

base <- "https://raw.githubusercontent.com/renatovargas/pan-ecirc/main/data/outputs/"
leer <- function(nombre) readRDS(url(paste0(base, nombre, ".rds")))

indicadores <- leer("sectores_priorizados")
cuentas <- leer("cuentas_sector_2018_2024")
```

En otros lenguajes, los `.xlsx` se leen con cualquier lector de Excel, y la única hoja se llama `datos`. Los nombres de columna están en español, en minúsculas y con guiones bajos; algunas bases anchas, como `flujos_intersectoriales_mip2018` o `capacidades_cadena_instrumento`, usan nombres de sector o de función como encabezados.

## Tecnologías usadas

- **R** (versión 4.6) para todo el cálculo. Paquetes principales: `tidyverse` (lectura y transformación con `dplyr`, `tidyr`, `stringr`, `readr`, gráficos con `ggplot2`), `readxl` para leer las fuentes oficiales, `openxlsx` para escribir los `.xlsx`, `flextable` y `officer` para los cuadros de Word y PowerPoint, y `knitr`. La matriz de Leontief y el modelo de precios se calculan con álgebra matricial de R base (`solve()`), sin paquetes adicionales.
- **Quarto** (versión 1.10) para el sitio, las memorias y los documentos; las rutas de los cálculos son relativas a la raíz del proyecto (`execute-dir: project`).
- **reveal.js** para las presentaciones web, que también se exportan a PowerPoint.
- Funciones compartidas en `materiales/calculos/scripts/funciones_comunes.R`: `leer_salida()`, `guardar_salida()`, la lista `sectores_politica`, los colores `colores_sector`, `formato_es()` (números con coma decimal y punto de miles) y `tema_grafico()`.

Para reproducir una base, se renderiza la memoria que la produce desde la raíz del proyecto, por ejemplo `quarto render materiales/calculos/c02-cuentas-sectoriales/index.qmd`. Las memorias dependen de las anteriores (c08 integra los resultados de c01 a c07 y de c09), así que el orden numérico es el seguro.

## Recomendaciones para un tablero

- Usar `sectores_priorizados` como tabla principal y las series de tiempo para las gráficas de evolución.
- Mostrar la unidad y el año de cada indicador, que no son los mismos en todas las filas.
- Mostrar la bandera de calidad, por ejemplo con opacidad o con un ícono.
- Formatear los números en español: coma decimal y punto de miles ("27.159,3").
- Al combinar bases, aclarar si se usan 80 actividades (cuentas nacionales) o 76 (matriz insumo-producto).
- Las bases se actualizan cuando se corrige una memoria; para un tablero en línea conviene leerlas desde las direcciones de arriba en lugar de copiarlas.

## Cómo citar

Vargas, R. (2026). *Economía circular en Panamá: instrumentos económicos para aumentar los flujos de recursos hacia la economía circular*. Comisión Económica para América Latina y el Caribe (CEPAL). <https://renatovargas.github.io/pan-ecirc/>

Para cifras puntuales, citar también la fuente original que indica la memoria correspondiente (por ejemplo, el Instituto Nacional de Estadística y Censo para las cuentas nacionales o EDGAR para las emisiones).
