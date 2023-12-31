<?xml version="1.0" encoding="ISO-8859-1"?>

<!--
    Document   : Ejercicio2.xsl
    Created on : 10 de mayo de 2021, 9:55
    Author     : ANA
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="es">
            <head>
                <title>Ejercicio2.xsl</title>
                <style>
                    .rojo {
                        background-color:red;
                    }
                    table, th, td, tr{
                        border: 1px solid black;
                        border-collapse: collapse;
                        padding:5px;
                        text-align:center;
                    }
                </style>
                
            </head>
            <body>
                <table>
                    <tr>
                        <th>DNI</th>
                        <th>Nombre</th>
                        <th>Titulación</th>
                        <th>Curso Académico</th>
                        <th>Domicilio</th>
                    </tr>
                    <xsl:for-each select="matricula/personal">
                        <xsl:sort select="nombre" />
                       
                        <tr>
                            <td>
                                <xsl:value-of select="dni/@numero"/>
                            </td>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="titulacion"/>
                            </td>
                     
                            <xsl:choose>
                                <xsl:when test = "curso_academico = '2016/2017'">
                                    <td class="rojo">
                                        <xsl:value-of select="curso_academico"/>
                                    </td> 
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="curso_academico"/>
                                    </td> 
                                </xsl:otherwise>
                            </xsl:choose>
                 
                            <td>
                                <ul>
                                    <xsl:for-each select="domicilios/domicilio" >
                                        <li>
                                            <xsl:value-of select="@tipo" /> 
                                            <xsl:value-of select="nombre" />
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <p> 
                    <xsl:value-of select="pago/tipoMatricula" />
                </p>
                <p>
                    <xsl:value-of select="matricula/pago/precio" /> -
                    <xsl:value-of select="matricula/pago/precio/@moneda" /> 
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
