for $libro in doc("index.xml")/bib/libro
return <result>Titulo: {data($libro/titulo)}; Nombre: {data($libro/autor/nombre)}; Apellido: {data($libro/autor/apellido)} </result>
