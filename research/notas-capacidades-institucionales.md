# Notas: capacidades institucionales para instrumentos de economía circular en Panamá

Notas de investigación para la consultoría CEPAL (proyecto PEC) sobre las capacidades de las instituciones panameñas para regular, registrar, recaudar y administrar fondos, controlar, monitorear y reportar y financiar instrumentos económicos de economía circular (REP, depósito y reembolso, tasas, incentivos fiscales, compras públicas sostenibles y finanzas verdes).

Fecha de elaboración: 23 de noviembre de 2026. Complementa `research/notas-hoja-ruta-sectores.md`.

## 0. Convenciones y fuentes

**Grados de verificación** (se indican en cada afirmación):

- **[VP]** Verificado en texto primario: se leyó el artículo en la Gaceta Oficial, en Legispan o en una copia institucional.
- **[FS]** Fuente secundaria: prensa, fichas de UNEP LEAP o FAOLEX, resúmenes de terceros o resultados de búsqueda sin texto primario.
- **[NV]** NO VERIFICADO: no se encontró fuente o la fuente es contradictoria. No usar como base de una afirmación.

**Limitación general.** La Gaceta Oficial (gacetaoficial.gob.pa) bloquea las descargas automatizadas (devuelve una página de Incapsula). Por eso no se pudo leer la Ley de Presupuesto 2026, la Ley 276 de 2021 ni el Texto Único de la Ley 41 de 1998. Varias leyes antiguas en Legispan son escaneos sin texto (Decreto Ley 1 de 2008 de Aduanas, Ley 106 de 1973, Decreto Ejecutivo 1445 de 2011); de ellas solo se verificó la ficha (número, fecha, título y Gaceta).

**Archivos descargados** (en `refs/descargas/instituciones/`, no versionado) y copias locales previas:

| Abrev. | Documento | Archivo | Clave BibTeX |
|---|---|---|---|
| L502 | Ley 502 de 2025, economía circular (G.O. 30413) | `refs/web/PA_2025_GO30413_Ley502_EconomiaCircular.pdf` (p. PDF 4-9) | `panama2025Ley502` |
| L33 | Ley 33 de 2018, Basura Cero (G.O. 28537-C) | `refs/web/Panama_Ley-33-2018_...pdf` (p. PDF 17-30) | `panama2018Ley33` |
| L187 | Ley 187 de 2020, plásticos de un solo uso | `refs/web/Panama_Ley-187-2020_...pdf` | `panama2020Ley187` |
| DE9 | Decreto Ejecutivo 9 de 2022, reglamento de la L187 | `refs/web/Panama_DE-9-2022_...pdf` | `panama2022DE9` |
| L51 | Ley 51 de 2010, crea la AAUD (G.O. 26631-A) | `PA_2010_Ley51_AAUD.pdf` (p. PDF 14-24) | `panama2010Ley51` |
| L8-15 | Ley 8 de 2015, crea MiAMBIENTE (G.O. 27749-B) | `PA_2015_Ley8_MiAMBIENTE.pdf` | `panama2015Ley8` |
| L97 | Ley 97 de 1998, crea el MEF (G.O. 23698) | `PA_1998_Ley97_MEF.pdf` | `panama1998Ley97` |
| L22 | Texto Único de la Ley 22 de 2006, contrataciones públicas (G.O. 29107-A) | `PA_2006_Ley22_TextoUnico_Contrataciones.pdf` | `panama2006Ley22TU` |
| L93 | Ley 93 de 2019, APP (G.O. 28864-B) | `FAO_pan190610.pdf` | `panama2019Ley93` |
| DE840 | Decreto Ejecutivo 840 de 2020, reglamento de APP | `FAO_pan201721.pdf` | `panama2020DE840` |
| L45 | Ley 45 de 2007, ACODECO (texto compilado con reformas hasta Ley 284 de 2022) | `refs/descargas/panama/Ley45-2007-consumidor.pdf` | `panama2007Ley45` |
| L10 | Ley 10 de 2009, INEC (G.O. 26211) | `PA_2009_Ley10_INEC.pdf` | `panama2009Ley10` |
| L32 | Ley 32 de 1984, Orgánica de la Contraloría (versión anotada) | `PA_1984_Ley32_Contraloria_revisada.pdf` | `panama1984Ley32` |
| L8-00 | Ley 8 de 2000, AMPYME (G.O. 24064) | `PA_2000_Ley8_AMPYME.pdf` | `panama2000Ley8AMPYME` |
| L33-00 | Ley 33 de 2000, fomento MIPYME (G.O. 24106) | `PA_2000_Ley33_MIPYME.pdf` | `panama2000Ley33MIPYME` |
| L44 | Ley 44 de 2006, ARAP (G.O. 25680) | `PA_2006_Ley44_ARAP.pdf` | `panama2006Ley44` |
| DL1 | Decreto Ley 1 de 2008, Aduanas (escaneo) | `PA_2008_DL1_Aduanas_justia.pdf` | `panama2008DL1Aduanas` |
| L106 | Ley 106 de 1973, régimen municipal (escaneo) | `PA_1973_Ley106_RegimenMunicipal.pdf` | `panama1973Ley106` |
| L26 | Ley 26 de 1996, Ente Regulador de los Servicios Públicos | `PA_1996_Ley26_EnteRegulador_ASEP.pdf` | `panama1996Ley26` |
| L77 | Ley 77 de 2001, IDAAN | `PA_2001_Ley77_IDAAN.pdf` | `panama2001Ley77` |
| TFS | Taxonomía de Finanzas Sostenibles de Panamá (2024) | `refs/web/PA_2024_Taxonomia_Finanzas_Sostenibles.pdf` | `sbp2024TaxonomiaPanama` |
| GSMV | SMV (2025), Guía de bonos temáticos según la Taxonomía | `SMV_Guia-TFS-emisores.pdf` | `smv2025GuiaBonosTematicos` |
| CGR-P | Contraloría, Informe de planilla del sector público, julio 2026 | `CGR_2026-07_Informe-Planilla-Sector-Publico.pdf` | `cgr2026PlanillaJulio` |
| HR | Hoja de Ruta de EC con enfoque de cambio climático (2024) | `refs/web/PNUD-MiAMBIENTE_2024_...pdf` | `miambiente2024HojaRutaEC` |

URL de las leyes en `research/bib-instituciones.bib`.

