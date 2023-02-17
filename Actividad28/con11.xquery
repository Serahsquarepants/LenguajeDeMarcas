for $libro in doc("libreria.xml")/bookstore/book
let $precioIva := $libro/price + $libro/price * 0.21
order by $precioIva
return <libro>
Título: {data($libro/title)}
Precio: {data($libro/price)}
Precio con Iva: {$precioIva}
</libro>