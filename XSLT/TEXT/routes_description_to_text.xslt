<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <!--demonstrated with XSLT/Transformations/text_transformations/sofia_bus_station.xml-->

    <xsl:template match="/">
        <xsl:variable name="station" select="BusStations/BusStation"/>
        Име на автогара: <xsl:value-of select="$station/name"/>&#10;
        &#10;
        Маршрути:
        <xsl:for-each select="$station/Routes/Route">
            ID: <xsl:value-of select="@id"/>&#10;
            Дестинация: <xsl:value-of select="@destination"/>&#10;
            Честота: <xsl:value-of select="@frequency"/>&#10;
            Спирки:
            <xsl:for-each select="Stops/Stop">
                - <xsl:value-of select="@name"/> (<xsl:value-of select="@type"/>): <xsl:value-of select="StopDetails"/>, Очаквано време: <xsl:value-of select="EstimatedTime"/>&#10;
            </xsl:for-each>
            Отговорник: <xsl:value-of select="RouteManager"/>&#10;
            &#10;
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
