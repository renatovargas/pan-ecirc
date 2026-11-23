# Sistema financiero nacional y su capacidad para canalizar recursos hacia la economía circular

Nota de investigación para el análisis del sistema financiero (factibilidad de instrumentos financieros y Hoja de Ruta). Fecha de corte: 23 de noviembre de 2026.

## 0. Convenciones

- **Grados de verificación.** "Verificado en texto primario" (VTP): leído en el documento oficial o del emisor, con página. "Fuente secundaria" (FS): prensa, resúmenes de buscador o documento oficial alojado por un tercero sin poder contrastar el original. "NO VERIFICADO": no se encontró fuente; no debe usarse como base de una afirmación.
- **Páginas.** "p." es la página impresa; "PDF p." es la posición en el archivo. Cuando no hay página impresa se usa solo PDF p.
- **Archivos.** Todas las descargas están en `refs/descargas/finanzas/` (no se versiona). Las tablas limpias para R están en `data/finanzas/` (UTF-8, columna `fuente`). Claves BibTeX nuevas en `research/bib-finanzas.bib`; se reutilizan del maestro `sbp2024TaxonomiaPanama`, `mef2024MarcoFinanciamientoSostenible`, `panama2025Ley502` y `unepfi2023CircularFinanceLAC`.
- **Perímetros bancarios.** El Centro Bancario Internacional (CBI) incluye bancos de licencia general e internacional y su cartera externa. El Sistema Bancario Nacional (SBN) son los bancos de licencia general; la "cartera local" es la que se otorga a residentes. No se mezclan ambas bases.
- **Unidades.** Millones de USD (el balboa circula a la par con el dólar). Los decimales se dejan como en la fuente.

## 1. Tamaño y estructura del sistema bancario

| Indicador | Valor | Fecha | Fuente | Grado |
|---|---|---|---|---|
| Activo total neto del CBI | USD 171.816,2 millones (+8,20 % interanual) | sep. 2026 | [@sbp2026IAB092026, p. 1, resumen II] | VTP |
| Activo total neto del CBI | USD 163.014,7 millones (+4,23 %) | dic. 2025 | IAB-1225, p. 1 (`refs/descargas/finanzas/IAB-1225.pdf`) | VTP |
| Cartera crediticia neta del CBI | USD 106.032,5 millones (+6,20 %) | sep. 2026 | [@sbp2026IAB092026, p. 1] | VTP |
| Depósitos del CBI | USD 121.617,2 millones (+6,82 %); externos +9,38 %, internos +5,08 % | sep. 2026 | [@sbp2026IAB092026, p. 2, resumen V] | VTP |
| Patrimonio del CBI | USD 20.684,3 millones; patrimonio/activo 12,0 % | sep. 2026 | [@sbp2026IAB092026, p. 5] | VTP |
| Índice de adecuación de capital | 15,72 % (mínimo 8 %) | jun. 2026 | [@sbp2026IAB092026, p. 1 y 4] | VTP |
| Liquidez legal del SBN | 54,36 % (mínimo 30 %) | sep. 2026 | [@sbp2026IAB092026, p. 1 y 4] | VTP |
| Rentabilidad del CBI | ROE 15,10 %; ROA 1,79 %; utilidad ene.-sep. USD 2.225,2 millones | sep. 2026 | [@sbp2026IAB092026, p. 1-2] | VTP |
| Cartera local bruta del SBN | USD 67.618,7 millones (+4,66 %); privada USD 63.539,7 millones (+1,04 %) | sep. 2026 | [@sbp2026IAB092026, p. 14, cuadro 3] | VTP |
| Morosa más vencida, cartera local | 5,2 % (5,5 % sin sector público) | sep. 2026 | [@sbp2026IAB092026, p. 2 y 17] | VTP |
| Bancos corresponsales | 435 (431 en ago. 2025) | ago. 2026 | [@sbp2026IAB092026, p. 2] | VTP |
| Número de bancos | 64 en el CBI: 40 del SBN (2 oficiales, 26 extranjeros privados, 12 panameños privados), 14 de licencia internacional y 10 de licencia de representación | 2025 | [@sbp2026Memoria2025, p. 26-27] | VTP |
| Fondeo externo | cerca de 39,9 % de los depósitos del CBI | 2025 | [@sbp2026Memoria2025, p. 25] | VTP |

Los dos bancos oficiales son el Banco Nacional de Panamá (BNP) y la Caja de Ahorros [@sbp2026Memoria2025, p. 26] (VTP).

### 1.1 Cartera local por sector económico

Tabla completa en `data/finanzas/sbp_cartera_local_sector_2025_2026.csv` [@sbp2026IAB092026, p. 14, cuadro 3] (VTP).

