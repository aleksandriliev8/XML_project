<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Автогари</title>
            </head>
            <body>
                <h1>Списък на автогарите</h1>
                <ul>
                    <xsl:for-each select="transport/stations/station">
                        <li>
                            <strong><xsl:value-of select="name"/></strong><br/>
                            Адрес: <xsl:value-of select="address"/><br/>
                            Телефон: <xsl:value-of select="phone"/><br/>
                            Работно време: <xsl:value-of select="workingHours"/><br/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
