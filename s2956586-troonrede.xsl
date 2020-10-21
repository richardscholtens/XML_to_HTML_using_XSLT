<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body style="font-family: Arial; font-size: 14px; padding:10px;">
                <p>
                    <xsl:apply-templates/>
                </p>
            </body>
        </html>
        </xsl:template>

        <xsl:template match="troonrede">
            <table border="1">
                <tr><th colspan="3"><xsl:value-of select="hoofd"/></th></tr>

                <tr bgcolor="#3B5998">
                    <th> <xsl:text>Nummer</xsl:text> </th>
                    <th colspan="2"> <xsl:text>Alinea</xsl:text> </th>

                </tr>                

                <xsl:for-each select="alinea" >
                    <tr>
                        <td><xsl:number count="alinea"/></td>
                        <td><xsl:value-of select="@alinea"/></td>
                        <xsl:value-of select="."/>
                        <xsl:if test="position() != last()">, </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
    </xsl:template>
</xsl:stylesheet>
