for $libro in doc("libreria.xml")/bookstore/book
let $titulos := (
    for $book in doc("libreria.xml")/bookstore/book/title
    return <titulo>{$libro}</titulo>
)
return <libro>{$titulos} ; <total>{count($libro)}</total></libro>