| Sector (cuadro 3 SBP) | Sep. 2025 | Sep. 2026 | Var. % | Peso 2026 |
|---|---:|---:|---:|---:|
| Hipotecario (residencial y comercial) | 21.377,8 | 21.209,0 | -0,79 | 31,4 % |
| Consumo personal | 14.770,1 | 15.505,2 | 4,98 | 22,9 % |
| Comercio | 14.132,3 | 14.304,5 | 1,22 | 21,2 % |
| Construcción | 4.464,9 | 4.285,2 | -4,03 | 6,3 % |
| Sector público | 1.722,3 | 4.079,0 | 136,84 | 6,0 % |
| Industria | 4.195,6 | 3.520,7 | -16,09 | 5,2 % |
| Actividades financieras y seguros | 1.942,8 | 2.565,4 | 32,05 | 3,8 % |
| Ganadería | 1.289,2 | 1.285,9 | -0,25 | 1,9 % |
| Agricultura | 590,9 | 616,7 | 4,36 | 0,9 % |
| Minas y canteras | 40,6 | 135,7 | 234,09 | 0,2 % |
| Pesca | 83,3 | 111,5 | 33,91 | 0,2 % |
| **Total** | **64.609,7** | **67.618,7** | **4,66** | 100 % |

Los pesos son cálculo propio sobre el total. Observaciones:

- El crédito a hogares (consumo más hipoteca residencial) es 52,5 % de la cartera local; el crédito "corporativo" analítico (privado sin hipoteca ni consumo) es USD 25.441 millones, 40,0 % de la cartera privada [@sbp2026IAB092026, p. 15-16] (VTP).
- Industria y construcción, los dos sectores más ligados a flujos de materiales y residuos, cayeron 16,09 % y 4,03 % en saldo [@sbp2026IAB092026, p. 16] (VTP).
- La SBP no publica en este informe una línea para turismo, hoteles o restaurantes; en el cuadro 6 aparece "Servicios" (USD 7.029 millones) con una agrupación distinta que no es comparable con el cuadro 3 [@sbp2026IAB092026, p. 18, cuadro 6 y nota] (VTP). Cartera de hoteles y restaurantes: NO VERIFICADO (habría que bajar las tablas estadísticas detalladas de la SBP).
- Créditos nuevos ene.-sep. 2026: USD 21.413 millones (+8,2 %); comercio USD 9.283 millones, el mayor destino; industria USD 2.088 millones; construcción USD 1.291 millones [@sbp2026IAB092026, p. 17, cuadro 5] (VTP). Tabla en `data/finanzas/sbp_creditos_nuevos_sector_2025_2026.csv`.

## 2. Cartera verde y piloto de la taxonomía

- **Piloto bancario de la Taxonomía de Finanzas Sostenibles de Panamá (TFS-PAN).** Siete bancos; financiado por el programa Readiness del Fondo Verde del Clima y Euroclima; ejecutado por UNEP FI y coordinado por la SBP, MiAMBIENTE y el Grupo de Trabajo de Finanzas Sostenibles (GTFS) [@sbp2025GuiaTFSBancos, PDF p. 13] (VTP). La muestra de cartera marcada como "verde" por las entidades fue de "USD 1.3 billones", equivalente a 13 % de la cartera total de esas entidades; 92 % resultó elegible; la cartera elegible se concentra en energía, transporte y construcción; 99 % contribuye a mitigación y menos de 1 % a adaptación; no fue posible demostrar alineación plena por falta de información técnica para verificar contribución sustancial, no causar daño significativo y salvaguardas mínimas [@sbp2025GuiaTFSBancos, PDF p. 14] (VTP). Nota: "billones" se interpreta como miles de millones (USD 1.300 millones); la escala no se aclara en el texto.
- La Memoria 2025 de la SBP confirma el piloto (coordinado por UNEP FI, con apoyo técnico de Ambire Global) y la conclusión de la iniciativa FISDE con CCSBSO, IFC, FMO y Norfund [@sbp2026Memoria2025, p. 45] (VTP).
- **Cifra agregada de cartera verde del sistema:** NO VERIFICADO. Ni la SBP ni la Asociación Bancaria de Panamá (ABP) publican un total; el dato del piloto es una muestra de siete bancos.
- **Oferta de crédito verde (2023).** Solo unos pocos bancos ofrecían productos verdes, centrados en vehículos eléctricos y energía solar; faltaban instrumentos adecuados para pymes e incentivos para la demanda [@bm2023FSAPClimaPanama, PDF p. 41-42, párr. 48] (VTP).
- **Protocolo de Finanzas Sostenibles de la banca.** 16 signatarios en 2023 [@bm2023FSAPClimaPanama, PDF p. 45, párr. 57] (VTP del dato tal como lo reporta el Banco Mundial). Lista actual de signatarios e informes de la ABP: NO VERIFICADO. Global Bank declara adhesión desde 2018 y Mercantil Banco desde 2023 (FS, sitios de los bancos según buscador).

