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
                        <th colspan="6">CDs EN OFERTA</th>
                    </tr>
                    <tr>
                        <th>Título</th>
                        <th>Artista</th>
                        <th>País</th>
                        <th>Compañia discográfica</th>
                        <th>Precio</th>
                        <th>Año de publicación</th>
                    </tr>
                    <xsl:for-each select="CDsOferta/CD">
                        <xsl:value-of select="título"/>
                        <xsl:value-of select="artista"/>
                        <xsl:value-of select="pais"/>
                        <xsl:value-of select="compañía"/>
                        <xsl:value-of select="precio"/>
                        <xsl:value-of select="año"/>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>