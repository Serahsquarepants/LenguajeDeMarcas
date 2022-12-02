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
            <table border="2" style="text-align:center">
                <tr>
                    <th colspan="3" rowspan="2" style="padding: 10px">Descripción</th>
                    <th colspan="3" style="padding: 5px">Fecha</th>
                </tr>
                <tr>
                    <td style="padding: 5px">dia</td>
                    <td style="padding: 5px">mes</td>
                    <td style="padding: 5px">año</td>
                </tr>
                <xsl:for-each select="tabla/descripcion">
                <tr>
                    <td colspan="3" style="padding: 5px">
                        <xsl:value-of select="@hecho"/>
                    </td>
                    <xsl:for-each select="fecha">
                        <td style="padding: 5px">
                            <xsl:value-of select="dia"/>
                        </td>
                        <td style="padding: 5px">
                            <xsl:value-of select="mes"/>
                        </td>  
                        <td style="padding: 5px"> 
                            <xsl:value-of select="año"/>
                        </td>    
                    </xsl:for-each>    
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>

    </xsl:template>

</xsl:stylesheet>