## 1. Hallazgos transversales

1. **La Ley 502 no crea un sistema REP operativo ni un fondo.** Declara la REP como finalidad (art. 2.4) y principio "quien contamina paga" (art. 3.8), pero no asigna a ninguna institución la función de registrar productores, aprobar sistemas de gestión, recaudar ecomodulaciones ni sancionar. Crea el Consejo Nacional de Economía Circular adscrito a MiAMBIENTE (art. 8), con voz y voto para MiAMBIENTE, MINSA, MICI, dos representantes privados y dos de ONG; MIDA, AMPYME, AAUD, AMUPA, ARAP, SENACYT, INADEH y otros solo con voz (art. 9). El Consejo elabora el Plan Estratégico Nacional cada cuatro años, que incluye lineamientos de guías técnicas de REP (art. 10.3). La reglamentación corresponde al Órgano Ejecutivo a través de MiAMBIENTE (art. 13). [VP: L502, p. PDF 4-8]
2. **Reglamento de la Ley 502 pendiente.** Una columna de opinión de julio de 2026 afirma que el reglamento, "que definirá multas e incentivos", "seguía en debate interinstitucional hasta marzo" [FS: `prensa2026TrellesEC`]. No se encontró reglamento publicado ni noticia de instalación del Consejo Nacional de Economía Circular a noviembre de 2026 [NV].
3. **La REP preexistente en la Ley 33 tampoco tiene operador definido.** El art. 6 obliga a productores, importadores y comercializadores de bienes cuyos residuos sean "de manejo especial" a establecer programas de recuperación, con posibilidad de asociarse y de adoptar sistemas de depósito, devolución y retorno. La declaración de qué residuos son de manejo especial corresponde a "la entidad sectorial competente" (art. 33), sin nombrarla. El art. 39 ordenaba reglamentar en 180 días. [VP: L33, p. PDF 21-22, 27, 29]. No se encontró el reglamento de la Ley 33 [NV].
4. **Instrumentos económicos con base legal general.** La Ley 33 faculta al Estado a establecer "instrumentos de mercado" e "incentivos fiscales y no fiscales" (art. 25-26) y a las entidades sectoriales a "establecer y recomendar medidas fiscales y administrativas para incentivar o desincentivar el uso, importación y comercialización de productos" (art. 27.3). [VP: L33, p. PDF 25-26]. Un cargo obligatorio nuevo (tributo) seguiría requiriendo ley formal; esto es inferencia jurídica general, no verificada en el texto constitucional en esta nota [NV].
5. **Compras públicas.** La Ley 502 (art. 12) modificó el art. 40 de la Ley 22 de 2006 para que la DGCP establezca criterios de "sostenibilidad, eficiencia energética, innovación y economía circular" en los procedimientos de todas las entidades [VP: L502, p. PDF 8]. La Ley 33 (art. 28) ya ordenaba priorizar insumos reutilizables, reciclables y valorizables en las compras públicas [VP].
6. **Instancias de coordinación existentes:**
   - Consejo Nacional de Economía Circular (L502, art. 8-10) [VP]; sin evidencia de instalación [NV].
   - Comité Interinstitucional para una Economía Circular Baja en Emisiones y Resiliente, coordinado por la Dirección de Cambio Climático de MiAMBIENTE. Es una **propuesta** de la HR ("Propuesta de Comité", HR p. 34-35) con 18 miembros (MiAMBIENTE, MICI, MEF, SNE, MOP, MIDA, AAUD, AMUPA, MINSA, MIDEM, UTP, UP, SENACYT, AMPYME, CENAMEP AIP, SIP, CONEP y CAPAC) [VP: HR p. 34-35]. No se verificó que esté constituido [NV].
   - Sistema Interinstitucional de Ambiente y red de unidades ambientales sectoriales (L8-15, art. 10-11) [VP].
   - Comité de educación ambiental sobre plásticos (MiAMBIENTE, MINSA, MEDUCA, AAUD y AMUPA), DE9 art. 15 [VP].
   - Junta Directiva de la AAUD: MINSA (preside), MITRADEL, MIVIOT, ATP y la autoridad ambiental; con voz, la Contraloría y la ASEP (L51, art. 11) [VP].
   - Ente rector de APP: ministros de la Presidencia, MEF, MOP, MICI y Relaciones Exteriores; el contralor con voz (L93, art. 10) [VP].
   - Comité de Supervisión de la Taxonomía de Finanzas Sostenibles, integrado por MiAMBIENTE (Dirección de Cambio Climático) y MEF (TFS, p. 2) [VP].
   - CONAGUA: no investigado en esta nota [NV].
7. **Presupuesto 2026.** El Presupuesto General del Estado 2026 asciende a B/.34 901 millones y fue sancionado el 29 de octubre de 2025 [FS: `telemetro2025Presupuesto2026`]. Las fuentes de prensa lo llaman "Ley 293"; una resolución posterior en la Gaceta lo citaría como "Ley 494 de 29 de octubre de 2025" según un resultado de búsqueda; el número de ley queda [NV]. No se obtuvo la asignación por institución (la Gaceta bloquea la descarga); solo hay cifras de prensa para la AAUD. **Pendiente:** pedir al MEF (Dirección de Presupuesto de la Nación) el anexo institucional de la ley de presupuesto 2026 y la ejecución a septiembre de 2026.
8. **Personal (julio de 2026)**, funcionarios permanentes y eventuales según la planilla revisada de la Contraloría [VP: CGR-P, cuadro 3, p. PDF 22-23]:

| Institución | Funcionarios (jul. 2026) |
|---|---|
| Ministerio de Salud | 20 486 |
| Contraloría General (incluye INEC) | 4 022 |
| Banco Nacional de Panamá | 3 580 |
| IDAAN | 2 684 |
| MEF | 2 626 |
| AAUD | 2 405 |
| MIDA | 2 170 |
| Ministerio de Ambiente | 1 745 |
| Autoridad Nacional de Aduanas | 1 715 |
| MICI | 641 |
| ASEP (Autoridad Nacional de los Servicios Públicos) | 527 |
| ACODECO | 462 |
| Superintendencia de Bancos | 443 |
| ARAP | 392 |
| Autoridad de Turismo de Panamá | 257 |
| AMPYME | 201 |
| Superintendencia del Mercado de Valores | 122 |
| Dirección General de Contrataciones Públicas | 110 |
| Superintendencia de Seguros y Reaseguros | 81 |

