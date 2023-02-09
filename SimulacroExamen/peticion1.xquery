for $baile in doc("academia.xml")/escuela/baile
let $profesor := $baile/nombre_profesor
let $clase := $baile/nombre_baile
let $precio := $baile/precio/precio_clase
let $unidad := $baile/precio/moneda
order by $profesor
return <datos> Profesor: {data($profesor)}; Clase: {data($clase)}; Precio: {data($precio)} en {data($unidad)}</datos>
