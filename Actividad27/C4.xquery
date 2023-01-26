for $libro in doc("index.xml")/bib/libro
where $libro/@anyo < 2000
return data($libro/titulo)