<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Actividad 23</title>
        </head>  
        <body>
            <table colspan="6" border="2" style="text-align:justify">
                <tr>
                    <th>Factura nº <xsl:value-of select="facturación/factura/@numero"/></th>
                </tr>
            </table>
        </body> 
    </html>
</xsl:template>

</xsl:stylesheet>