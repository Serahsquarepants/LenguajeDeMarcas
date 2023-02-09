for $baile in doc("academia.xml")/escuela/baile
let $sala := $baile/sala
let $precio := $baile/precio/precio_clase
where $sala = 1 and $precio < 35
return $baile