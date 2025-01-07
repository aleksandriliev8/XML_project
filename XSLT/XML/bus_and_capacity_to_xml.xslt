<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <buses>
            <xsl:for-each select="transport/routes/route/bus">
                <bus>
                    <model><xsl:value-of select="model"/></model>
                    <capacity><xsl:value-of select="seats"/></capacity>
                </bus>
            </xsl:for-each>
        </buses>
    </xsl:template>
</xsl:stylesheet>
