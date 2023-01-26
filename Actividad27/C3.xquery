for $libro in doc("index.xml")/bib/libro
where $libro/precio > 65.95
return data($libro/titulo)