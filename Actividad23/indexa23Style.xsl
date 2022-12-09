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
                    <th colspan="6" style="text-align:center; padding:'10px'">Factura nº <xsl:value-of select="facturación/factura/@numero"/></th>
                </tr>
                <tr>
                    <td colspan="3" style="padding:'10px'">
                        <p><xsl:value-of select="facturación/factura/DatosEmpresa/nombre"/></p>
                        <p><xsl:value-of select="facturación/factura/DatosEmpresa/calle"/></p>
                        <p><xsl:value-of select="facturación/factura/DatosEmpresa/poblacion"/>-<xsl:value-of select="facturación/factura/DatosEmpresa/codigoPostal"/></p>
                        <p>C.I.F.: <xsl:value-of select="facturación/factura/DatosEmpresa/cif"/></p>
                        <p>Teléfono: <xsl:value-of select="facturación/factura/DatosEmpresa/telefono"/></p>
                        <p>Fax: <xsl:value-of select="facturación/factura/DatosEmpresa/fax"/></p>
                    </td>
                    <td colspan="3" style="padding:'10px'">
                        <br/>
                        <br/>
                        <p>Fecha: <xsl:value-of select="facturación/factura/DatosFacturaEmpresa/fecha"/></p>
                        <p>Pedido: <xsl:value-of select="facturación/factura/DatosFacturaEmpresa/numeroPedido"/></p>
                        <p>Forma de Pago: <xsl:value-of select="facturación/factura/DatosFacturaEmpresa/formaPago"/></p>
                    </td>
                </tr>
                <tr>
                    <th>Datos CLIENTE</th>
                </tr>
                <tr>
                    <td>
                        <p>nº Cliente: <xsl:value-of select="facturación/factura/DatosCliente/numeroCliente"/></p>
                        <p>Nombre: <xsl:value-of select="facturación/factura/DatosCliente/nombre"/></p>
                        <p>Dirección de envío: <xsl:value-of select="facturación/factura/DatosCliente/direcciónEnvio"/></p>
                        <p>Población: <xsl:value-of select="facturación/factura/DatosCliente/poblacion"/></p>
                        <p>Código Postal: <xsl:value-of select="facturación/factura/DatosCliente/codigoPostal"/></p>
                        <p>Provincia: <xsl:value-of select="facturación/factura/DatosCliente/provincia"/></p>
                    </td>
                </tr>
            </table>
        </body> 
    </html>
</xsl:template>

</xsl:stylesheet>