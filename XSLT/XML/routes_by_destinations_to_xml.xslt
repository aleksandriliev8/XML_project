<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <routesByDestination>
            <xsl:for-each select="transport/routes/route">
                <destination name="{destination}">
                    <route>
                        <name><xsl:value-of select="name"/></name>
                        <departureTime><xsl:value-of select="departureTime"/></departureTime>
                    </route>
                </destination>
            </xsl:for-each>
        </routesByDestination>
    </xsl:template>
</xsl:stylesheet>
