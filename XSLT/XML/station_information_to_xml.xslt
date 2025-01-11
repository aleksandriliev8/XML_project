<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <!--demonstrated with XSLT/Transformations/xml_transformations/plovdiv_bus_station.xml-->

    <xsl:template match="/">
        <BusStationInfo>
            <Station>
                <Name>
                    <xsl:value-of select="//BusStation/name"/>
                </Name>
                <Location>
                    <xsl:value-of select="//BusStation/location"/>
                </Location>
                <Capacity>
                    <xsl:value-of select="//BusStation/capacity"/>
                </Capacity>
                <Manager>
                    <xsl:value-of select="//BusStation/manager"/>
                </Manager>
                <Contact>
                    <xsl:value-of select="//BusStation/contactInfo"/>
                </Contact>
                <OpeningHours>
                    <xsl:value-of select="//BusStation/openingHours"/>
                </OpeningHours>
                <Services>
                    <xsl:for-each select="//BusStation/services/service">
                        <Service>
                            <xsl:value-of select="."/>
                        </Service>
                    </xsl:for-each>
                </Services>
            </Station>
        </BusStationInfo>
    </xsl:template>
</xsl:stylesheet>
