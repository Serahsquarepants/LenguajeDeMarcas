for $libro in doc("index.xml")/bib/libro
order by $libro/@anyo
return concat(data($libro/@anyo), "->" ,data($libro/titulo))
 