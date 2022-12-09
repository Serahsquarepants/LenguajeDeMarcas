<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Actividad 23</title>
        </head>  
        <body>
                <table style="border=2px"> <!--Tabla principal-->
                    <tr>
                        <th colspan="6" style="text-align: center">
                            FACTURA nº <xsl:value-of select="@numero"/>
                        </th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <p><xsl:value-of select="factura/DatosEmpresa/nombre"/></p>
                            <p><xsl:value-of select="factura/DatosEmpresa/calle"/></p>
                            <p><xsl:value-of select="factura/DatosEmpresa/poblacion"/></p>
                            <p><xsl:value-of select="facturaDatosEmpresa/calle"/>  <xsl:value-of select="DatosEmpresa/codigoPostal"/></p>
                            <p>C.I.F.: <xsl:value-of select="factura/DatosEmpresa/cif"/></p>
                            <p>Teléfono: <xsl:value-of select="factura/DatosEmpresa/telefono"/></p>
                            <p>Fax: <xsl:value-of select="factura/DatosEmpresa/fax"/></p>
                        </td>
                    </tr>
                </table>
        </body> 
    </html>
</xsl:template>

</xsl:stylesheet>