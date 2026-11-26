-- Ajustes para la salida pptx de las presentaciones (no afecta revealjs)
--
-- El escritor pptx de pandoc parte en varias diapositivas las que mezclan
-- tipos de contenido. Este filtro reacomoda cada diapositiva para que quede
-- en una sola:
--
-- 1. Con columnas: el texto anterior a las columnas entra al inicio de la
--    primera columna y las notas ::: aside al final de la última.
-- 2. Con un gráfico: el texto y las notas ::: aside pasan antes del gráfico,
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
      salida:insert(columnas)
    else
      salida:extend(antes); salida:insert(columnas); salida:extend(resto); salida:extend(asides)
    end
  else
    -- Con un gráfico, todo el texto (incluidas las notas) va antes de él
    local texto, graficos = pandoc.List(), pandoc.List()
    for _, b in ipairs(antes) do
      if tiene_imagen(b) then graficos:insert(b) else texto:insert(b) end
    end
    salida:extend(texto)
    salida:extend(asides)
    salida:extend(graficos)
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
