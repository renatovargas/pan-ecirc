# Notas del proyecto

La estructura completa y la receta de este sitio están en `estructura.md` (si falta, copiarlo desde el repositorio de origen).

## Reglas

- **Lenguaje:** todo el cálculo es en R. Nunca crear herramientas auxiliares en Python.
- **Rutas en código de R:** `execute-dir: project`, así que los paths son relativos a la raíz del proyecto sin importar dónde esté el `.qmd`. Nunca usar `here::here()`.
- **Enlaces e imágenes del texto:** se resuelven relativos al `.qmd`.
- **Tablas:** con `flextable`, nunca con `gt()`; la salida a Word es prioritaria.
- **Datos:** `data/` (entradas y `data/examples/`) y `data/outputs/` (resultados exportados).
- **Memorias de cálculo:** `materiales/calculos/<cNN-nombre>/index.qmd`, con pasos cortos y legibles. Funciones auxiliares en `materiales/calculos/scripts/*.R`. Cada memoria exporta su base (rds y xlsx) a `data/outputs/` con `guardar_salida()`; esas bases son la fuente de verdad de los documentos.
- **Documentos:** `materiales/documentos/<nombre>/index.qmd` con `echo: false`; leen sus cifras de `data/outputs/` con `leer_salida()` y usan `flextable` (`tabla_ft_es()`).
- **Citas:** `bibliography: refs.bib` en la carpeta de cada documento, memoria o presentación, y `csl` en `assets/`. Citar con `[@clave]`. Los `refs.bib` se arman desde `materiales/calculos/scripts/refs-maestro.bib` con `armar_refs()` (`scripts/armar_refs.R`); las claves nuevas se agregan primero al maestro.
- **Fuentes de contexto:** el contenido de `refs/esfuerzos-iniciales/` puede usarse, pero nunca se cita ni se mencionan pagos u otra información confidencial de contrato.
- **Renderizado:** `docs/` es salida generada. No renderizar el proyecto sin que se pida.
- **Tema de presentaciones:** `slides/pstyles.scss` (colores nombrados `$theme-*`, footer de tres columnas).

- **Tamaño de archivos (GitHub):** nunca agregar archivos grandes al repositorio. `data/` solo contiene archivos de datos compactos (`.rds`, `.csv`, `.xlsx`, `.xls`, `.ods`, `.parquet`, `.duckdb`) de menos de 50 MB cada uno. Nunca versionar PDF oficiales, zip ni descargas masivas.
- **Descargas:** todo lo que un subagente baje de internet (PDF, leyes, informes, bases pesadas) va a `refs/` (ya en `.gitignore`; los PDF que estaban en `data/` se movieron a `refs/descargas/` con la misma ruta relativa). Lo que deba quedar disponible de forma estable se resume en `.md` o `.txt` en `research/` (notas con fuente, página y grado de verificación), nunca copiando el PDF. Si una memoria necesita un dato de un PDF, se extrae a un `.csv` pequeño en `data/`.

## Estilo de prosa

- Nunca usar rayas largas (em dashes) ni oraciones que las necesiten.
- Preferir oraciones declarativas; usar punto y coma, comas o dos puntos para subordinadas.
- Nunca usar la construcción "No es X, es Y" ni sus derivados.

## Contexto de la consultoría

CEPAL (proyecto PEC, programa CEPAL-BMZ/GIZ) contrató una consultoría para Panamá: instrumentos económicos para aumentar los flujos de recursos hacia la economía circular, incluida la responsabilidad extendida del productor (REP). Marco legal: Ley 502 de 2025. Términos de Referencia en `refs/Admin/` (solo para uso interno; no se citan ni se mencionan en los documentos públicos).

Tres actividades, un producto por actividad:

1. **Actividad 1 (Producto 1, entregado 22-23 oct 2026):** plan de trabajo, metodología, análisis de sectores priorizados con eslabonamientos e instrumentos propuestos. Hecho: `a1a-metodologia`, `a1b-plan-de-trabajo`, `a1c-sectores-economicos-priorizados`.
2. **Actividad 2 (Producto 2):** factibilidad política y técnica de los instrumentos, con efectos por sector (cuantitativo o cualitativo según datos); capacidades institucionales de gobierno y sistema financiero; análisis del sistema financiero nacional. **Pendiente.**
3. **Actividad 3 (Producto 3):** Hoja de Ruta Nacional para el Financiamiento de la Economía Circular: diseño de instrumentos, actores y roles, fuentes de financiamiento, reformas, indicadores, articulación con la Ley 502 y una mesa técnica de validación. **Pendiente.**

