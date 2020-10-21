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

        <xsl:template match="alpino_ds">
            <table border="1">
                <tr><th colspan="2"><xsl:value-of select="sentence"/></th></tr>
                <tr bgcolor="#3B5998">
                    <th> <xsl:text>Woord</xsl:text> </th>
                    <th> <xsl:text>Lemma</xsl:text> </th>
                    <th> <xsl:text>Postag</xsl:text> </th>
                </tr>
                <xsl:for-each select="//node[@word and @lemma and @postag]" >
                    <tr>
                        <td><xsl:value-of select="@word"/></td>
                        <td><xsl:value-of select="@lemma"/></td>
                        <td><xsl:value-of select="@postag"/></td>
                    </tr>
                </xsl:for-each>
            </table>
    </xsl:template>



</xsl:stylesheet>

