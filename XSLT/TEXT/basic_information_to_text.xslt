<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <!--demonstrated with XSLT/Transformations/text_transformations/blagoevgrad_bus_station.xml-->

    <xsl:template match="/">
        <xsl:variable name="station" select="BusStations/BusStation"/>
        Име на автогара: <xsl:value-of select="$station/name"/>&#10;
        Локация: <xsl:value-of select="$station/location"/>&#10;
        Капацитет: <xsl:value-of select="$station/capacity"/>&#10;
        Мениджър: <xsl:value-of select="$station/manager"/>&#10;
        Контактна информация: <xsl:value-of select="$station/contactInfo"/>&#10;
        Работно време: <xsl:value-of select="$station/openingHours"/>&#10;
    </xsl:template>
</xsl:stylesheet>
