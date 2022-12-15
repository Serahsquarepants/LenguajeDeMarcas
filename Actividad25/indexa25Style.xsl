<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
    <xsl:template match="/">
        facturación:
        <xsl:for-each select="facturación/factura">
            DatosEmpresa:
                nombre: <xsl:value-of select="DatosEmpresa/nombre"/>
                calle: <xsl:value-of select="DatosEmpresa/calle"/>
                poblacion: <xsl:value-of select="DatosEmpresa/poblacion"/>
                codigoPostal: <xsl:value-of select="DatosEmpresa/codigoPostal"/>
                cif: <xsl:value-of select="DatosEmpresa/cif"/>
                telefono: <xsl:value-of select="DatosEmpresa/telefono"/>
                fax: <xsl:value-of select="DatosEmpresa/fax"/>
            DatosFacturaEmpresa:
                fecha: <xsl:value-of select="DatosFacturaEmpresa/fecha"/>
                numeroPedido:<xsl:value-of select="DatosFacturaEmpresa/nmeroPedido"/>
                formaPago: <xsl:value-of select="DatosFacturaEmpresa/formaPago"/>
            DatosCliente:
                numeroCliente: <xsl:value-of select="DatosCliente/numeroCliente"/>
                nombre: <xsl:value-of select="DatosCliente/nombre"/>
                direcciónEnvio: <xsl:value-of select="DatosCliente/direcciónEnvio"/>
                poblacion: <xsl:value-of select="DatosCliente/poblacion"/>
                codigoPostal: <xsl:value-of select="DatosCliente/codigoPostal"/>
                provincia: <xsl:value-of select="DatosCliente/provincia"/>
            DatosFacturaCliente:
            <xsl:for-each select="DatosFacturaCliente">
                - ref: <xsl:value-of select="ref"/>
                    descripcion: <xsl:value-of select="descripcion"/>
                    cantidad: <xsl:value-of select="cantidad"/>
                    precio: <xsl:value-of select="precio"/>
                    iva: <xsl:value-of select="iva"/>
                    importe: <xsl:value-of select="importe"/>
            </xsl:for-each>    
            pago:
                baseImponible: <xsl:value-of select="pago/baseImponible"/>
                iva: <xsl:value-of select="pago/iva"/>
                cuotaIva: <xsl:value-of select="pago/cuotaIva"/>
                totalFactura: <xsl:value-of select="pago/totalFactura"/>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>