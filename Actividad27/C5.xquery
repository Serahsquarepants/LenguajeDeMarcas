for $libro in doc("index.xml")/bib/libro
where $libro/editorial = "Addison-Wesley" 
where $libro/@anyo > 1992
return concat(data($libro/@anyo), "->" ,data($libro/titulo))