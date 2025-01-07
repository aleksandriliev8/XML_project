<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <stations>
            <xsl:for-each select="transport/stations/station">
                <station>
                    <name><xsl:value-of select="name"/></name>
                    <services>
                        <xsl:for-each select="services/service">
                            <service><xsl:value-of select="."/></service>
                        </xsl:for-each>
                    </services>
                </station>
            </xsl:for-each>
        </stations>
    </xsl:template>
</xsl:stylesheet>