La SNE y la Secretaría Nacional de APP no aparecen por separado (están dentro del Ministerio de la Presidencia, 2 203 funcionarios) [VP: CGR-P p. PDF 22]. Los municipios no figuran en el cuadro.

## 2. Fichas por institución

### 2.1 Ministerio de Ambiente (MiAMBIENTE)

- **Ley de creación:** Ley 8 de 25 de marzo de 2015 (G.O. 27749-B), que reforma la Ley 41 de 1998 [VP: L8-15]. El art. 1 y el art. 2, num. 1 a 8, están en una página escaneada sin texto [VP de la limitación].
- **Regular:** dicta guías y términos de referencia de estudios de impacto ambiental, otorga permisos y concesiones (art. 2, num. 9-11); fija tarifas por uso de recursos naturales (num. 21) [VP: L8-15, p. Gaceta 68]. Reglamenta la Ley 502 (art. 13) y la Ley 187 (art. 20) [VP].
- **Registrar:** "llevar un registro de las organizaciones ambientales" (art. 2.22); crear y mantener bases de datos ambientales (art. 2.16) [VP]. El Sistema Nacional de Información Ambiental (art. 45 de la Ley 41, según art. 28 de la Ley 8) recopila y distribuye información ambiental de libre acceso [VP: L8-15, p. PDF 17]. En el SINIA se establecerá la Plataforma de Información sobre los Indicadores de Economía Circular, alimentada obligatoriamente por entidades públicas y privadas (L502, art. 11) [VP]. **No existe en la ley un registro de productores REP ni de generadores** [VP por ausencia en L502, L33 y L187]. La existencia de un "registro de generadores" de MiAMBIENTE no se verificó [NV].
- **Recaudar y administrar fondos:** cobra por servicios (art. 2.18), tiene jurisdicción coactiva (art. 9) y administra cinco fondos de destino específico dentro de la Cuenta Única del Tesoro: Protección y Desarrollo Forestal, Áreas Protegidas y Vida Silvestre, Evaluación y Fiscalización Ambiental (art. 115-A, nutrido por multas y tasas de evaluación), Adaptación al Cambio Climático (art. 126-D) y Cuencas Hidrográficas (art. 4) [VP: L8-15, p. Gaceta 69-70, 88]. No hay fondo de economía circular [VP por ausencia en L502].
- **Controlar:** impone sanciones y multas (art. 2.20; art. 114 de la Ley 41) [VP]. Fiscaliza el Plan Estratégico Nacional de reducción de plásticos (L187, art. 15.4; DE9, art. 5) [VP]. La Dirección de Verificación del Desempeño Ambiental recibe de Aduanas las estadísticas de importación de plásticos (DE9, art. 10) [VP].
- **Monitorear y reportar:** informe anual de gestión ambiental (art. 2.17) [VP]; reporte trienal del estado de la economía circular (L502, art. 11) [VP]; indicadores y rendición de cuentas del plan de plásticos (L187, art. 14) [VP]; inventario de GEI (art. 126-F de la Ley 41) [VP].
- **Financiar:** debe establecer mecanismos para "captar recursos financieros y económicos, mediante instrumentos nacionales e internacionales" para la transición baja en carbono (art. 126-G de la Ley 41) [VP: L8-15, p. Gaceta 88-89]. Integra el Comité de Supervisión de la Taxonomía (TFS p. 2) [VP].
- **Organigrama:** la Dirección de Cambio Climático coordinó la HR (HR p. 3) [VP] y su directora figura como "Directora Nacional de Cambio Climático" en la Taxonomía (TFS p. 2) [VP]. **No se encontró una "Dirección de Economía Circular"** en MiAMBIENTE [NV]; las búsquedas en el sitio del ministerio no la muestran.
- **Presupuesto y personal:** 1 745 funcionarios (jul. 2026) [VP: CGR-P]. Asignación 2026 no obtenida [NV]. La Comisión de Presupuesto aprobó en 2026 un traslado de B/.2,69 millones para 68 vehículos; el ministro describió una flota con 292 vehículos en desuso [FS: La Prensa, sin fecha verificada].
- **Fortalezas:** rectoría legal sobre la Ley 502 y la Ley 187; fondos de destino específico ya creados; jurisdicción coactiva; SINIA con base legal; liderazgo técnico en taxonomía y cambio climático.
- **Brechas:** sin unidad formal de economía circular; reglamento de la Ley 502 sin publicar; ninguna base legal para registro REP o fondo de EC; personal reducido frente a su mandato; Plan Estratégico de plásticos sin evaluación pública localizada [NV].
- **Necesidades:** crear una unidad de economía circular con presupuesto; reglamentar la L502 con registro de productores, metas y procedimiento sancionador; ampliar el objeto del Fondo de Evaluación y Fiscalización o crear una subcuenta; diseñar la plataforma de indicadores del art. 11.

### 2.2 Ministerio de Economía y Finanzas (MEF)

- **Ley de creación:** Ley 97 de 21 de diciembre de 1998 (G.O. 23698) [VP].
- **Regular:** diseña y norma las políticas económicas (art. 2, A.1); establece privativamente normas de manejo de recursos financieros del sector público (C.14) [VP: L97].
- **Registrar:** registro de títulos valores del Estado (C.7) [VP]. Sin registro relevante para REP.
- **Recaudar:** "reconocer, recaudar y fiscalizar todos los tributos establecidos por ley", salvo los atribuidos a otras entidades (C.3) [VP]. Tiene jurisdicción coactiva para tributos y multas [VP: L97, p. PDF ~11]. La Dirección General de Ingresos no se revisó por separado [NV].
- **Controlar:** prevenir, investigar y sancionar fraudes fiscales (C.4) [VP].
- **Monitorear y reportar:** informe trimestral de desempeño económico (A.2) y de ejecución presupuestaria a la Asamblea (B.3); contabilidad gubernamental integrada (C.6) [VP]. Da seguimiento a las superintendencias financieras y puede asistir con voz a sus juntas (C.11) [VP].
- **Financiar:** gestiona privativamente el financiamiento interno y externo (C.5); administra el Fondo de Preinversión (D.2) [VP]. Adoptó el Marco de Financiamiento Sostenible por Resolución MEF-RES-2024-1529 (G.O. 30061-C, 26 jun. 2024) [VP del encabezado; el anexo es imagen]. Integra el ente rector de APP (L93, art. 10) y el Comité de Supervisión de la Taxonomía (TFS p. 2) [VP].
- **Personal:** 2 626 (jul. 2026) [VP: CGR-P].
- **Fortalezas:** recaudación tributaria, emisión soberana temática y control del presupuesto.
- **Brechas:** sin rol legal en la Ley 502; los ingresos van a Cuenta Única, lo que dificulta asignaciones específicas; no se localizó reporte de uso de fondos de bonos sostenibles [NV].
- **Necesidades:** incluir al MEF en el Consejo de EC; evaluar gasto tributario de incentivos ambientales; etiquetar gasto de EC en el presupuesto.

