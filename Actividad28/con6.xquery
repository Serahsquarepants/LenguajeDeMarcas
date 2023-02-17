for $libro in doc("libreria.xml")/bookstore/book
let $year := $libro/year
let $title := $libro/title 
let $author := $libro/author
order by $year
return <publicacion>Título: {data($title)}; Autor: {data($author)}; Año: {data($year)}</publicacion>