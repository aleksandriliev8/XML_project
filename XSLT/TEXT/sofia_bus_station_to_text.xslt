<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        Автогара: <xsl:value-of select="BusStations/BusStation[name='Централна Автогара София']/name"/>&#10;
        Локация: <xsl:value-of select="BusStations/BusStation[name='Централна Автогара София']/location"/>&#10;
        Капацитет: <xsl:value-of select="BusStations/BusStation[name='Централна Автогара София']/capacity"/>&#10;
        Работно време: <xsl:value-of select="BusStations/BusStation[name='Централна Автогара София']/openingHours"/>&#10;
        Услуги:
        <xsl:for-each select="BusStations/BusStation[name='Централна Автогара София']/services/service">
            - <xsl:value-of select="."/>&#10;
        </xsl:for-each>
        Маршрути:
        <xsl:for-each select="BusStations/BusStation[name='Централна Автогара София']/Routes/Route">
            ID: <xsl:value-of select="@id"/> - Дестинация: <xsl:value-of select="@destination"/> (Честота: <xsl:value-of select="@frequency"/>)&#10;
            Спирки:
            <xsl:for-each select="Stops/Stop">
                - <xsl:value-of select="@name"/> (<xsl:value-of select="@type"/>) в <xsl:value-of select="EstimatedTime"/>: <xsl:value-of select="StopDetails"/>&#10;
            </xsl:for-each>
            Отговорник за маршрута: <xsl:value-of select="RouteManager"/>&#10;
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>