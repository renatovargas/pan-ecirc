-- Ajustes para la salida pptx de las presentaciones (no afecta revealjs)
--
-- El escritor pptx de pandoc parte en varias diapositivas las que mezclan
-- tipos de contenido. Este filtro reacomoda cada diapositiva para que quede
-- en una sola:
--
-- 1. Con columnas: el texto anterior a las columnas entra al inicio de la
--    primera columna y las notas ::: aside al final de la última.
-- 2. Con un gráfico o un cuadro: el texto y las notas ::: aside van antes,
--    y pandoc usa el layout "Content with Caption".
-- 3. Los encabezados ### dentro de una diapositiva pasan a texto en negrita.
-- 4. El texto bajo un encabezado de sección (#) pasa a notas del orador,
--    porque pandoc lo pondría en una diapositiva sin título.

local function es_div(b, clase)
  return b.t == "Div" and b.classes:includes(clase)
end

local function tiene_imagen(b)
  local hay = false
  pandoc.walk_block(b, { Image = function(i) hay = true; return i end })
  return hay
end

-- Encabezados de nivel 3 o más pasan a un párrafo en negrita
local function aplanar_encabezados(bloques)
  return pandoc.walk_block(pandoc.Div(bloques), {
    Header = function(h)
      if h.level >= 3 then return pandoc.Para({ pandoc.Strong(h.content) }) end
    end
  }).content
end

-- Posición de los cuadros de flextable. flextable los coloca en una posición
-- fija (1 y 2 pulgadas) y el texto de la diapositiva corre desde arriba del
-- área de contenido, así que se enciman. Se estima la altura del texto del
-- mismo contenedor y el cuadro se coloca debajo, alineado con el margen.
local EMU = 914400
local Y_CONTENIDO = 1.31   -- inicio del área de contenido de la plantilla (pulgadas)
local ALTO_LINEA = 0.27    -- texto de 16 puntos
local ESPACIO_PARRAFO = 0.07

local function es_cuadro(b)
  return b.t == "RawBlock" and b.format:match("openxml") and b.text:match("<p:graphicFrame")
end

local function contiene_cuadro(b)
  if es_cuadro(b) then return true end
  local hay = false
  if b.t == "Div" then
    pandoc.walk_block(b, { RawBlock = function(r) if es_cuadro(r) then hay = true end; return r end })
  end
  return hay
end

local function alto_texto(bloques, caracteres_linea)
  local alto = 0
  -- Las citas todavía no se han procesado: "[@clave]" ocupa menos que
  -- "(Asamblea Nacional de Panamá, 2025)", así que cada una suma 35 caracteres
  local function largo(b)
    local n = utf8.len(pandoc.utils.stringify(b))
    pandoc.walk_block(pandoc.Div({ b }), { Cite = function(c) n = n + 35 * #c.citations; return c end })
    return n
  end
  local function lineas(n)
    return math.max(1, math.ceil(n / caracteres_linea))
  end
  local function recorrer(bs)
    for _, b in ipairs(bs) do
      if b.t == "Div" then
        recorrer(b.content)
      elseif b.t == "BulletList" or b.t == "OrderedList" then
        for _, item in ipairs(b.content) do
          alto = alto + lineas(largo(pandoc.Div(item))) * ALTO_LINEA + ESPACIO_PARRAFO
        end
      elseif b.t == "Para" or b.t == "Plain" then
        local n = largo(b)
        if n > 0 then
          alto = alto + lineas(n) * ALTO_LINEA + ESPACIO_PARRAFO
        end
      end
    end
  end
  recorrer(bloques)
  return alto
end

local function posicionar(bloques, x_pulgadas, caracteres_linea)
  local y = Y_CONTENIDO + 0.1 + alto_texto(bloques, caracteres_linea)
  local x_emu, y_emu = math.floor(x_pulgadas * EMU), math.floor(y * EMU)
  return pandoc.walk_block(pandoc.Div(bloques), {
    RawBlock = function(b)
      if es_cuadro(b) then
        b.text = b.text:gsub('<a:off x="%d+" y="%d+"/>',
          string.format('<a:off x="%d" y="%d"/>', x_emu, y_emu), 1)
        return b
      end
    end
  }).content
end

-- Reacomoda el contenido de una diapositiva (bloques después del título)
local function reacomodar(cuerpo)
  cuerpo = aplanar_encabezados(cuerpo)

  local notas, asides, antes, columnas, resto = pandoc.List(), pandoc.List(), pandoc.List(), nil, pandoc.List()
  for _, b in ipairs(cuerpo) do
    if es_div(b, "notes") then
      notas:insert(b)
    elseif es_div(b, "aside") then
      asides:extend(b.content)
    elseif es_div(b, "columns") and columnas == nil then
      columnas = b
    elseif columnas == nil then
      antes:insert(b)
    else
      resto:insert(b)
    end
  end

  local salida = pandoc.List()
  if columnas ~= nil then
    local cols = pandoc.List()
    for _, c in ipairs(columnas.content) do
      if es_div(c, "column") then cols:insert(c) end
    end
    if #cols > 0 then
      local primera, ultima = cols[1], cols[#cols]
      local nuevo = pandoc.List()
      nuevo:extend(antes)
      nuevo:extend(primera.content)
      primera.content = nuevo
      ultima.content:extend(resto)
      ultima.content:extend(asides)
      -- Margen izquierdo de cada columna del layout "Two Content"
      local x_col = { 0.5, 5.08 }
      for k, c in ipairs(cols) do
        c.content = posicionar(c.content, x_col[math.min(k, 2)], 46)
      end
      salida:insert(columnas)
    else
      salida:extend(antes); salida:insert(columnas); salida:extend(resto); salida:extend(asides)
    end
  else
    -- Con un gráfico o un cuadro, todo el texto (incluidas las notas) va
    -- antes; así pandoc usa un solo cuadro de texto y no dos encimados
    local texto, graficos = pandoc.List(), pandoc.List()
    for _, b in ipairs(antes) do
      if tiene_imagen(b) or contiene_cuadro(b) then graficos:insert(b) else texto:insert(b) end
    end
    salida:extend(texto)
    salida:extend(asides)
    salida:extend(graficos)
    salida = posicionar(salida, 0.5, 84)
  end
  salida:extend(notas)
  return salida
end

function Pandoc(doc)
  if not FORMAT:match("pptx") then return nil end
  local salida = pandoc.List()
  local bloques = doc.blocks
  local i = 1
  -- Bloques antes del primer encabezado (raros en estas presentaciones)
  while i <= #bloques and not (bloques[i].t == "Header" and bloques[i].level <= 2) do
    salida:insert(bloques[i]); i = i + 1
  end
  while i <= #bloques do
    local h = bloques[i]
    local cuerpo = pandoc.List()
    local j = i + 1
    while j <= #bloques and not (bloques[j].t == "Header" and bloques[j].level <= 2) do
      cuerpo:insert(bloques[j]); j = j + 1
    end
    salida:insert(h)
    if h.level == 1 then
      if #cuerpo > 0 then salida:insert(pandoc.Div(cuerpo, pandoc.Attr("", { "notes" }))) end
    else
      salida:extend(reacomodar(cuerpo))
    end
    i = j
  end
  doc.blocks = salida
  return doc
end
