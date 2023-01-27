for $libro in doc("index.xml")/bib/libro
where $libro/empty(autor) 
return <libro> {data($libro/@anyo)} -> {data($libro/titulo)} </libro>