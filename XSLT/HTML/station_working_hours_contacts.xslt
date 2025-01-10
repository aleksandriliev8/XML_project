<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Работно време и контакти на автогарите</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <h1>Работно време и контакти на автогарите</h1>
                <xsl:for-each select="BusStations/BusStation">
                    <div style="margin-bottom: 20px; border-bottom: 1px solid #ccc; padding-bottom: 10px;">
                        <h2><xsl:value-of select="name"/></h2>
                        <p><strong>Местоположение:</strong> <xsl:value-of select="location"/></p>
                        <p><strong>Мениджър:</strong> <xsl:value-of select="manager"/></p>
                        <p><strong>Контакт:</strong> <xsl:value-of select="contactInfo"/></p>
                        <p><strong>Работно време:</strong> <xsl:value-of select="openingHours"/></p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
