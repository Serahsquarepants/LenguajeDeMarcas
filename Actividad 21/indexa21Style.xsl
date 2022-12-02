<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 21</title>
        </head>
        <body>
            <h1>Ejercicio 21</h1>
            <table border="1">
                <tr>
                    <th>Descripción</th>
                </tr>
                <tr>
                    <th>Fecha</th>
                </tr>
                <tr>
                    <td>dia</td>
                    <td>mes</td>
                    <td>año</td>
                </tr>
                <xsl:for-each select="tabla/descripcion/fecha">
                <tr>
                    <td>
                        <xsl:value-of select="dia"/>
                    </td>
                    <td>
                        <xsl:value-of select="mes"/>
                    </td>  
                    <td>
                        <xsl:value-of select="año"/>
                    </td>    
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>

    </xsl:template>

</xsl:stylesheet>