Calendario: el Producto 1 se entregó el 22-23 oct. Los Productos 2 y 3 se trabajan en noviembre y quedan en borrador a más tardar el 4 de dic; diciembre es para revisiones, con entrega final el 18 de dic (plazo duro, sin prórroga; las instituciones paran hacia el 20 de dic). Posible viaje a Panamá del 23 al 27 de nov, junto con la mesa técnica. Detalle en `a1b-plan-de-trabajo`.

Los documentos de Word son el entregable; los tres documentos de la Actividad 1 se comparten en Word y las memorias de cálculo solo en el sitio (su bloque `docx` está comentado). Los documentos son públicos y deben sostenerse solos: nunca mencionar Términos de Referencia, actividades, productos, pagos ni pormenores administrativos en su texto (excepción: `a1a` y `a1b`, que describen la consultoría y todavía mencionan actividades y TdR; reescribirlos si se pide).

## Bases de datos fuente de verdad (`data/outputs/`)

Cada una la produce una memoria `cNN`; no editar a mano, volver a ejecutar la memoria. Las principales:

- `mapeo_sectores_scn` (c01): 80 actividades del SCN a 6 sectores de la Hoja de Ruta (+ "Resto de la economía"), sector principal único, secundarios, vínculo, origen, evidencia, código MIP.
- `cuentas_sector_2018_2024`, `cuentas_actividad_2018_2024`, `crecimiento_vab_sector` (c02).
- `empleo_sector_2018_2024`, `empleo_sector_perfil_2024`, `perfil_empleo_seccion_ciiu_2025` (c03): género e informalidad imputados por sección CIIU.
- `eslabonamientos_actividad_mip2018`, `eslabonamientos_sector_mip2018`, `flujos_intersectoriales_mip2018`, `vinculos_actividades_nucleo_mip2018` (c04): matrices A y L, enlaces y multiplicadores (MIP 2018, 76 actividades). La matriz de Leontief no se exporta; para el modelo de precios hay que recalcularla (ver c04, código de lectura de `Z`, `x`).
- `emisiones_sector_1970_2025`, `emisiones_panama_categoria_ipcc`, `intensidad_emisiones_sector`, `contraste_edgar_inventario_nacional_2021` (c05).
- `energia_*`, `agua_uso_sector_2022`, `materiales_dmc_2018_2022`, `residuos_*`, `exportaciones_desechos_2021_2025`, `recuperacion_contraste_2021` (c06).
- `ied_grupo_sector_2022_2024`, `empresas_*`, `estructura_empresarial_sector_2022` (c07).
- `sectores_priorizados` (c08): indicadores por sector con bandera de calidad (Alta, Media, Baja); `matriz_relevancia_sectorial*`.

Funciones comunes: `materiales/calculos/scripts/funciones_comunes.R` (`sectores_politica`, `tabla_ft_es()`, `leer_salida()`, `guardar_salida()`, `formato_es()`, `tema_grafico()`), `lectores_inec.R`, `armar_refs.R`.

## Fuentes y verificación

- Datos descargados en `data/<fuente>/`; inventario con URL, año y limitaciones en `data/fuentes-descargadas.md` y `.bib`. Pendientes de descarga manual al final de ese archivo (comercio anual por capítulo SA, PDF del balance energético, concesiones de agua, estudios de ACODECO, tablas CRT, microdatos de la EML).
- Documentos de consulta en `refs/` (no se versiona): `refs/web/` tiene la Hoja de Ruta MiAMBIENTE-PNUD 2024, el PNGIR, Leyes 33 y 187, y las notas `notas-hoja-ruta-sectores.md` y `notas-instrumentos-internacional.md` (esta última es la fuente de las fichas de instrumentos, con página, grado de verificación y lista de lo NO VERIFICADO).
- Bibliografía maestra: `materiales/calculos/scripts/refs-maestro.bib` (136 claves). Lo marcado NO VERIFICADO o PENDIENTE en las notas no debe usarse como base de una afirmación. Pendiente: la Ley 1 de 2018 (bolsas) no tiene URL ni Gaceta verificadas.
- Cifras internacionales de la presentación GIZ sin contrastar (recaudación alemana, pago por generación, ecotasa de Marruecos, mercado de créditos de plástico) no se usan.