### 2.3 Ministerio de Comercio e Industrias (MICI)

- **Ley de creación:** Decreto de Gabinete de 1969 (número contradictorio: 145 o 225) y reorganización por Decreto Ley 6 de 15 de febrero de 2006 [FS; número de 1969 NV].
- **Regular:** establece estrategias para estimular la inversión en I+D+i circular (L502, art. 4) y programas de capacitación de emprendedores (art. 5) [VP]. Su Dirección General de Normas y Tecnología Industrial (DGNTI) certifica la conformidad de alternativas a plásticos (DE9, art. 8) [VP]. ACODECO coordina con el MICI la aplicación de reglamentos técnicos (L45, art. 86.12) [VP].
- **Registrar:** base de datos pública, actualizada cada seis meses, de artículos aprobados como alternativas (DE9, art. 13) [VP]. No se verificó que esté publicada [NV].
- **Recaudar, controlar, financiar:** sin base específica localizada en EC [NV].
- **Monitorear:** voz y voto en el Consejo de EC (L502, art. 8) [VP].
- **Personal:** 641 (jul. 2026) [VP: CGR-P].
- **Fortalezas:** normalización técnica (DGNTI), vínculo con la industria, rol en I+D+i de la L502.
- **Brechas:** plantilla pequeña; no hay registro de productores ni importadores de envases; normas ISO 59000 aún por evaluar (HR p. 38-39) [VP].
- **Necesidades:** normas técnicas de ecodiseño y etiquetado; registro de productores e importadores de envases en coordinación con Aduanas.

### 2.4 Autoridad de Aseo Urbano y Domiciliario (AAUD)

- **Ley de creación:** Ley 51 de 29 de septiembre de 2010 (G.O. 26631-A); reglamento DE 1445 de 2011 (escaneo) [VP]. La Ley 276 de 2021 la habría modificado [FS: UNEP LEAP].
- **Regular:** desarrolla políticas, estrategias y planes de residuos y elabora el PNGIR (L51, art. 6.1 y 6.4); la Junta Directiva dicta medidas y políticas (art. 13.1) [VP]. Reglamenta los procedimientos sancionatorios de la Ley 33 (L33, art. 37, nuevo art. 1-B de la Ley 30 de 2000) [VP].
- **Registrar:** a su cargo el Sistema Nacional de Información sobre Gestión Integral de Residuos, con inventario de gestores autorizados y segregadores organizados y no organizados (L33, art. 19-21); los actores están obligados a suministrar información [VP]. No se verificó que el sistema opere [NV].
- **Recaudar y administrar fondos:** fija tarifas por nivel socioeconómico con subsidio cruzado y revisión cada dos años (L51, art. 8-9); cobra intereses de mora (art. 10); administra el Fondo de Aseo Público, depositado en el Banco Nacional y nutrido por aportes del Gobierno Central (art. 19-20); jurisdicción coactiva (art. 21); cobro mediante la factura eléctrica (art. 30-31); el IDAAN cobra hasta el traslado de cartera (art. 8) [VP].
- **Controlar:** multas de B/.25 a B/.500 a usuarios y de B/.1 000 a B/.10 000 a prestadores (art. 22-26); coordina con MINSA la fiscalización (art. 6.5) [VP]. Seguimiento de los programas de manejo de residuos de generadores comerciales e industriales (L33, art. 17) [VP].
- **Monitorear y reportar:** estadísticas nacionales de residuos (L33, art. 21); informe anual a la Junta (L51, art. 16.6) [VP].
- **Financiar:** diseña políticas de financiamiento (art. 6.2), concesiona servicios y programas de reciclaje (art. 7) y su Junta puede acordar emisión de bonos (art. 13.7) [VP].
- **Presupuesto y finanzas:** solicitó B/.93,3 millones para 2026 y el MEF recomendó B/.66,0 millones (recorte de B/.27,2 millones) [FS: `tvn2025AAUDPresupuesto2026`]. En 2025 recaudó B/.35,2 millones por tasa de aseo frente a un gasto total de B/.60,6 millones; la morosidad acumulada es de B/.118,8 millones (B/.98 millones residencial) [FS: `estrella2026AAUDMorosidad`]. Nuevos contratos de recolección por más de B/.85 millones a siete años, con inicio previsto el 1 de julio de 2026 [FS: misma fuente].
- **Trayectoria:** asumió la recolección en San Miguelito en enero de 2026 tras terminar la concesión con Revisalud; contrató siete empresas por procedimiento excepcional (art. 79 de la Ley 22) sin refrendo de la Contraloría; 77 837 usuarios pagan la tasa vía factura eléctrica de ENSA [FS: `prensa2026AAUDSanMiguelito`]. La Contraloría devolvió expedientes de contratos sin refrendo en enero de 2026 [FS: La Prensa y Telemetro, resultados de búsqueda].
- **Personal:** 2 405 (jul. 2026) [VP: CGR-P]; la prensa reporta 2 472 en 2025 [FS].
- **Fortalezas:** el único ente con base legal completa para tasa, fondo, cobro coactivo, cobro en factura eléctrica, sanciones y sistema de información de residuos.
- **Brechas:** déficit operativo estructural (gasto supera la recaudación en más de B/.25 millones); morosidad elevada; dependencia de transferencias; observaciones de la Contraloría; sin rol de voto en el Consejo de EC; sistema de información de la L33 sin evidencia de operación.
- **Necesidades:** separar contablemente la tasa de aseo de eventuales cuotas REP; extender el cobro en factura eléctrica; poner en operación el sistema de información de la L33 como base del registro de gestores; auditoría financiera independiente.

### 2.5 Autoridad Nacional de Aduanas