## 3. Taxonomía, regulación de riesgo y obligaciones de reporte

- **TFS-PAN (primera edición, marzo de 2024).** Siete objetivos ambientales, entre ellos la transición hacia una economía circular; once sectores; contribución sustancial definida solo para mitigación y adaptación (salvo uso del suelo, que cubre los siete objetivos); para economía circular solo hay requisitos de no causar daño significativo [@sbp2024TaxonomiaPanama, p. 43-44] (VTP; ver también `notas-instrumentos-internacional.md`, sección D.1). Gobernanza de tres niveles: Comité de Supervisión (SBP, SMV, SSRP, MiAMBIENTE y MEF), coordinación técnica de UNEP FI y 12 grupos técnicos, uno de ellos de gestión de residuos y captura de emisiones [@sbp2024TaxonomiaPanama, p. 29] (VTP). Entre los usos previstos están estándares de bonos, requisitos de divulgación, etiquetado de presupuesto verde, compras públicas verdes y "examinar la posibilidad de incluir factores de sostenibilidad en la regulación prudencial" [@sbp2024TaxonomiaPanama, p. 25-26, tabla 1] (VTP).
- **Tratamiento de la economía circular en la práctica bancaria.** La guía de la SBP recomienda etiquetar las operaciones que apuntan a economía circular "bajo un criterio contingente" hasta que futuras ediciones de la TFS-PAN den criterios técnicos [@sbp2025GuiaTFSBancos, PDF p. 27] (VTP). Es un hallazgo central: hoy un crédito circular no puede declararse alineado con la taxonomía por su contribución circular.
- **Carácter voluntario.** La guía de la SMV para emisores indica que el uso de la taxonomía no es obligatorio, pero si un emisor la invoca su aplicación como marco técnico es obligatoria [@smv2025GuiaBonosTaxonomia, PDF p. 4] (VTP). La guía bancaria de la SBP se presenta como herramienta técnica de referencia, sin plazos ni obligaciones (FS: página web de la SBP leída con herramienta automática; el PDF descargado no contiene un mandato).
- **Riesgo social, ambiental y climático en la regulación prudencial.** El Acuerdo 9-2017 incorporó el riesgo social y ambiental al Acuerdo 8-2010 de gestión integral de riesgos; el Acuerdo 11-2022 (1 de noviembre de 2022) añadió el "riesgo relacionado con el clima" (físico, de transición y de responsabilidad) [@sbp2022Acuerdo11, p. 1-2] (VTP). Un acuerdo "4-2024" sobre riesgo climático: NO VERIFICADO (el Acuerdo 2-2024 trata de notificaciones sobre el gestor de riesgos, según buscador, FS). Los ocho acuerdos de 2025 no incluyen normas de riesgo climático ni de reporte de cartera verde [@sbp2026Memoria2025, p. 29] (VTP).
- **Diagnóstico del Banco Mundial (FSAP, nov. 2023).** La identificación del riesgo climático está "en sus primeras etapas"; recomienda coordinación entre superintendencias, un ejercicio de exposición, guías supervisoras más detalladas, una hoja de ruta de finanzas verdes y finalizar la taxonomía [@bm2023FSAPClimaPanama, PDF p. 4-7, tabla 1] (VTP). Barreras señaladas: falta de incentivos, de flujos de ingresos confiables, de definiciones y de divulgación; ausencia de un fondo de inversión verde [@bm2023FSAPClimaPanama, PDF p. 5 y 40] (VTP).

## 4. Marco de Financiamiento Sostenible del MEF y deuda soberana

