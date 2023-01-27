for $libro in doc("index.xml")/bib/libro
return <libro>Titulo: {data($libro/titulo)}; Nº Autores: {count($libro/autor)}</libro>