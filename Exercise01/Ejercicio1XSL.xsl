<?xml version="1.0"?>

<!--
    Document   : Ejercicio1XSL.xsl
    Created on : 10 de mayo de 2021, 9:10
    Author     : dawmi
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            Lenguaje de Marcas Curso 2018 -2019
            <head>
                <title>Expediente académico</title>
            </head>
            <body>
                <h1>Expediente académico</h1>
                <table>
                    <tr>
                        <th>Asignatura</th>
                        <th>Nota</th>
                    </tr>
                    <xsl:for-each select="expediente/asignatura">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="nota"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>