## Cómo continuar: fichas de factibilidad (Actividad 2)

Insumo: los 14 instrumentos propuestos en la sección "Instrumentos de política pública que pueden promover la circularidad en Panamá" de `a1c` (tablas `tbl-instrumentos` y `tbl-paquetes`) y la ficha normalizada de `a1a` (`tbl-ficha`).

Pasos sugeridos:

1. Crear una memoria `c09-fichas-instrumentos` con una base `fichas_instrumentos` (una fila por instrumento: familia, problema, sector, flujo, mecanismo, requisitos normativos, institución responsable, fuente de recursos, experiencia internacional con cita, datos e indicadores, riesgos).
2. Evaluar cada instrumento con los siete criterios de `a1a` (`tbl-factibilidad`: impacto, técnica, institucional, política y regulatoria, financiera, tiempo, equidad y competitividad) en escala ordinal 1 a 5, con justificación escrita y bandera de confianza de la evidencia. Exportar `factibilidad_instrumentos`. Los pesos se acuerdan con CEPAL y MiAMBIENTE; usar pesos iguales como punto de partida y mostrar sensibilidad.
3. Efectos por sector: para instrumentos que operan como cargo sobre un producto (REP, depósito, impuesto, tasa), usar el modelo de precios de insumo-producto con la MIP 2018 (traslado completo): $\Delta p' = \Delta v' L$ o equivalente con el cargo como costo de la actividad afectada; reportar incidencia por sector y, si hay datos, por hogares. Documentar el supuesto de traslado completo y que no incluye cambios de comportamiento. Para instrumentos financieros, análisis cualitativo estructurado con criterios explícitos.
4. Capacidades institucionales: matriz funciones (regular, registrar, recaudar, controlar, monitorear, financiar) por institución (MiAMBIENTE, MEF, MICI, AAUD, aduana, municipios, superintendencias, AMPYME, SNE, MIDA, ARAP). Se basa en mandatos legales (Leyes 502, 33, 187) y en entrevistas; marcar cada celda como "documentada" o "por confirmar en entrevista".
5. Sistema financiero: mapa de actores (banca pública y privada, fondos, aseguradoras, mercado de valores), productos vigentes, Taxonomía de Finanzas Sostenibles 2024 y Marco de Financiamiento Sostenible (MEF-RES-2024-1529). Fuentes por descargar: informes de las superintendencias, cartera verde, resultados del piloto de la taxonomía.
6. Documento `materiales/documentos/a2-factibilidad-capacidades/index.qmd` con la misma estructura de los de la Actividad 1 (resumen ejecutivo, objetivos, antecedentes, listas de cuadros y figuras, glosario, referencias), sin mención a términos de referencia ni a actividades.
7. Actualizar `_quarto.yml` (sidebar) y `materiales/index.qmd` al agregar documentos o memorias.

Después, para la Actividad 3: documento `a3-hoja-de-ruta` con diseño de instrumentos (montos, metas, responsables, plazos), mapa de actores y roles, fuentes de financiamiento nacionales e internacionales, reformas normativas, indicadores de seguimiento alineados con la plataforma de indicadores de la Ley 502 (art. 11), y la sistematización de la mesa técnica.

## Pendientes conocidos

- Solicitudes formales de información (MEF Crédito Público, superintendencias, MICI, AAUD, INEC, autoridad de competencia): ver `tbl-datos` en `a1b`.
- Brechas de datos registradas en `tbl-brechas` de `a1c`: formación bruta de capital por actividad, concentración y barreras, recicladores de base, series de residuos, concesiones de agua.
- Conciliar el empleo de las secciones D y E (puestos de las cuentas nacionales son 0,3 y 0,5 veces los ocupados de la EML).
- Validar con MiAMBIENTE y MICI la tabla de equivalencias sector a actividad.
- Acordar con CEPAL y MiAMBIENTE los pesos de la matriz de relevancia.
- `data/emisiones/` pesa unos 438 MB; decidir qué se versiona (`refs/` ya está en `.gitignore`).
- Producto de Word (docx) y presentación PPT de cada producto, requeridos como entregables: la presentación del Producto 1 no se ha hecho.
- Verificar que `refs/esfuerzos-iniciales/` no se cite en ningún documento.
