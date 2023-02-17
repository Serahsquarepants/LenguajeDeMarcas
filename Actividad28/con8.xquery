for $libro in doc("libreria.xml")/bookstore
let $total := count($libro/book)
return <total>{$total}</total>