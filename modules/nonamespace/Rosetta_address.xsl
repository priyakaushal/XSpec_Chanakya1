<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_address">
    <title>address <lnpid>id-CCCC-00001</lnpid></title>
    <body>
        <section>
            <title>address to location:address</title>
            <p><sourcexml>address</sourcexml> becomes <targetxml>location:address</targetxml>.</p>
        </section>
        <section>
            <title>&lt;address.line&gt; to &lt;location:address.line&gt;</title>
            <sectiondiv>
                <p><sourcexml>address/address.line</sourcexml> becomes <targetxml>location:address/location:address.line</targetxml>.</p>
                <p>There will be scenarios where it appears that the single incoming <sourcexml>address.line</sourcexml> should either be split into multiple lines or has components that should be separated into other elements (e.g. email addresses, etc.).  These instructions suggest that those changes should occur in the source and that a 1-1 mapping remains in place.</p>
            </sectiondiv>
            <p><sourcexml>nl</sourcexml> within the address line becomes <targetxml>proc:nl</targetxml>.</p>
        </section>
        <section>
            <title>&lt;email&gt; to &lt;contact:email&gt;</title>
            <sectiondiv>
                <p><sourcexml>address/email</sourcexml> becomes <targetxml>location:address/contact:email</targetxml>.</p>
            </sectiondiv>
        </section>
        <example>
            <title>Example 1:  Source XML</title>
            <codeblock>

&lt;address&gt;
    &lt;address.line&gt;1690 Hollis Street, 2nd Floor&lt;/address.line&gt;
    &lt;address.line&gt;Halifax, Nova Scotia&lt;/address.line&gt;
    &lt;address.line&gt;B3J 3J9&lt;/address.line&gt;
&lt;/address&gt;

            </codeblock>
        </example>
        <example>
            <title>Example 1:  Target XML</title>
            <codeblock>

&lt;location:address&gt;
    &lt;location:address.line&gt;1690 Hollis Street, 2nd Floor&lt;/location:address.line&gt;
    &lt;location:address.line&gt;Halifax, Nova Scotia&lt;/location:address.line&gt;
    &lt;location:address.line&gt;B3J 3J9&lt;/location:address.line&gt;
&lt;/address&gt;

	        </codeblock>
        </example>
        <example>
            <title>Example 2:  Source XML</title>
            <codeblock>
                
&lt;address&gt;
    &lt;address.line&gt;David Coultice&lt;nl/&gt;Senior Legal Counsel, Corporate
    Finance&lt;nl/&gt;Ontario Securities Commission&lt;nl/&gt;20 Queen Street West, Suite 800,
    Box 55&lt;nl/&gt;Toronto, Ontario M5H 3S8&lt;nl/&gt;(416) 204-8979&lt;nl/&gt;e-mail:
    dcoultice@osc.gov.on.ca&lt;/address.line&gt;
&lt;/address&gt;

            </codeblock>
        </example>
        <example>
            <title>Example 2:  Target XML</title>
            <codeblock>
                
&lt;location:address&gt;
    &lt;location:address.line&gt;David Coultice&lt;proc:nl/&gt;Senior Legal Counsel, Corporate
    Finance&lt;proc:nl/&gt;Ontario Securities Commission&lt;proc:nl/&gt;20 Queen Street West, Suite 800,
    Box 55&lt;proc:nl/&gt;Toronto, Ontario M5H 3S8&lt;proc:nl/&gt;(416) 204-8979&lt;proc:nl/&gt;e-mail:
    dcoultice@osc.gov.on.ca&lt;/location:address.line&gt;
&lt;/location:address&gt;

            </codeblock>
        </example>
    </body>
	</dita:topic>

	<xsl:template match="address">
		<location:address>
			<xsl:apply-templates select="@* | node()"/>
		</location:address>
	</xsl:template>

	<xsl:template match="address/address.line">
			<location:address.line>
				<xsl:apply-templates select="@* | node()"/>
			</location:address.line>
	</xsl:template>
    
    <xsl:template match="address/address.line/nl">
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>
	</xsl:template>

	<xsl:template match="address/email">
			<contact:email xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/">
				<xsl:apply-templates select="@* | node()"/>
			</contact:email>
	</xsl:template>

    <xsl:template match="address/country">
        <location:country>
            <xsl:apply-templates select="@*|node()"/>
        </location:country>
    </xsl:template>
    
    <xsl:template match="address/postalcode">
        <location:postalcode>
            <xsl:apply-templates select="@*|node()"/>
        </location:postalcode>
    </xsl:template>
    
    <xsl:template match="address/phone">
        <contact:phone>
            <xsl:apply-templates select="@*|node()"/>
        </contact:phone>
    </xsl:template>
    
    <xsl:template match="address/fax">
        <contact:fax>
            <xsl:apply-templates select="@*|node()"/>
        </contact:fax>
    </xsl:template>
</xsl:stylesheet>