<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnv="http://www.lexis-nexis.com/lnv" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita lnv">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-Inv_HIER_lnv_HIER-ME">
    <title>lnv:HIER and lnv:HIER-ME <lnpid>id-RU02-32008</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lnv:HIER</sourcexml> becomes
                <targetxml>doc:metadata/doc:docinfo/doc:hier</targetxml>. </p>
        <p>
            <sourcexml>lnv:HIER-ME</sourcexml> becomes
                <targetxml>doc:metadata/doc:docinfo/doc:hier</targetxml>. </p>
        <note>If there are <sourcexml>lnv:HIER</sourcexml> and <sourcexml>lnv:HIER-ME</sourcexml> then we need to club them in single <targetxml>doc:hierlev</targetxml> i.e. it need to be nested with its previous <targetxml>doc:hierlev</targetxml>. For more clarification refer below example.</note>
        
        <example>
            <title>Source XML</title>
            <codeblock>
&lt;lnv:HIER&gt;
    &lt;lnvxe:hierlev role="ancestor"&gt;
        &lt;lnvxe:hierannot caption="THE CIVIL CODE OF THE RUSSIAN FEDERATION, PART I" level="1"
            role="ancestor"/&gt;
        &lt;lnv:LSTL1 kw="1MIEZIQP57FHPCS11"/&gt;
        &lt;lnv:LSTL1 kw="27I0FS2E9131QVIMU"/&gt;
        &lt;lnv:LSTL1 kw="3ETIBLUSHNVCXDXQM"/&gt;
        &lt;lnvxe:heading inline="false"&gt;
            &lt;lnvxe:title&gt;THE CIVIL CODE OF THE RUSSIAN FEDERATION, PART I&lt;/lnvxe:title&gt;
        &lt;/lnvxe:heading&gt;
    &lt;/lnvxe:hierlev&gt;
    &lt;lnvxe:hierlev role="ancestor"&gt;
        &lt;lnvxe:hierannot caption="SECTION III. THE GENERAL PART OF THE LAW OF OBLIGATIONS"
            level="2" role="ancestor"/&gt;
        &lt;lnv:LSTL2 kw="1PLLK8NPTWW5TY3H6"/&gt;
        &lt;lnv:LSTL2 kw="2UJLEO9FHWVTF2Q91"/&gt;
        &lt;lnv:LSTL2 kw="3TECEX3D4B4PHZ58R"/&gt;
        &lt;lnvxe:heading inline="false"&gt;
            &lt;lnvxe:title&gt;SECTION III. THE GENERAL PART OF THE LAW OF OBLIGATIONS&lt;/lnvxe:title&gt;
        &lt;/lnvxe:heading&gt;
    &lt;/lnvxe:hierlev&gt;
    &lt;lnvxe:hierlev role="ancestor"&gt;
        &lt;lnvxe:hierannot caption="SUBSECTION 1. GENERAL PROVISIONS ON OBLIGATIONS" level="3"
            role="ancestor"/&gt;
        &lt;lnv:LSTL3 kw="1L207M7AT564WOTBP"/&gt;
        &lt;lnv:LSTL3 kw="2V3YNE9G98DCNGK4U"/&gt;
        &lt;lnv:LSTL3 kw="3ZAVD2B5EKQH7ELCY"/&gt;
        &lt;lnvxe:heading inline="false"&gt;
            &lt;lnvxe:title&gt;SUBSECTION 1. GENERAL PROVISIONS ON OBLIGATIONS&lt;/lnvxe:title&gt;
        &lt;/lnvxe:heading&gt;
    &lt;/lnvxe:hierlev&gt;
    &lt;lnvxe:hierlev role="ancestor"&gt;
        &lt;lnvxe:hierannot caption="CHAPTER 22. PERFORMANCE OF OBLIGATIONS" level="4"
            role="ancestor"/&gt;
        &lt;lnv:LSTL4 kw="10JOGN1OIQXQM4J29"/&gt;
        &lt;lnv:LSTL4 kw="2LLK7RP9I0KZTUS8Q"/&gt;
        &lt;lnv:LSTL4 kw="3QOPM0OKY2QGO3YGP"/&gt;
        &lt;lnvxe:heading inline="false"&gt;
            &lt;lnvxe:title&gt;CHAPTER 22. PERFORMANCE OF OBLIGATIONS&lt;/lnvxe:title&gt;
        &lt;/lnvxe:heading&gt;
    &lt;/lnvxe:hierlev&gt;
