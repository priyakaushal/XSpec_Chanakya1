<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" 
    version="2.0" exclude-result-prefixes="dita ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_docinfo.normcite">
    <title><sourcexml>docinfo:normcite</sourcexml> to <targetxml>ref:nonciteidentifier</targetxml>
        <lnpid>id-UK12-29829</lnpid></title>
    <body>
        <section>
            <note>This module is specific to the UK12 stream (Treatises).</note>
            <p><sourcexml>docinfo:normcite</sourcexml> becomes
                    <targetxml>seclaw:head/ref:citations</targetxml>. Child as follows:<ul>
                    <li><sourcexml>ci:cite[@type]</sourcexml> becomes
                            <targetxml>ref:parallelcite[@citetype]</targetxml>. Child as follows:<ul>
                            <li><sourcexml>ci:content</sourcexml> becomes
                                    <targetxml>ref:nonciteidentifier[@normprotocol="unspecified"]</targetxml>.
                                The attribute value is hard-coded.</li>
                        </ul></li>
                </ul></p>
        </section>
        <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;docinfo:normcite&gt;
  &lt;ci:cite type="parallel"&gt;
    &lt;ci:content&gt;UK_ACTS 2016 24 SECT 116&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
&lt;/docinfo:normcite&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:head&gt;
  &lt;ref:citations&gt;
    &lt;ref:parallelcite citetype="parallel"&gt;
       &lt;ref:nonciteidentifier normprotocol="unspecified"&gt;UK_ACTS 2016 24 SECT 116&lt;/ref:nonciteidentifier&gt;
    &lt;/ref:parallelcite&gt;
  &lt;/ref:citations&gt;
&lt;/seclaw:head&gt;

      </pre>
        <section>
            <title>Changes</title>
            <p>2016-12-06: <ph id="change_20161206_jm">Modified to reflect recent rosetta. Removed
                    rule for rosetta <sourcexml>@normcite</sourcexml>; attribute not present.
                    Changed rule for <sourcexml>ci:content</sourcexml>, formerly suppressed, now
                    maps to <targetxml>ref:nonciteidentifier</targetxml>. Target xpath not
                    changed.</ph></p>
            <p>2016-10-26: <ph id="change_20161026_jm">New section. New xpath. Specific to UK12.
                    VSTS User Story 143420.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_docinfo.normcite.dita  -->
<!--	<xsl:message>UK12_Treatise_docinfo.normcite.xsl requires manual development!</xsl:message> -->


<!-- 
    
    <docinfo:normcite>
      <ci:cite type="parallel">
        <ci:content>UK_ACTS 1997 50 Title</ci:content>
      </ci:cite>
    </docinfo:normcite>
    
    -->
	<xsl:template match="docinfo:normcite">
	    <ref:citations>
	        <ref:parallelcite>
	            <xsl:if test="ci:cite/@citetype">
	                <xsl:attribute name="citetype" select="ci:cite/@citetype"/>
	            </xsl:if>
	            <ref:nonciteidentifier>
	                <xsl:attribute name="normprotocol">unspecified</xsl:attribute>
	                <xsl:apply-templates select="node()"/>
	            </ref:nonciteidentifier>
	        </ref:parallelcite>
	    </ref:citations>

	</xsl:template>

    <xsl:template match="ci:cite[parent::docinfo:normcite]">
        <xsl:apply-templates select="ci:content/text()"/>
    </xsl:template>
	
</xsl:stylesheet>