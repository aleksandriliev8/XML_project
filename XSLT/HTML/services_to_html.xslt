<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <!--demonstrated with XSLT/Transformations/html_transformations/varna_bus_station.xml-->

    <xsl:template match="/">
        <html>
            <head>
                <title>Услуги в автогарите</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <h1>Услуги в автогарите</h1>
                <xsl:for-each select="BusStations/BusStation">
                    <div>
                        <h2><xsl:value-of select="name"/></h2>
                        <p><strong>Услуги:</strong></p>
                        <ul>
                            <xsl:for-each select="services/service">
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>