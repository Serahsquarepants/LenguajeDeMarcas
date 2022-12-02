<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 22</title>
            </head>
            <body>
                <h1 style="text-align: center">Ejercicio 22</h1>
                <table border="2" style="text-align:justify">
                    <tr>
                        <th colspan="6" style="text-align:center; padding:'10px'">CDs EN OFERTA</th>
                    </tr>
                    <tr>
                        <th style="padding: 5px">Título</th>
                        <th style="padding: 5px">Artista</th>
                        <th style="padding: 5px">País</th>
                        <th style="padding: 5px">Compañia discográfica</th>
                        <th style="padding: 5px">Precio</th>
                        <th style="padding: 5px">Año de publicación</th>
                    </tr>
                    <xsl:for-each select="CDsOferta/CD">
                    <tr>
                        <td style="padding: 5px"><xsl:value-of select="título"/></td>
                 
                        <td style="padding: 5px"><xsl:value-of select="artista"/></td>
                 
                        <td style="padding: 5px"><xsl:value-of select="pais"/></td>
                   
                        <td style="padding: 5px"><xsl:value-of select="compañía"/></td>
                
                        <td style="padding: 5px"><xsl:value-of select="precio"/></td>
        
                        <td style="padding: 5px"><xsl:value-of select="año"/></td>
                    </tr>    
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>