- **Marco.** Resolución MEF-RES-2024-1529 de 20 de junio de 2024 (G.O. 30061-C); cinco categorías verdes (entre ellas "prevención y control de la contaminación, y adopción de procesos de economía circular" y agua potable y aguas residuales) y cuatro sociales; solo financia inversión pública presupuestada, con 50 % máximo de refinanciamiento [@mef2024MarcoFinanciamientoSostenible, p. 22 y 24] (VTP en la nota previa `notas-instrumentos-internacional.md`, D.2; el PDF local es escaneado y no se pudo releer con `pdftools`).
- **Opinión de segunda parte (Sustainable Fitch, 27 de junio de 2024).** Uso de fondos y reporte "Excelente"; gestión de fondos "Bueno", con subcuenta del MEF para los recursos etiquetados; reporte anual de asignación e impacto verificado, por bono y por proyecto; el marco se elaboró antes de la TFS-PAN y podría actualizarse para alinearse con ella [@sustainablefitch2024SPOPanama, PDF p. 1-2] (VTP). La categoría de economía circular cubre reacondicionamiento de residuos, reciclaje, reutilización y reparación, con ejemplos de sargazo como fertilizante y desechos pesqueros y acuícolas como alimento para peces (reutilización mínima de 50 %) [@sustainablefitch2024SPOPanama, PDF p. 6] (VTP).
- **Emisiones soberanas temáticas bajo el marco:** NO VERIFICADO. No se encontró comunicado del MEF ni informe de asignación. La emisión de 2025 de USD 2.970 millones fue convencional según prensa (FS). La Estrategia de Deuda de Mediano Plazo 2025-2029 no menciona bonos temáticos (búsqueda de texto de "sostenib", "verde" y "temátic") [@mef2025EstrategiaDeuda] (VTP de la ausencia). Deuda pública total: USD 61.526,8 millones a junio de 2026 (FS, informe preliminar de balance fiscal del MEF citado por prensa); la estrategia reporta deuda de 62,30 % del PIB y 98,64 % en USD en su línea de base [@mef2025EstrategiaDeuda, PDF p. 4] (VTP).
- El Banco Mundial reportaba en 2023 que el MEF planeaba emitir su primer bono sostenible en 2023 [@bm2023FSAPClimaPanama, PDF p. 6] (VTP); no hay evidencia de que se haya emitido.

## 5. Mercado de valores: bonos temáticos

- **Series temáticas vigentes en Latinex (23 de noviembre de 2026).** 40 series de 11 emisores, USD 435,4 millones en montos de serie: verdes USD 212,4 millones, sostenibles USD 116,0 millones, vinculados a la sostenibilidad USD 70,0 millones, azules USD 25,0 millones y sociales USD 12,0 millones [@latinex2026EmisionesSostenibles] (VTP; cálculo propio sobre la tabla). Es un corte de series vigentes, no el acumulado histórico; los montos son "monto de la serie" según Latinex. Tabla: `data/finanzas/latinex_emisiones_svs_vigentes_2026.csv`.

| Emisor | Etiqueta | Series | Monto (USD M) | Categorías o uso de fondos | Revisor | Destino |
|---|---|---:|---:|---|---|---|
| Parque Eólico Toabré | Verde | 1 | 125,0 | Energía renovable (66 MW) | PCS y certificación CBI | Panamá |
| Banistmo | Sostenible | 2 | 100,0 | Pymes de mujeres y cartera verde (FS: BID Invest) | n. d. | Panamá |
| Vareen Assets (grupo Bern) | Vinculado a la sostenibilidad | 3 | 70,0 | KPI de desempeño (programa de hasta USD 150 M) | n. d. | No verificado |
| CIFI | Verde | 10 | 45,9 | Energía renovable, edificios verdes, eficiencia energética | Sustainalytics | Regional |
| Fideicomiso de Bonos Azules BDA (Banco del Austro) | Azul | 1 | 25,0 | Agua, adaptación, renovables, contaminación, transporte | PCS | Ecuador |
| BG Metal Trade | Verde | 16 | 16,5 | Reciclaje de residuos electrónicos y metales; bodega sostenible y capital de trabajo | PCS | Panamá |
| Banco Promerica de Costa Rica | Sostenible | 2 | 16,0 | Renovables, edificios, eficiencia, contaminación, transporte | Vigeo Eiris | Costa Rica |
| Microserfin | Social | 2 | 12,0 | Empleo, inclusión, género | n. d. | Panamá |
| Green Silvester (grupo Bern) | Verde | 1 | 10,0 | No verificado (prospecto escaneado) | n. d. | No verificado |
| Uni Leasing | Verde | 1 | 10,0 | Renovables, transporte limpio, eficiencia | PCS | No verificado |
| BICSA Factoring | Verde | 1 | 5,0 | Renovables, eficiencia, transporte limpio | PCS (verificación post emisión 2026) | No verificado |

Fuentes por fila: detalle de sostenibilidad de Latinex por nemotécnico [@latinex2026EmisionesSostenibles] (VTP); BG Metal Trade, Programa Rotativo de Bonos Verdes Corporativos de hasta USD 30 millones, Res. SMV-136-26 de 10 de abril de 2026, uso de fondos y SPO de PCS [@bgmetal2026SuplementoSerieI, p. 1-2] (VTP); BICSA, USD 5 millones colocados de una serie de hasta USD 10 millones [@pcs2026BICSAPostEmision, PDF p. 3] (VTP); Toabré y 66 MW [@panamaamerica2023BanconalBonosVerdes] (FS); Banistmo, serie U y V del 24 de septiembre de 2025 por USD 100 millones (VTP en Latinex), con BID Invest como inversionista ancla (FS); Fideicomiso BDA garantizado por Banco del Austro y registrado por Res. SMV-150-24 (FS); el Reporte de Sostenibilidad 2024 de Latinex lo atribuye en una página al "Banco de Desarrollo Agropecuario" y en otra a "una empresa ecuatoriana" [@latinex2025ReporteSostenibilidad2024, PDF p. 4 y p. 18], inconsistencia que se resuelve con los hechos relevantes de Banco del Austro (FS). BG Metal Trade es una empresa de reciclaje de equipos electrónicos desde 2012 (FS, La Prensa según buscador).

