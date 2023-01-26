for $libro in doc("index.xml")/bib/libro
where $libro/count(autor) >=2
return <libro> {data($libro/@anyo)} -> {data($libro/titulo)} </libro>