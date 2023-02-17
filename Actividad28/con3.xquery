for $libro in doc("libreria.xml")/bookstore/book[price<=30]
return $libro