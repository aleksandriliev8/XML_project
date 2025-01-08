<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Спирки по маршрути</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <h1>Спирки по маршрути</h1>
                <xsl:for-each select="BusStations/BusStation">
                    <div style="margin-bottom: 20px;">
                        <h2><xsl:value-of select="name"/></h2>
                        <xsl:for-each select="Routes/Route">
                            <h3>Маршрут: <xsl:value-of select="@id"/> до <xsl:value-of select="@destination"/></h3>
                            <ul>
                                <xsl:for-each select="Stops/Stop">
                                    <li>
                                        <strong>Спирка:</strong> <xsl:value-of select="@name"/>
                                        (<xsl:value-of select="@type"/>)
                                        - <xsl:value-of select="EstimatedTime"/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </xsl:for-each>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
