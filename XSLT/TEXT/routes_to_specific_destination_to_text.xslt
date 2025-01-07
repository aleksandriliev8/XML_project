<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        <xsl:for-each select="transport/routes/route[destination='Plovdiv']">
            Route to Plovdiv: <xsl:value-of select="name"/> - Departure: <xsl:value-of select="departureTime"/>&#10;
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