- **Ley de creación:** Decreto Ley 1 de 13 de febrero de 2008 (G.O. 25984) [VP de la ficha; texto escaneado no leído].
- **Regular:** emite actos administrativos para restringir el ingreso de plásticos prohibidos (DE9, art. 6) [VP].
- **Registrar:** opera el Sistema Integrado de Gestión Aduanera (SIGA), al que da acceso a auxiliares de la función aduanera (G.O. 30413, sumario, Resolución 514 de 2025) [VP]. La VUCE no se revisó [NV].
- **Recaudar:** la recaudación de tributos a la importación no se verificó en texto primario [NV].
- **Controlar:** responsable de restringir el ingreso de los plásticos del art. 9 (L187, art. 15.1); debe asignar personal en puertos y aeropuertos y verificar certificados de alternativas (DE9, art. 6-7) [VP].
- **Monitorear y reportar:** entrega a MiAMBIENTE estadísticas de reducción de importaciones de plásticos y de entradas de alternativas (DE9, art. 10) [VP].
- **Financiar:** no [VP por ausencia].
- **Personal:** 1 715 (jul. 2026) [VP: CGR-P].
- **Fortalezas:** dato transaccional por partida arancelaria en SIGA, clave para un registro REP de importadores.
- **Brechas:** sin evidencia pública de los reportes del DE9 art. 10 [NV].
- **Necesidades:** convenio de intercambio de datos SIGA con MiAMBIENTE y MICI por capítulo SA de envases.

### 2.6 Municipios (Panamá, San Miguelito, Colón, David)

- **Ley marco:** Ley 106 de 1973, régimen municipal (ficha verificada, texto escaneado) [VP de la ficha]. La Ley 51 derogó el numeral 14 del art. 17 de la Ley 106 (art. 37) [VP].
- **Regular:** competentes para la gestión de residuos domiciliarios y comerciales, de forma asociada o mediante empresas municipales o mixtas; pueden concesionar e incorporar segregadores; la AAUD actúa de forma coordinada y supletoria (L33, art. 8) [VP]. Plan Municipal de Gestión Integral de Residuos (art. 15-16) [VP].
- **Registrar:** autorización previa de la entrega a gestores (L33, art. 33) [VP].
- **Recaudar:** multas de B/.10 a B/.1 000 (art. 1 de la Ley 30 de 2000, modificado por L33, art. 35) [VP]. Tasas municipales de aseo: base en la Ley 106 no verificada [NV].
- **Controlar:** sanciones, suspensión de actividades y solicitud de cancelación de avisos de operación (L33, art. 35-37); inspecciones (art. 38) [VP].
- **Monitorear:** seguimiento de programas de generadores (L33, art. 17) [VP].
- **Financiar:** pueden crear fondos de garantía MYPE (L33-00, art. 27) [VP] y celebrar APP por debajo de B/.15 millones (L93, art. 6) [VP].
- **Particularidades:** en el distrito de Panamá la recolección es de la AAUD (L51, art. 3 y 5) [VP]; en San Miguelito la AAUD asumió el servicio en enero de 2026 [FS]. Colón y David: no se obtuvo información sobre su modalidad de servicio, tasas ni presupuesto [NV].
- **Coordinación:** AMUPA tiene voz en el Consejo de EC (L502, art. 9.4) [VP].
- **Brechas y necesidades:** heterogeneidad de capacidades; los dos mayores distritos dependen de la AAUD; falta información sobre planes municipales aprobados. Pedir a AMUPA y a la Autoridad Nacional de Descentralización inventario de planes y tasas.

### 2.7 Superintendencia de Bancos de Panamá (SBP)

- **Base legal:** Texto Único del Decreto Ley 9 de 1998, adoptado por DE 52 de 2008 [FS].
- **Regular:** Acuerdo 11-2022 que incorpora riesgos ambientales, sociales y climáticos (físicos y de transición) a la gestión integral de riesgos del Acuerdo 8-2010 [FS: resultado de búsqueda; descarga fallida]. Encuesta de la SBP con avance menor de 50 % en gestión de riesgos sociales y ambientales [FS].
- **Monitorear:** lideró la Taxonomía de Finanzas Sostenibles con la SMV, la SSRP y el GTFS (TFS p. 2) [VP].
- **Registrar, recaudar, financiar:** no aplica a EC [inferencia].
- **Personal:** 443 (jul. 2026) [VP: CGR-P].
- **Necesidades:** reporte obligatorio de cartera alineada con la Taxonomía, incluido el objetivo de transición a economía circular.

### 2.8 Superintendencia del Mercado de Valores (SMV)

- **Base legal:** Decreto Ley 1 de 1999 y Título II de la Ley 67 de 2011 (Texto Único de 2012) [FS].
- **Registrar:** registro de emisiones ante la SMV; reconoce la guía de bonos temáticos como herramienta en el registro de instrumentos temáticos (GSMV, p. 7-9) [VP]. Participó en el pilotaje de la Taxonomía como observadora (GSMV p. 9) [VP].
- **Regular, controlar:** supervisión del mercado [FS]. Las guías de 2019 de bonos verdes, sociales y sostenibles fueron de la Bolsa de Valores de Panamá, no de la SMV [FS].
- **Personal:** 122 (jul. 2026) [VP: CGR-P].
- **Necesidades:** requisitos de reporte de uso de fondos para bonos con objetivo de economía circular.

### 2.9 Superintendencia de Seguros y Reaseguros (SSRP)

- **Base legal:** Ley 12 de 2012 [NV].
- Coautora de la Taxonomía (TFS p. 2) [VP]. Personal 81 (jul. 2026) [VP: CGR-P]. Otras funciones no investigadas [NV].

### 2.10 Autoridad de la Micro, Pequeña y Mediana Empresa (AMPYME)

- **Ley de creación:** Ley 8 de 2000 (G.O. 24064) [VP]; fomento en Ley 33 de 2000; ambas reformadas por Ley 72 de 2009 (no revisada) [FS].
- **Regular:** propone políticas de promoción (L8-00, art. 7.18) [VP].
- **Registrar:** registro oficial de la MIPYME (L33-00, art. 11) [VP].
- **Recaudar y administrar fondos:** administra el Fondo de Garantía (mínimo B/.5 millones anuales en el texto original; 50 % garantías, 30 % capacitación, 20 % asistencia técnica; garantía máxima de B/.25 000 y 80 % del saldo) (L33-00, art. 22-25) [VP, texto original].
- **Monitorear:** estadísticas públicas (L8-00, art. 7.15) [VP].
- **Financiar:** instrumentos de intermediación financiera y captación de recursos (art. 7.8 y 7.10) [VP]. Rol en L502 (art. 4, 5 y 9) [VP].
- **Personal:** 201 [VP: CGR-P].
- **Brechas y necesidades:** desempeño del Fondo de Garantía no verificado [NV]; ventana de garantía para emprendimientos circulares y recicladores organizados.

