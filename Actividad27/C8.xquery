for $apellido in distinct-values(doc("index.xml")/bib/libro/autor/apellido)
order by $apellido
return data($apellido)