&lt;/lnv:HIER&gt;
&lt;lnv:HIER-ME&gt;
    &lt;lnvxe:hierlev role="me"&gt;
        &lt;lnvxe:hierannot caption="ARTICLE 317. THE CURRENCY OF PECUNIARY OBLIGATIONS" level="5"
            role="me"/&gt;
        &lt;lnv:LSTL5 kw="1AJNCDSAV7269EWUM"/&gt;
        &lt;lnv:LSTL5 kw="21YD86KMVSKNKQCT8"/&gt;
        &lt;lnv:LSTL5 kw="34JQIO5T3HKYDJ0XD"/&gt;
        &lt;lnvxe:heading inline="false"&gt;
            &lt;lnvxe:title&gt;ARTICLE 317. THE CURRENCY OF PECUNIARY OBLIGATIONS&lt;/lnvxe:title&gt;
        &lt;/lnvxe:heading&gt;
    &lt;/lnvxe:hierlev&gt;
&lt;/lnv:HIER-ME&gt;


	</codeblock>
        </example>

        <example>
            <title>Target XML </title>
            <codeblock>&lt;doc:hier&gt;
    &lt;doc:hierlev&gt;
        &lt;heading inline="false"&gt;
            &lt;title&gt; THE CIVIL CODE OF THE RUSSIAN FEDERATION, PART I &lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:hierlev&gt;
            &lt;heading inline="false"&gt;
                &lt;title&gt; SECTION III. THE GENERAL PART OF THE LAW OF OBLIGATIONS &lt;/title&gt;
            &lt;/heading&gt;
            &lt;doc:hierlev&gt;
                &lt;heading inline="false"&gt;
                    &lt;title&gt; SUBSECTION 1. GENERAL PROVISIONS ON OBLIGATIONS &lt;/title&gt;
                &lt;/heading&gt;
                &lt;doc:hierlev&gt;
                    &lt;heading inline="false"&gt;
                        &lt;title&gt;CHAPTER 22. PERFORMANCE OF OBLIGATIONS&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;doc:hierlev&gt;
                        &lt;heading inline="false"&gt;
                            &lt;title&gt;ARTICLE 317. THE CURRENCY OF PECUNIARY OBLIGATIONS&lt;/title&gt;
                        &lt;/heading&gt;
                    &lt;/doc:hierlev&gt;
                &lt;/doc:hierlev&gt;
            &lt;/doc:hierlev&gt;
        &lt;/doc:hierlev&gt;
    &lt;/doc:hierlev&gt;
&lt;/doc:hier&gt;

	</codeblock>
        </example>
        
        
        <section>
            <title>Changes</title>
            <p>Created.</p>
            <p>2014-06-25: <ph id="change_20140625_AS">Added note and updated snippet.</ph></p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-Inv_HIER_lnv_HIER-ME.dita  -->
	<xsl:message>RU02-Inv_HIER_lnv_HIER-ME.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnv:HIER">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:hier   -->
		<doc:metadata>
			<doc:docinfo>
				<doc:hier>
					<xsl:apply-templates select="@* | node()"/>
				</doc:hier>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="lnv:HIER-ME">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:hier   -->
		<doc:metadata>
			<doc:docinfo>
				<doc:hier>
					<xsl:apply-templates select="@* | node()"/>
				</doc:hier>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>