- **Hallazgo clave.** BG Metal Trade es el único emisor temático vigente cuyo negocio es directamente circular (reciclaje y recuperación de metales); usa series pequeñas (USD 0,5 a 3,5 millones) de bonos y valores comerciales negociables (VCN) verdes. El resto del mercado se concentra en energía renovable, edificios, transporte e inclusión financiera.
- **Cifras agregadas de Latinex.** 2024: 25 emisiones corporativas listadas por USD 1.777 millones, de las cuales USD 40 millones de bonos sociales (Microserfin), USD 50 millones de bonos azules y USD 12 millones de bonos verdes (Green Silvester); acumulado de "USD +900 MM de emisiones de bonos temáticos" [@latinex2025ReporteSostenibilidad2024, PDF p. 6 y p. 18] (VTP). Latinex actualizó en 2024 su guía SVS+ con BID Invest y Climate Bonds Initiative, alineada con la TFS-PAN, con lanzamiento previsto para el primer trimestre de 2025 [@latinex2025ReporteSostenibilidad2024, PDF p. 16] (VTP). El segmento de mercado sostenible de Latinex existe desde 2018 [@bm2023FSAPClimaPanama, PDF p. 40] (VTP).
- **Antecedente 2023.** El Banco Mundial contaba cinco programas corporativos verdes o sostenibles: CIFI (USD 200 M), Panasolar (USD 15,5 M), Banco Promérica (USD 50 M), Cochez (USD 90 M) y Latin American Kraft (USD 60 M) [@bm2023FSAPClimaPanama, PDF p. 40-41, tabla 3] (VTP). Tabla: `data/finanzas/bonos_verdes_panama_hasta_2023_bm.csv`. El comunicado del GTFS sobre los primeros bonos verdes (CIFI y MMG Bank) y el primer bono social de género (Banistmo con BID Invest) menciona como usos posibles el reciclaje y desvío de residuos [@gtfs2019ComunicadoBonos, PDF p. 1] (VTP; fecha del comunicado no impresa, clave con año provisional).

## 6. Banca pública, fondos de garantía y financiamiento combinado

- **Fondo de Garantías de Panamá.** Préstamo BID 5793/OC-PN por USD 150 millones (Decreto de Gabinete 1 de 10 de enero de 2024); fideicomiso con el BNP como fiduciario; beneficiarios MIPYME de agro, comercio y servicios; la SBP lo reconoce como mitigante de riesgo de crédito para provisiones [@sbp2025Acuerdo8, PDF p. 1-2] (VTP). El perfil BID original era de USD 100 millones, con el BNP como ejecutor [@bid2023PNL1174, PDF p. 2] (VTP). Condiciones anunciadas: crédito máximo B/. 600.000, prima de 2 % anual sobre saldo y cobertura de hasta 50 % (FS, Telemetro, oct. 2025). Decreto de Gabinete 37-24 del fideicomiso (FS, TVN, 3 de septiembre de 2024 [@tvn2024FideicomisosMipyme]).
- **Programa Global de Crédito para la Reactivación Económica Sostenible.** Préstamo BID 5630/OC-PN por USD 160 millones, fideicomiso en el BNP (Decreto de Gabinete 36-24), para inversiones que mejoren la productividad y sostenibilidad de las MIPYME [@tvn2024FideicomisosMipyme] (FS). No tiene criterio explícito de economía circular (NO VERIFICADO el reglamento de crédito).
- **BNP.** Préstamos personales para paneles solares de hasta USD 25.000 a 10 años (FS, prensa de 2023). Estructuró con Prival el programa de bonos verdes de Toabré [@panamaamerica2023BanconalBonosVerdes] (FS). Absorbe la cartera del Banco de Desarrollo Agropecuario (BDA) en proceso de reestructuración (FS, prensa 2025-2026). La Ley 17 de 2015 reorganizó el BDA (VTP, citada en una resolución publicada en la G.O. 30413).
- **Caja de Ahorros:** productos verdes NO VERIFICADO.
- **Banca privada con líneas multilaterales.** BID Invest: préstamo de hasta USD 100 millones a cinco años a Global Bank para su cartera verde (USD 40 millones propios, USD 10 millones de financiamiento combinado y USD 50 millones de otros inversionistas como Banco Santander), noviembre de 2023; sin mención de economía circular [@idbinvest2023GlobalBank] (VTP del comunicado). BID Invest con Banistmo (2025, bono sostenible, FS). Garantía de BID Invest para carteras de préstamos turísticos de hasta USD 300 millones (2022) [@laestrella2022GarantiasTurismo] (FS). BID Invest anunció hasta USD 1.000 millones para proyectos privados vía bancos locales (FS, prensa de julio de 2026).
- **AMPYME.** El programa Capital Semilla fue eliminado y el fondo de garantías creado en la pandemia está bajo investigación; existe un esquema de garantías de segundo piso (Profimipe) (FS, La Estrella 2026). Montos vigentes: NO VERIFICADO.
- **Fondo Verde del Clima.** 11 proyectos con USD 131 millones y USD 7,5 millones de apoyo de preparación en Panamá; ninguno es de residuos o economía circular; FP149 es una facilidad de financiamiento climático para instituciones financieras locales [@gcf2026Panama] (FS por lectura automatizada de la página). El programa Readiness del FVC financió la TFS-PAN, su piloto y las guías de la SBP y la SMV [@sbp2025GuiaTFSBancos, PDF p. 13] (VTP).
- **Asociaciones público-privadas (Ley 93 de 2019, reglamentada por el Decreto Ejecutivo 840 de 2020).** La AAUD y el MEF pidieron al BID en 2024 los estudios de prefactibilidad de un proyecto de gestión integral de residuos sólidos para Panamá y San Miguelito bajo modalidad APP; el Consejo de Gabinete decide la conveniencia de la modalidad; la nueva administración prefiere proyectos autosostenibles sobre los que requieren cofinanciamiento público [@bid2024TdRResiduosAPP, PDF p. 2-3] (VTP del borrador). Reforma de la Ley 93 (proyecto 34-26) aprobada en Gabinete en septiembre de 2026 (FS). Estado del proyecto de residuos: NO VERIFICADO.