### 2.11 Secretaría Nacional de Energía (SNE)

- **Base legal:** Ley 52 de 2008 (creación) y Ley 43 de 2011 (reorganización), adscrita a la Presidencia [FS].
- Rector de la política energética [FS]. Miembro propuesto del Comité de la HR [VP: HR p. 34-35]. Sin rol en la L502 [VP por ausencia].
- Relevancia: valorización energética de residuos y eficiencia (incentivos solares de las Leyes 37 de 2013 y 417 de 2023, ya en el maestro). Funciones específicas [NV].

### 2.12 Ministerio de Desarrollo Agropecuario (MIDA)

- Ley de creación (Ley 12 de 1973) [NV].
- Asesora al MICI en I+D+i circular (L502, art. 4), coordina programas (art. 5) y tiene voz en el Consejo (art. 9.1) [VP]. 2 170 funcionarios [VP: CGR-P].
- Necesidad: residuos orgánicos agropecuarios y compostaje en el plan estratégico.

### 2.13 Autoridad de los Recursos Acuáticos de Panamá (ARAP)

- **Ley de creación:** Ley 44 de 2006 (G.O. 25680) [VP].
- **Regular:** norma el aprovechamiento de recursos acuáticos (art. 4.2 y 4.10) [VP].
- **Registrar:** Ventanilla Única de Trámites y Registros con base de datos de permisos y concesiones (art. 32) [VP].
- **Recaudar y administrar fondos:** establece tasas (art. 4.4); el Administrador las fija y recauda (art. 21.13-14); Fondo de la ARAP con multas y tasas, sujeto a caja única (art. 42) [VP].
- **Controlar:** régimen de infracciones (art. 4.18) [VP].
- **Monitorear:** calidad de aguas en zonas pesqueras (art. 4.6) [VP].
- **Financiar:** incentiva empresas del sector (art. 4.16) [VP].
- Voz en el Consejo de EC (L502, art. 9.5) [VP]. 392 funcionarios [VP: CGR-P]. Crédito suplementario 2026 en la Gaceta [FS].
- Relevancia: artes de pesca y plásticos marinos; un esquema REP de redes podría apoyarse en su registro de licencias.

### 2.14 Autoridad de Turismo de Panamá (ATP)

- Ley de creación no verificada [NV]. Miembro de la Junta Directiva de la AAUD (L51, art. 11.4) [VP]. 257 funcionarios [VP: CGR-P]. Sin rol en la L502 [VP por ausencia].
- Relevancia: tasas turísticas como fuente de financiamiento (presentación GIZ, ver notas de Hoja de Ruta); base legal de la ATP para cobrar [NV].

### 2.15 Dirección General de Contrataciones Públicas (DGCP)

- **Base legal:** Ley 22 de 2006, Texto Único ordenado por Ley 153 de 2020 (G.O. 29107-A); entidad autónoma con facultad "para regular, interpretar, fiscalizar y asesorar" (art. 14) [VP: L22, p. PDF 29].
- **Regular:** actos administrativos, pliegos estándar y criterios de sostenibilidad y economía circular (art. 15.2, 15.5; art. 40 modificado por L502, art. 12) [VP].
- **Registrar:** Registro de Proponentes, de contratos y de contratistas sancionados (art. 15.4) [VP].
- **Controlar:** fiscaliza los procesos y sanciona (art. 15.13-14) [VP].
- **Monitorear:** opera PanamaCompra (art. 15.6) y la tienda virtual de convenios marco (art. 15.7-8) [VP].
- **Financiar:** no; actúa sobre la demanda pública.
- 110 funcionarios [VP: CGR-P].
- **Brecha:** no se encontró resolución que fije criterios de economía circular tras la L502 [NV]. **Necesidad:** criterios por categoría de producto en convenios marco y etiqueta en PanamaCompra para medir compras circulares.

### 2.16 ACODECO (protección al consumidor y competencia)

- **Base legal:** Ley 45 de 2007 (G.O. 25914), con reformas hasta 2022 [VP, texto compilado].
- **Regular:** guías técnicas (art. 86.7) [VP].
- **Recaudar:** jurisdicción coactiva sobre multas (art. 86.17) [VP].
- **Controlar:** investiga y sanciona (art. 86.3) [VP]; vela por la no comercialización de plásticos prohibidos y sanciona (L187, art. 15.2; DE9, art. 11-12, 19-20, multas desde B/.250 según tamaño) [VP].
- **Monitorear:** estudios de mercado (art. 86.11) y abogacía de competencia (art. 86.5) [VP]. Relevante para evaluar riesgos de colusión en sistemas colectivos REP [inferencia].
- **Trayectoria:** 397 sanciones por B/.99 835 entre 2019 y junio de 2026 bajo la Ley 1 de 2018 de bolsas, 321 por falta de certificado de conformidad [FS: `estrella2026AcodecoBolsas`]. No se encontraron cifras de sanciones bajo la Ley 187 [NV].
- 462 funcionarios [VP: CGR-P].

### 2.17 Ministerio de Salud (MINSA)

- Código Sanitario y ley orgánica no revisados [NV].
- Representa a la AAUD ante el Ejecutivo, preside su Junta y reglamenta la L51 (L51, art. 4, 11, 36) [VP]. Fiscaliza el art. 7 de la L187 (L187, art. 15.3) [VP]. Regula residuos hospitalarios, excluidos de la L33 (L33, art. 2), y autoriza exportación de residuos (art. 29) [VP]. Voz y voto en el Consejo de EC (L502, art. 8) [VP]. 20 486 funcionarios [VP: CGR-P].

### 2.18 Contraloría General de la República

