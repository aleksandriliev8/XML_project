<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Обща информация за автогари</title>
                <meta charset="UTF-8"/>
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    line-height: 1.6;
                    background-color: #f4f4f9;
                    margin: 20px;
                    }
                    h1 {
                    color: #333;
                    text-align: center;
                    }
                    h2 {
                    color: #555;
                    }
                    div {
                    border: 1px solid #ccc;
                    padding: 15px;
                    border-radius: 5px;
                    background-color: #fff;
                    margin-bottom: 20px;
                    }
                    p {
                    margin: 5px 0;
                    }
                </style>
            </head>
            <body>
                <h1>Обща информация за автогари</h1>
                <xsl:for-each select="BusStations/BusStation">
                    <div>
                        <h2><xsl:value-of select="name"/></h2>
                        <p><strong>Местоположение:</strong> <xsl:value-of select="location"/></p>
                        <p><strong>Капацитет:</strong> <xsl:value-of select="capacity"/></p>
                        <p><strong>Контакти:</strong> <xsl:value-of select="contactInfo"/></p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


