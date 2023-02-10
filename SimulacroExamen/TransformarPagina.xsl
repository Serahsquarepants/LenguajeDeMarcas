<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Simulacro Examen</title>
            <style>
                td,th {
                    border: 1px solid pink;  
                    text-align: center;
                    padding: 10px;
                    background-color: #6699ff;
                }  
            </style>
        </head>  
        <body style="background: url(gato.gif) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
            <div style="display: flex; justify-content: center; height: 200px;">
                <div style="width: 50%; height: 50px"> 
                    <h1 style="text-align:center; color: #ff99ff"><u>Academia Solsticio de Verano</u></h1>
                    <table>
                        <tr>
                            <th>Baile</th>
                            <th>Precio</th>
                            <th>Plazas disponibles</th>
                            <th>Inicio</th>
                            <th>Fin</th>
                            <th>Profesor</th>
                            <th>Sala</th>
                        </tr>
                        <xsl:for-each select="escuela/baile">
                            <tr>
                                <td><xsl:value-of select="nombre_baile"/></td>
                                <td><xsl:value-of select="precio/precio_clase"/><xsl:value-of select="precio/moneda"/></td>
                                <td><xsl:value-of select="numero_plazas"/></td>
                                <td><xsl:value-of select="fecha_inicio"/></td>
                                <td><xsl:value-of select="fecha_fin"/></td>
                                <td><xsl:value-of select="nombre_profesor"/></td>
                                <td><xsl:value-of select="sala"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>    
            </div>
        </body>
    </html>    

</xsl:template>

</xsl:stylesheet>