## 7. Inversionistas institucionales

- **Fondo de Ahorro de Panamá (FAP, Ley 38 de 2012).** Patrimonio de B/. 3.084,8 millones al cierre de 2025, tras capitalizar B/. 1.395,9 millones de aportes 2020-2023 mediante bonos de la República; objetivos de ahorro de largo plazo y estabilización; portafolio mayormente de renta fija con grado de inversión [@fap2026InformeAnual2025, PDF p. 2] (VTP en copia alojada por tercero). No tiene mandato de inversión doméstica ni temática (VTP de los objetivos legales citados).
- **SIACAP (pensiones de servidores públicos).** Patrimonio B/. 999,9 millones a septiembre de 2025; inversiones de B/. 991,5 millones en bonos y notas del Tesoro (458,2), instrumentos bancarios (382,5), bonos corporativos (148,6) y capital (2,2) [@siacap2025ResumenSep, PDF p. 1-2] (VTP). Patrimonio de USD 1.075,9 millones a septiembre de 2026 (FS). Límites del régimen de inversión: NO VERIFICADO.
- **Aseguradoras.** 22 compañías y primas suscritas de USD 2.105,85 millones en 2025 (FS, prensa citando a la SSRP). En 2022, las reservas técnicas estaban 38 % en depósitos bancarios nacionales, 10 % en bonos de bancos locales y 7 % en valores del Gobierno; las inversiones extranjeras eran 21 % de los activos [@bm2023FSAPClimaPanama, PDF p. 31, párr. 26] (VTP).
- **Caja de Seguro Social** (mayor inversionista institucional del país): reservas y reglas de inversión NO VERIFICADO.

## 8. Condiciones estructurales

- **Dolarización.** Panamá no tiene banco central ni prestamista de última instancia; la liquidez legal (mínimo 30 %) y el fondeo en depósitos cumplen esa función prudencial (VTP de los indicadores en [@sbp2026IAB092026]; el resto es característica institucional conocida, sin fuente leída en esta nota). Consecuencia: no hay instrumentos de política monetaria para dirigir crédito (por ejemplo, encajes diferenciados o redescuento verde).
- **Banca de desarrollo.** No hay un banco nacional de desarrollo de segundo piso; el BNP actúa como fiduciario y ejecutor de los programas BID; el BDA se reestructura y su cartera pasa al BNP (FS).
- **Lista gris.** Panamá salió de la lista gris del GAFI en octubre de 2023 (FS, varias fuentes); la Comisión Europea propuso en marzo de 2024 retirarla de su lista de terceros países de alto riesgo, pero el Parlamento Europeo objetó el acto [@eeas2024ListaUEPanama] (FS por lectura automatizada); la exclusión se concretó en 2025 (FS) y la SBP la cita como factor del aumento del fondeo externo [@sbp2026IAB092026, p. 2] (VTP).
- **Ley 502 de 2025.** Entre sus finalidades está "incentivar el emprendimiento sostenible mediante el acceso al financiamiento y el apoyo técnico" (art. 2.6); el MICI debe establecer estrategias para estimular la inversión pública y privada en I+D+i circular (art. 4); el artículo 12 incorpora la economía circular en los criterios de compras públicas; la ley no crea fondo, garantía ni incentivo financiero específico [@panama2025Ley502, arts. 2, 4 y 12] (VTP por búsqueda de "financ", "fondo", "fideicomiso", "crédito" e "incentiv" en el texto de la G.O. 30413).

