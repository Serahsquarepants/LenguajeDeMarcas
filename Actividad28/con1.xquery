for $libro in doc("libreria.xml")/bookstore
return <titulo>data($libro/book/title)</titulo>