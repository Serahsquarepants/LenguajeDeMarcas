for $libro in doc("libreria.xml")/bookstore/book
where data($libro/price) <= 30
return <libro>Título: {data($libro/title)}; Precio: {data($libro/price)}</libro>