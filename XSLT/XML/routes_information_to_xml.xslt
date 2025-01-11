<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <!--demonstrated with XSLT/Transformations/xml_transformations/varna_bus_station.xml-->

    <xsl:template match="/">
        <RoutesInfo>
            <xsl:for-each select="//Route">
                <Route>
                    <ID>
                        <xsl:value-of select="@id"/>
                    </ID>
                    <Destination>
                        <xsl:value-of select="@destination"/>
                    </Destination>
                    <Frequency>
                        <xsl:value-of select="@frequency"/>
                    </Frequency>
                    <RouteManager>
                        <xsl:value-of select="RouteManager"/>
                    </RouteManager>
                    <Stops>
                        <xsl:for-each select="Stops/Stop">
                            <Stop>
                                <Name>
                                    <xsl:value-of select="@name"/>
                                </Name>
                                <Type>
                                    <xsl:value-of select="@type"/>
                                </Type>
                                <Details>
                                    <xsl:value-of select="StopDetails"/>
                                </Details>
                                <EstimatedTime>
                                    <xsl:value-of select="EstimatedTime"/>
                                </EstimatedTime>
                            </Stop>
                        </xsl:for-each>
                    </Stops>
                </Route>
            </xsl:for-each>
        </RoutesInfo>
    </xsl:template>
</xsl:stylesheet>
