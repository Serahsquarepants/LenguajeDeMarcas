for $libro in doc("index.xml")/bib/libro
where $libro/empty(autor) 
return concat(data($libro/@anyo), "->" ,data($libro/titulo))