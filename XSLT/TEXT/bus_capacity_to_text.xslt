<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        <xsl:for-each select="transport/routes/route">
            Route: <xsl:value-of select="name"/> - Bus Model: <xsl:value-of select="bus/model"/> - Capacity: <xsl:value-of select="bus/seats"/> seats&#10;
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