- **Base legal:** Ley 32 de 1984 [VP, versión anotada].
- Fiscaliza, regula y controla los fondos y bienes públicos; ejerce control previo (refrendo) y posterior (art. 1 y 11.2) [VP]. Fiscaliza el Fondo de Aseo Público (L51, art. 19) y los descartes de bienes de la L33 (art. 29) [VP]. Dirige la estadística nacional (art. 1) [VP]. Voz en las juntas de AAUD (L51, art. 11) y del ente rector APP (L93, art. 10) [VP].
- 4 022 funcionarios [VP: CGR-P]. Auditorías específicas a la AAUD: solo prensa sobre contratos sin refrendo [FS].

### 2.19 Instituto Nacional de Estadística y Censo (INEC)

- **Base legal:** Ley 10 de 2009, adscrito a la Contraloría [VP].
- Obligación de suministrar datos para entidades y personas (art. 47); secreto estadístico (art. 53); infracciones por no suministrar datos [VP: L10, p. PDF 31-33].
- Relevancia: encuestas de residuos y cuentas de flujo de materiales; alimentar la plataforma del art. 11 de la L502.

### 2.20 Secretaría Nacional de APP

- **Base legal:** Ley 93 de 2019, adscrita al Ministerio de la Presidencia (art. 12); reglamento DE 840 de 2020 [VP].
- Lineamientos de riesgos y garantías (art. 12.2), valor por dinero (12.4), verificación de espacio fiscal (12.10), evaluación de calidad de servicios (12.12), informes anuales (12.16) y Registro de APP (12.17) [VP]. APP autofinanciadas o cofinanciadas (art. 5); mínimo de B/.15 millones salvo municipios (art. 6) [VP].
- Relevancia: plantas de valorización y rellenos regionales. Personal no desagregado [VP: CGR-P].

### 2.21 ASEP (Autoridad Nacional de los Servicios Públicos)

- Origen en la Ley 26 de 1996 (Ente Regulador) [VP de la ficha]. Voz en la Junta de la AAUD (L51, art. 11) [VP]. Los ingresos de distribuidoras eléctricas por cobrar la tasa de aseo no pagan la tasa de control de la ASEP (L51, art. 31) [VP]. No regula el servicio de aseo según los textos leídos [VP por ausencia]. 527 funcionarios [VP: CGR-P].

### 2.22 IDAAN

- Ley 77 de 2001 [VP de la ficha]. Cobra la tasa de aseo hasta el traslado de cartera a la AAUD (L51, art. 8) [VP]; sigue cobrando en 2026 según la AAUD [FS: `estrella2026AAUDMorosidad`]. 2 684 funcionarios [VP: CGR-P]. Infraestructura de facturación útil para tasas; deudas con contratistas de carros cisterna en auditoría [FS].

## 3. Matriz de funciones por institución

Valores: **Sí** (documentada con base legal) / **Parcial** (base legal general, reglamentaria o limitada) / **No** (sin base localizada) / **Por confirmar** (no verificado). Entre paréntesis, la norma y el grado.

| Institución | Regular | Registrar | Recaudar y administrar fondos | Controlar | Monitorear y reportar | Financiar |
|---|---|---|---|---|---|---|
| MiAMBIENTE | Sí (L502 art. 13; L187 art. 20; L8-15 art. 2.9-11) [VP] | Parcial (L8-15 art. 2.16, 2.22; L502 art. 11; sin registro REP) [VP] | Parcial (L8-15 art. 2.18, 4, 9; fondos sin objeto EC) [VP] | Parcial (L8-15 art. 2.20; L187 art. 15.4; sin régimen sancionador EC) [VP] | Sí (L502 art. 11; L187 art. 14; L8-15 art. 2.17) [VP] | Parcial (Ley 41 art. 126-D, 126-G) [VP] |
| MEF | Parcial (L97 art. 2 A.1, C.14) [VP] | No (solo títulos del Estado, C.7) [VP] | Sí (L97 art. 2 C.3) [VP] | Sí (C.4) [VP] | Sí (A.2, B.3, C.6, C.11) [VP] | Sí (C.5, D.2; MEF-RES-2024-1529) [VP] |
| MICI | Parcial (L502 art. 4-5; DE9 art. 8) [VP] | Parcial (DE9 art. 13) [VP] | Por confirmar [NV] | Parcial (certificación DE9 art. 8) [VP] | Parcial (DE9 art. 13) [VP] | Parcial (L502 art. 4) [VP] |
| AAUD | Sí (L51 art. 6.1, 13.1; L33 art. 37) [VP] | Sí (L33 art. 19-21; operación NV) [VP] | Sí (L51 art. 8-10, 19-21, 30) [VP] | Sí (L51 art. 22-26; L33 art. 17) [VP] | Sí (L33 art. 21; L51 art. 16.6) [VP] | Parcial (L51 art. 6.2, 7, 13.7) [VP] |
| Aduanas (ANA) | Parcial (DE9 art. 6) [VP] | Parcial (SIGA; G.O. 30413) [VP] | Por confirmar (DL1 2008 no legible) [NV] | Sí (L187 art. 15.1; DE9 art. 6-7) [VP] | Sí (DE9 art. 10) [VP] | No [VP] |
| Municipios | Sí (L33 art. 8, 15) [VP] | Parcial (L33 art. 33) [VP] | Parcial (multas L33 art. 35; tasas NV) [VP] | Sí (L33 art. 35-38) [VP] | Parcial (L33 art. 17) [VP] | Parcial (L33-00 art. 27; L93 art. 6) [VP] |
| SBP | Parcial (Acuerdo 11-2022) [FS] | No [inferencia] | No [inferencia] | Parcial (supervisión prudencial) [FS] | Parcial (TFS p. 2) [VP] | No [inferencia] |
| SMV | Parcial (DL 1 1999) [FS] | Sí (registro de emisiones; GSMV p. 7-9) [VP] | No [inferencia] | Parcial [FS] | Parcial (GSMV p. 9) [VP] | No [inferencia] |
| SSRP | Por confirmar [NV] | Por confirmar [NV] | No [inferencia] | Por confirmar [NV] | Parcial (TFS p. 2) [VP] | No [inferencia] |
| AMPYME | Parcial (L8-00 art. 7.18) [VP] | Sí (L33-00 art. 11) [VP] | Sí (Fondo de Garantía, L33-00 art. 22-25) [VP] | No [VP] | Sí (L8-00 art. 7.15) [VP] | Sí (L8-00 art. 7.8, 7.10; L33-00 art. 22) [VP] |
| SNE | Parcial (Ley 43 de 2011) [FS] | Por confirmar [NV] | No [NV] | Por confirmar [NV] | Por confirmar [NV] | Por confirmar [NV] |
| MIDA | Parcial (L502 art. 4-5) [VP] | Por confirmar [NV] | Por confirmar [NV] | Por confirmar [NV] | Parcial (L502 art. 9) [VP] | Por confirmar [NV] |
| ARAP | Sí (L44 art. 4.2, 4.10) [VP] | Sí (L44 art. 32) [VP] | Sí (L44 art. 4.4, 21.13-14, 42) [VP] | Sí (L44 art. 4.18) [VP] | Parcial (L44 art. 4.6) [VP] | Parcial (L44 art. 4.16) [VP] |
| ATP | Por confirmar [NV] | Por confirmar [NV] | Por confirmar [NV] | Por confirmar [NV] | Por confirmar [NV] | Por confirmar [NV] |
| DGCP | Sí (L22 art. 14, 15.2, 15.5, 40) [VP] | Sí (L22 art. 15.4) [VP] | No [VP] | Sí (L22 art. 15.13-14) [VP] | Sí (PanamaCompra, L22 art. 15.6) [VP] | No [VP] |
| ACODECO | Parcial (L45 art. 86.7) [VP] | No [VP] | Parcial (multas, L45 art. 86.17) [VP] | Sí (L45 art. 86.3; L187 art. 15.2; DE9 art. 11-20) [VP] | Parcial (L45 art. 86.11) [VP] | No [VP] |
| MINSA | Parcial (L51 art. 36; L33 art. 2) [VP] | Por confirmar [NV] | No [NV] | Sí (L187 art. 15.3; L51 art. 6.5) [VP] | Por confirmar [NV] | No [NV] |
| Contraloría | Parcial (L32 art. 1, sistemas contables) [VP] | Sí (contabilidad pública, L32 art. 11.1) [VP] | No [VP] | Sí (L32 art. 11.2; L51 art. 19) [VP] | Sí (estadística nacional, L32 art. 1) [VP] | No [VP] |
| INEC | Parcial (L10 art. 8) [VP] | Sí (L10 art. 47) [VP] | No [VP] | Parcial (infracciones estadísticas, L10) [VP] | Sí (L10 art. 1) [VP] | No [VP] |
| Secretaría APP | Parcial (L93 art. 12.2, 12.4) [VP] | Sí (L93 art. 12.17) [VP] | No [VP] | Parcial (L93 art. 12.10, 12.12) [VP] | Sí (L93 art. 12.16) [VP] | Parcial (L93 art. 5, 12.2) [VP] |
| ASEP | Por confirmar (L26 1996 no leída) [NV] | Por confirmar [NV] | No para aseo (L51 art. 31) [VP] | Por confirmar [NV] | Por confirmar [NV] | No [NV] |
| IDAAN | No [VP por ausencia] | Parcial (cartera de usuarios) [inferencia] | Sí (cobro de tasa de aseo, L51 art. 8) [VP] | No [VP por ausencia] | No [VP por ausencia] | No [VP por ausencia] |

