<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <routes>
            <xsl:for-each select="transport/routes/route">
                <route>
                    <name><xsl:value-of select="name"/></name>
                    <price><xsl:value-of select="price"/></price>
                </route>
            </xsl:for-each>
        </routes>
    </xsl:template>
</xsl:stylesheet>
