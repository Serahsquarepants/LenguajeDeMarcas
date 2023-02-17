for $libro in doc("libreria.xml")/bookstore/book
where data($libro/year) = 2005
return <lib2005>{$libro/title} {$libro/author}</lib2005>