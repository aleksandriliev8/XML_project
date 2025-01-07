<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Услуги на автогарите</title>
            </head>
            <body>
                <h1>Предлагани услуги</h1>
                <ul>
                    <xsl:for-each select="transport/stations/station">
                        <li>
                            <strong><xsl:value-of select="name"/></strong>
                            <ul>
                                <xsl:for-each select="services/service">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
