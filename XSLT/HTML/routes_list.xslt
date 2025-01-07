<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Маршрути</title>
            </head>
            <body>
                <h1>Списък на маршрутите</h1>
                <table border="1">
                    <tr>
                        <th>Маршрут</th>
                        <th>Час на тръгване</th>
                        <th>Час на пристигане</th>
                        <th>Цена</th>
                    </tr>
                    <xsl:for-each select="transport/routes/route">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="departureTime"/></td>
                            <td><xsl:value-of select="arrivalTime"/></td>
                            <td><xsl:value-of select="price"/> лв</td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
