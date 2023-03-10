<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Examen 2 Evaluación</title>
            </head>
            <body>
                <xsl:for-each select="consult/servicio">
                    <table border="solid:black">
                        <tr>
                            <th>Tipo</th>
                            <th>Precio</th>
                            <th>Bono 5 clases</th>
                            <th>Bono 10 clases</th>
                            <th>Plazas Disponibles</th>
                            <th>Días</th>
                            <th>Horario</th>
                            <th>Instructor</th>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="tipo"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="bonos/bono1"/></td>
                            <td><xsl:value-of select="bonos/bono2"/></td>
                            <td><xsl:value-of select="plazas_disponibles"/></td>
                            <td>
                                <xsl:for-each select="dias_disponibles/dia">
                                    <xsl:value-of select="dia"/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="horas/hora">
                                    <xsl:value-of select="hora"/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="empleado/trabajador">
                                    <xsl:value-of select="trabajador"/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>    
    </xsl:template>
</xsl:stylesheet>