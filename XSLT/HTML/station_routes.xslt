<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Маршрути на автогарите</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <h1>Маршрути на автогарите</h1>
                <xsl:for-each select="BusStations/BusStation">
                    <div style="margin-bottom: 20px;">
                        <h2><xsl:value-of select="name"/></h2>
                        <p><strong>Маршрути:</strong></p>
                        <ul>
                            <xsl:for-each select="Routes/Route">
                                <li>
                                    <strong>Маршрут:</strong> <xsl:value-of select="@id"/>
                                    до <xsl:value-of select="@destination"/>
                                    (<xsl:value-of select="@frequency"/>)
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>