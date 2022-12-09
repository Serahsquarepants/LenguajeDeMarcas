<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Actividad 23</title>
        </head>  
        <body>
            <table border="2" style="text-align:justify">
                <tr>
                    <th colspan="6" style="text-align:center">Factura nº <xsl:value-of select="facturación/factura/@numero"/></th>
                </tr>
                <tr>
                    <td>
                        <p><xsl:value-of select="facturación/factura/DatosEmpresa/nombre"/></p>
                        <p><xsl:value-of select="facturación/factura/DatosEmpresa/calle"/></p>
                        <p><xsl:value-of select="facturación/factura/DatosEmpresa/poblacion"/>  <xsl:value-of select="facturación/factura/DatosEmpresa/codigoPostal"/></p>
                        <p>C.I.F.: <xsl:value-of select="facturación/factura/DatosEmpresa/cif"/></p>
                        <p>Teléfono: <xsl:value-of select="facturación/factura/DatosEmpresa/telefono"/></p>
                        <p>Fax: <xsl:value-of select="facturación/factura/DatosEmpresa/fax"/></p>
                    </td>
                    <td>

                    </td>
                </tr>
            </table>
        </body> 
    </html>
</xsl:template>

</xsl:stylesheet>