## 9. Mapa de actores

| Actor | Tipo | Rol | Productos o instrumentos relevantes | Base legal |
|---|---|---|---|---|
| Superintendencia de Bancos (SBP) | Regulador y supervisor | Regula y supervisa 64 bancos y fiduciarias; coordina la TFS-PAN | Acuerdos 9-2017 y 11-2022 (riesgo socioambiental y climático); guía TFS-PAN para bancos; reconocimiento de garantías (Acuerdo 8-2025) | Decreto Ley 9 de 1998 (texto único, D.E. 52 de 2008); Ley 21 de 2017 (fiduciarias) |
| Superintendencia del Mercado de Valores (SMV) | Regulador | Registra ofertas públicas, incluidas las temáticas; supervisa fondos y casas de valores | Guía de alineación de bonos temáticos con la TFS-PAN (2025) | Decreto Ley 1 de 1999 (texto único) |
| Superintendencia de Seguros y Reaseguros (SSRP) | Regulador | Supervisa 22 aseguradoras; miembro del comité de la TFS-PAN | Sin norma climática identificada | NO VERIFICADO en esta nota (Ley 12 de 2012, por confirmar) |
| Ministerio de Economía y Finanzas (MEF) | Gobierno | Deuda pública, fideicomisos con el BID, APP | Marco de Financiamiento Sostenible (2024); fideicomisos del Fondo de Garantías y del Programa de Reactivación Sostenible | Res. MEF-RES-2024-1529; Decretos de Gabinete 1 de 2024, 36-24 y 37-24 |
| MiAMBIENTE | Gobierno | Comité de la TFS-PAN; reglamenta la Ley 502; plataforma de indicadores | Mercado nacional de carbono (D.E. 100 de 2020 y 142 de 2021, según Banco Mundial) | Ley 502 de 2025, arts. 11 y 13 |
| MICI y AMPYME | Gobierno | Estrategias de inversión en I+D+i circular; programas para emprendedores | Profimipe (garantías de segundo piso); Capital Semilla eliminado | Ley 502 de 2025, arts. 4 y 5 |
| Banco Nacional de Panamá (BNP) | Banca pública | Fiduciario y ejecutor de programas BID; crédito agropecuario tras el BDA | Fondo de Garantías de Panamá; préstamos solares; estructuración de bonos verdes | Ley orgánica del BNP (NO VERIFICADO número) |
| Caja de Ahorros | Banca pública | Banco oficial de ahorro e hipotecas | Productos verdes NO VERIFICADO | NO VERIFICADO |
| Banco de Desarrollo Agropecuario (BDA) | Banca pública de fomento | Crédito agropecuario, en reestructuración | Cartera transferida al BNP (FS) | Ley 17 de 2015 |
| Bancos privados (Banco General, Banistmo, Global Bank, BAC, Davivienda y otros) | Banca privada | 26 extranjeros y 12 panameños de licencia general | Bonos sostenibles (Banistmo), líneas verdes de BID Invest (Global Bank), préstamos solares (BAC, FS) | Ley Bancaria |
| Asociación Bancaria de Panamá (ABP) | Gremio | Miembro del GTFS; Protocolo de Finanzas Sostenibles | 16 signatarios en 2023 | Voluntario |
| Latinex (bolsa y Latinclear) | Infraestructura de mercado | Listado y custodia; segmento sostenible desde 2018 | Guía SVS+; 40 series temáticas vigentes | Licencia de la SMV |
| GTFS | Mesa público-privada | Coordinación de finanzas sostenibles (MEF, MiAMBIENTE, superintendencias, Latinex, ABP, gremios, BNP) | TFS-PAN; comunicados | Voluntario |
| FAP | Fondo soberano | Ahorro y estabilización | Sin mandato doméstico ni temático | Ley 38 de 2012 |
| SIACAP y fondos de pensiones privados | Inversionista institucional | Ahorro previsional | 46 % en deuda del Tesoro; 39 % en instrumentos bancarios | NO VERIFICADO régimen de inversión |
| Aseguradoras | Inversionista institucional | Reservas técnicas mayormente en depósitos locales | Sin productos verdes identificados | Supervisión SSRP |
| BID y BID Invest | Multilateral | Préstamos soberanos, garantías, anclaje de bonos y cooperación técnica | PN-L1174, 5630/OC-PN, Global Bank, Banistmo, prefactibilidad APP de residuos | Contratos de préstamo |
| Fondo Verde del Clima | Fondo climático | Readiness para la TFS-PAN; 11 proyectos | FP149 (instituciones financieras locales) | Acreditaciones |
| CIFI | Financiera de infraestructura | Emisor verde recurrente; entidad acreditada ante el FVC (FS) | Programa de bonos verdes de USD 200 M | Registro SMV |

