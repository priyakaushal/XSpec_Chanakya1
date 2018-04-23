<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" 
    xmlns:dc="http://purl.org/dc/elements/1.1/" 
    xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" 
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" 
    xmlns:ln-data="http://www.lexis-nexis.com/glp/ln-data"
    version="2.0" exclude-result-prefixes="dita case ln-data">

	<!--SP TODO have copied this from HK08; any local modifications?-->

    <ln-data:countryValuePairs>
        <ln-data:pair>
            <ln-data:orgCountryValue>BEL</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>BZ</ln-data:targetCountryValue>
        </ln-data:pair> 
        <ln-data:pair>
            <ln-data:orgCountryValue>CAN</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>CA</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>CTH</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>EUR</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>EU</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>FJ</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>FJ</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>FRA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>FR</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>FRG</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>DE</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>HK</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>HK</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>IND</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>IN</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>IRE</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>IE</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>ISR</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>IL</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>JAM</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>JM</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue> JAP</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>JP</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>MA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>MY</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NI</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NF</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NIF</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NF</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NIS</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NF</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NZ</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NZ</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>PAK</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>PK</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>PNG</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>PG</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>PRC</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>CN</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>SAF</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>ZA</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>SNG</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>SG</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>T&amp;T</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>TT</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>UK</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>GB</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>UN</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>UN</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>US</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>US</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>ACT</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-CT</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NSW</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-NS</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NT</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-NT</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>QLD</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-QL</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>SA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-SA</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>TAS</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-TS</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>VIC</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-VI</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>WA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-WA</ln-data:targetCountryValue>
        </ln-data:pair>
        </ln-data:countryValuePairs>
    <xsl:key name="keyCountryCodePairs" match="ln-data:pair" use="ln-data:orgCountryValue"/>
    
    <xsl:variable name="countryCodePair" select="document('')/*/ln-data:countryValuePairs"/>
    
    <xsl:template match="case:juris">
        
		<jurisinfo:jurisdiction>
			<jurisinfo:location>
				<location:country>
					<xsl:attribute name="countrycode" select="'CA'"/>
					<xsl:attribute name="codescheme">ISO-3166-1</xsl:attribute>
				</location:country>
			</jurisinfo:location>
			<jurisinfo:system>
				<xsl:value-of select="."/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>
        
    </xsl:template>
    
    <xsl:template match="ln-data:countryValuePairs">
        <xsl:param name="currentCountryCode"/>
        <xsl:value-of select="key('keyCountryCodePairs', $currentCountryCode)/ln-data:targetCountryValue"/>
    </xsl:template>
    
    <xsl:template match="case:headnote/case:info/case:courtinfo/case:courtcode" mode="metadata">
        <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:attribute name="name" select="'case:courtcode'"/>
            <xsl:attribute name="value" select="."/>
        </metaitem>
    </xsl:template>

    <xsl:template match="case:juris" mode="metadata">
        <dc:coverage>
            <location:country>
				<xsl:attribute name="countrycode" select="'CA'"/>
                <xsl:attribute name="codescheme">ISO-3166-1</xsl:attribute>
            </location:country>
        </dc:coverage>
    </xsl:template>

</xsl:stylesheet>
