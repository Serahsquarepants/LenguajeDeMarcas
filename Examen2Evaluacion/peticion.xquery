for $trabajador in doc("consulta.xml")/consult/servicio/empleado/trabajador
    let $empleado := $trabajador/..
    let $tipo := $empleado/../tipo

for $dia in $empleado/../dias_disponibles/dia
    for $hora in $empleado/../horas/hora
        return concat(data($trabajador), ' - ' ,data($tipo), ' - ' ,data($dia), ' - ', data($hora))