## 10. Brechas y oportunidades para canalizar recursos a la economía circular

**Brechas**

1. **La taxonomía no reconoce todavía la contribución circular.** Las operaciones circulares deben marcarse como "contingentes" [@sbp2025GuiaTFSBancos, PDF p. 27]. Mientras no haya criterios de contribución sustancial para economía circular, ningún crédito o bono podrá presentarse como alineado por esa vía.
2. **Cartera verde concentrada en mitigación.** En el piloto, 99 % de lo elegible contribuye a mitigación (energía, transporte y construcción) [@sbp2025GuiaTFSBancos, PDF p. 14]; el mercado temático vigente repite el patrón (cuadro de la sección 5).
3. **Sin estadística sistémica de cartera verde.** Ni la SBP ni la ABP publican un total; el reporte por taxonomía es voluntario.
4. **Crédito a los sectores materiales en contracción.** Industria (-16,09 %) y construcción (-4,03 %) pierden saldo, y la cartera se concentra en hipotecas, consumo y comercio [@sbp2026IAB092026, p. 14].
5. **Sin banca de desarrollo ni prestamista de última instancia.** La dolarización elimina herramientas de crédito dirigido; la banca pública actúa por fideicomisos con recursos multilaterales.
6. **Garantías orientadas a MIPYME sin criterio ambiental.** El Fondo de Garantías de Panamá y el programa de reactivación sostenible no tienen, en lo verificado, una ventana circular.
7. **Inversionistas institucionales pequeños y conservadores.** El SIACAP y las aseguradoras invierten en deuda pública y depósitos bancarios; el FAP no tiene mandato doméstico.
8. **Sin emisión soberana temática.** El marco del MEF existe desde 2024 y tiene una categoría circular, pero no hay emisión ni informe de asignación verificados.
9. **Ley 502 sin instrumento financiero propio.** La ley enuncia el acceso al financiamiento como finalidad, sin fondo, garantía ni incentivo.

**Oportunidades**

1. **Segunda edición de la TFS-PAN con criterios de contribución sustancial para economía circular**, empezando por gestión de residuos, reciclaje de metales y plásticos, y construcción (ya tiene el umbral de 20 % de reutilización de desechos de obra como no daño significativo, ver D.1).
2. **Ventana circular en el Fondo de Garantías de Panamá** (cobertura adicional o prima reducida para créditos a recicladores, gestores de residuos y pymes con planes de economía circular), aprovechando su reconocimiento prudencial [@sbp2025Acuerdo8].
3. **Uso de la categoría circular del Marco de Financiamiento Sostenible** para inversión pública presupuestada en residuos y agua (plantas de valorización, rellenos con captura de metano, tratamiento de aguas), con el reporte por proyecto que el MEF ya se comprometió a publicar [@sustainablefitch2024SPOPanama, PDF p. 1].
4. **APP de residuos de Panamá y San Miguelito** como proyecto ancla para financiamiento combinado (BID, bancos locales y bonos en Latinex) [@bid2024TdRResiduosAPP].
5. **Replicar el caso BG Metal Trade**: programas pequeños de bonos y VCN verdes para empresas de reciclaje, con apoyo para costos de revisión externa y una guía SVS+ que incluya KPI circulares.
6. **Línea de redescuento o garantía parcial con BID Invest y el FVC** (FP149 como antecedente) para carteras circulares de bancos locales, usando el piloto de siete bancos como base de datos inicial.
7. **Reporte de cartera por taxonomía** como requisito progresivo de la SBP, siguiendo la recomendación del Banco Mundial de un enfoque por etapas [@bm2023FSAPClimaPanama, PDF p. 6].

## 11. Pendientes de verificación

- Tablas estadísticas detalladas de la SBP con cartera por actividad (hoteles y restaurantes, manufactura por rama), para cruzar con los seis sectores de política.
- Lista vigente de signatarios del Protocolo de Finanzas Sostenibles e informes de la ABP.
- Emisión o préstamo soberano bajo el Marco de Financiamiento Sostenible e informes de asignación.
- Régimen de inversión del SIACAP, de los fondos privados de pensiones y de la CSS.
- Productos verdes de la Caja de Ahorros y del BNP vigentes en 2026.
- Prospecto de Green Silvester (escaneado) y uso de fondos de Vareen Assets.
- Fecha exacta de publicación del acto delegado de la UE que excluyó a Panamá (2025).
- Base legal y montos de las garantías de AMPYME.
