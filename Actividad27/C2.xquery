for $libro in doc("index.xml")/bib/libro
order by $libro/@anyo
return <libro>{data($libro/@anyo)} -&gt; {data($libro/titulo)}</libro>
 