<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : XSLT.xsl
    Created on : 10 de mayo de 2021, 9:41
    Author     : dawmi
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="html"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>
                   Ejercicio 2 XSLT 
                </title>
            </head>
            <body>
                <h1>Matricula academica</h1>
                <table>
                    <tr>
                        <th>DNI</th>
                        <th>Nombre</th>
                        <th>Titulacion</th>
                        <th>Curso Academico</th>
                    </tr>
                    <xsl:for-each select="matricula/personal">
                        <tr>
                            <td>
                                <xsl:value-of select="dni/@numero"></xsl:value-of>
                            </td>
                            <td>
                                 <xsl:value-of select="nombre"></xsl:value-of>
                            </td>
                            <td>   
                                 <xsl:value-of select="titulacion"></xsl:value-of>
                           </td>
                           <td>
                               <xsl:value-of select="curso_academico"></xsl:value-of>
                           </td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
