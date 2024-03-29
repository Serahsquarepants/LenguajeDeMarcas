<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Examen 2 Evaluación</title>
                <link rel="stylesheet" type="text/css" href="estilo.css"/>
            </head>
            <body style="background: url(gato.gif) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
                <h1><u>Consulta Beltraneja de las Flores</u></h1>
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
                <xsl:for-each select="consult/servicio">
                        <tr>
                            <td><xsl:value-of select="tipo"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="bonos/bono1"/></td>
                            <td><xsl:value-of select="bonos/bono2"/></td>
                            <td><xsl:value-of select="plazas_disponibles"/></td>
                            <td>
                                <xsl:for-each select="dias_disponibles/dia">
                                    <xsl:value-of select="." />
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="horas/hora">
                                    <xsl:value-of select="." />
                                    <xsl:if test="position() != last()"> - </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="empleado/trabajador">
                                    <xsl:value-of select="." />
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </td>
                        </tr>
                </xsl:for-each>
            </table>
            </body>
        </html>    
    </xsl:template>
</xsl:stylesheet>