## 4. Síntesis de fortalezas, brechas y necesidades

**Fortalezas del sistema**

- La AAUD reúne todas las piezas legales para un instrumento de tarifa: fijación de tasas, fondo propio en el Banco Nacional, cobro coactivo, cobro en factura eléctrica, sanciones y sistema de información.
- El control de importaciones (Aduanas) y comercio (ACODECO) ya se ejerce para la Ley 187, con certificación técnica de la DGNTI del MICI: una cadena de control replicable para envases y productos REP.
- MiAMBIENTE cuenta con fondos de destino específico, SINIA y jurisdicción coactiva.
- La DGCP tiene mandato explícito de criterios de economía circular desde la Ley 502.
- El sistema financiero tiene Taxonomía (2024) con objetivo de transición a economía circular, Marco de Financiamiento Sostenible soberano (2024) y guía de bonos temáticos de la SMV (2025).
- AMPYME administra un fondo de garantía con base legal.

**Brechas**

- Ninguna institución tiene la función legal de registrar productores REP, aprobar sistemas colectivos, administrar fondos REP o sancionar incumplimientos de metas.
- El reglamento de la Ley 502 y el de la Ley 33 no se localizaron; el Consejo Nacional de EC no tiene evidencia de instalación.
- MEF, ACODECO, Aduanas y la DGCP no integran el Consejo de EC.
- La AAUD arrastra déficit, morosidad de B/.118,8 millones y observaciones de la Contraloría.
- No hay unidad formal de economía circular en MiAMBIENTE.
- Falta información presupuestaria por institución para 2026 y datos de Colón, David, ATP, SNE y SSRP.

**Necesidades de fortalecimiento (a priorizar en la Hoja de Ruta)**

1. Reglamento de la Ley 502 con registro de productores, metas, procedimiento sancionador y designación del ente que recauda y del que fiscaliza.
2. Unidad de economía circular en MiAMBIENTE y subcuenta para EC en el Fondo de Evaluación y Fiscalización o fondo nuevo por ley.
3. Convenios de datos SIGA (Aduanas) y DGNTI (MICI) con MiAMBIENTE.
4. Plan de saneamiento financiero de la AAUD y separación contable de flujos.
5. Criterios de EC por categoría en PanamaCompra.
6. Reporte de cartera alineada con la Taxonomía (SBP, SMV, SSRP) y ventana de garantías AMPYME para emprendimientos circulares.

## 5. Pendientes para entrevistas y solicitudes formales

- MEF: anexo institucional de la ley de presupuesto 2026 y su número exacto (293 o 494), ejecución 2026.
- MiAMBIENTE: organigrama vigente, estado del reglamento de la Ley 502, instalación del Consejo, evaluación del plan de plásticos.
- AAUD: estados financieros auditados, estado del sistema de información de la Ley 33, texto de la Ley 276 de 2021 y su reglamento.
- Aduanas: texto vigente del DL 1 de 2008 y reportes del DE9 art. 10.
- Municipios de Colón y David: modalidad del servicio, tasas, planes municipales.
- SBP: texto del Acuerdo 11-2022 y resultados de la encuesta de riesgos ambientales; SSRP: ley vigente.
- ATP, SNE, MIDA, MINSA, ASEP: leyes orgánicas y funciones aplicables.
