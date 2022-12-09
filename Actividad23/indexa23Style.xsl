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
                    <th colspan="6">Factura nº <xsl:value-of select="facturación/factura/@numero"/></th>
                </tr>
                <tr>
                    <td>
                        <p><xsl:value-of select="facturación/factura/DatosEmpresa/nombre"/></p>
                    </td>
                    <td>

                    </td>
                </tr>
            </table>
        </body> 
    </html>
</xsl:template>

</xsl:stylesheet>