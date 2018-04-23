<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_hrule-to-LexisAdvance_hrule">
    <title><sourcexml>hrule</sourcexml> to <targetxml>hrule</targetxml> <lnpid>id-CCCC-10351</lnpid></title>
    <body>
        <section>
            <p><sourcexml>hrule</sourcexml> becomes <targetxml>hrule</targetxml> and attributes
                    <sourcexml>@align</sourcexml> and <sourcexml>@width</sourcexml> needs to be
                supressed and presentation stylesheet will render <targetxml>hrule</targetxml>.</p>
            <note>If <sourcexml>hrule[parent::blockquote]</sourcexml> <sourcexml>hrule</sourcexml> should become <targetxml>pgrp/hrule</targetxml>.</note>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;hrule align="true" width="5"/&gt;

   </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;hrule/&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2011-12-21: Created. </p>
            <p>2012-12-06: Instruction added for attributes handling.</p>
        </section>
	<!-- SEP 2015-8-12 added -->
   
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_hrule-LxAdv-hrule.dita  -->

        <xsl:template match="hrule">
            <xsl:element name="hrule" namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <xsl:apply-templates select="@*"/>
          </xsl:element>
        </xsl:template>
    
    <xsl:template match="hrule[parent::blockquote[not(ancestor::leg:comntry)]]">
        <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:element name="hrule">
                <xsl:apply-templates select="@*"/>
            </xsl:element>
        </pgrp>
    </xsl:template>
    
    <!--  Vikas Rohilla : Created the template for the stream CA14   -->
    <xsl:template match="hrule[parent::highlight][$streamID='CA14']"/>
    
    <xsl:template match="hrule/@align | hrule/@width"/>
      
</xsl:stylesheet>