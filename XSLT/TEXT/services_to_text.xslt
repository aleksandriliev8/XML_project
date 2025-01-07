<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        <xsl:for-each select="transport/stations/station">
            Station: <xsl:value-of select="name"/>&#10;
            Services:&#10;
            <xsl:for-each select="services/service">
                - <xsl:value-of select="."/>&#10;
            </xsl:for-each>
            &#10;
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
