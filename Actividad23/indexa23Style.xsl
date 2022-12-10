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
                        <xsl:value-of select="facturación/factura/DatosEmpresa/nombre"/>
                        <br/><xsl:value-of select="facturación/factura/DatosEmpresa/calle"/>
                        <br/><xsl:value-of select="facturación/factura/DatosEmpresa/poblacion"/><xsl:value-of select="facturación/factura/DatosEmpresa/codigoPostal"/>
                        <br/>C.I.F.: <xsl:value-of select="facturación/factura/DatosEmpresa/cif"/>
                        <br/>Teléfono: <xsl:value-of select="facturación/factura/DatosEmpresa/telefono"/>
                        <br/>Fax: <xsl:value-of select="facturación/factura/DatosEmpresa/fax"/>
                    </td>
                    <td colspan="3" style="padding:'10px'">
                        <br/>
                        <br/>
                        Fecha: <xsl:value-of select="facturación/factura/DatosFacturaEmpresa/fecha"/>
                        <br/>Pedido: <xsl:value-of select="facturación/factura/DatosFacturaEmpresa/numeroPedido"/>
                        <br/>Forma de Pago: <xsl:value-of select="facturación/factura/DatosFacturaEmpresa/formaPago"/>
                    </td>
                </tr>
                <tr>
                    <th colspan="6">Datos CLIENTE</th>
                </tr>
                <tr>
                    <td colspan="6">
                        nº Cliente: <xsl:value-of select="facturación/factura/DatosCliente/numeroCliente"/>
                        <br/>Nombre: <xsl:value-of select="facturación/factura/DatosCliente/nombre"/>
                        <br/>Dirección de envío: <xsl:value-of select="facturación/factura/DatosCliente/direcciónEnvio"/>
                        <br/>Población: <xsl:value-of select="facturación/factura/DatosCliente/poblacion"/>
                        <br/>Código Postal: <xsl:value-of select="facturación/factura/DatosCliente/codigoPostal"/>
                        <br/>Provincia: <xsl:value-of select="facturación/factura/DatosCliente/provincia"/>
                    </td>
                </tr>
                <tr>
                    <th colspan="6">Datos FACTURA</th>
                </tr>
                <tr> <!--Estáticos-->
                    <th style="text-align:right">REF.</th>
                    <th style="text-align:right">Descripción</th>
                    <th style="text-align:right">Cant.</th>
                    <th style="text-align:right">Precio</th>
                    <th style="text-align:right">I.V.A.</th>
                    <th style="text-align:right">Importe</th>
                </tr>
                <xsl:for-each select="facturación/factura/DatosFacturaCliente">
                    <tr>
                        <td style="text-align:right"><xsl:value-of select="ref"/></td>
                        <td style="text-align:right"><xsl:value-of select="descripcion"/></td>
                        <td style="text-align:right"><xsl:value-of select="cantidad"/></td>
                        <td style="text-align:right"><xsl:value-of select="precio"/></td>
                        <td style="text-align:right"><xsl:value-of select="iva"/></td>
                        <td style="text-align:right"><xsl:value-of select="importe"/></td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <th colspan="2">Base imponible</th>
                    <th colspan="2">% I.V.A.</th>
                    <th colspan="2">Cuota I.V.A.</th>
                </tr>
                <br/>
                <tr>
                    <td colspan="2"><xsl:value-of select="facturación/factura/pago/baseImponible"/></td>
                    <td colspan="2"><xsl:value-of select="facturación/factura/pago/iva"/></td>
                    <td colspan="2"><xsl:value-of select="facturación/factura/pago/cuotaIva"/></td>
                </tr>
                <tr>
                    <th colspan="6" style="text-align:center">TOTAL FACTURA: <xsl:value-of select="facturación/factura/pago/totalFactura"/></th>
                </tr>
            </table>
        </body> 
    </html>
</xsl:template>

</xsl:stylesheet>