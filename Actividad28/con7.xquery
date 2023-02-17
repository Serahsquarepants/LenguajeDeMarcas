for $libro in doc("libreria.xml")/bookstore/book
order by $libro/@category,$libro/title
return $libro