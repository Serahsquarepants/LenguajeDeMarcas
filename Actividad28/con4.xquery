for $libro in doc("libreria.xml")/bookstore/book
where data($libro/price) <= 30
return data($libro/title)