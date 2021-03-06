<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_bodytext-ChOf-level">
  <title><sourcexml>bodytext</sourcexml> <lnpid>id-CA10-14608</lnpid></title>

  <body>
    <section><p><sourcexml>bodytext</sourcexml> becomes <targetxml>seclaw:bodytext</targetxml></p>
    </section>
      <example>
          <title>Source XML</title>
          <codeblock>

 &lt;comm:body&gt;
    ...
        &lt;level leveltype="3"&gt;
            &lt;heading align="left"&gt;
                &lt;title searchtype="DOC-HEADING"&gt;
                    ...
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext searchtype="COMMENTARY"&gt;
            ...
            &lt;/bodytext&gt;
            ...

	</codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;seclaw:body&gt;
  ...
      &lt;seclaw:level leveltype="unclassified"&gt;
          &lt;heading align="left"&gt;
              &lt;title&gt;
                  ...
              &lt;/title&gt;
          &lt;/heading&gt;
          &lt;seclaw:bodytext&gt;
          ...
          &lt;/seclaw:bodytext&gt;
          ...

	</codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_bodytext-ChOf-level.dita  -->
	<!--<xsl:message>CA10_bodytext-ChOf-level.xsl requires manual development!</xsl:message> -->
    
	<xsl:template match="bodytext">

		<!--  Original Target XPath:  seclaw:bodytext   -->
	    <xsl:choose>
	        <xsl:when test="ancestor::level[@subdoc='true'] and child::refpt">
	            <xsl:apply-templates select="child::refpt"/>
	            <seclaw:bodytext>
	                <xsl:apply-templates select="@* | node() except refpt"/>
	                <xsl:if test="following-sibling::level[@subdoc='true']">
	                    <xsl:apply-templates select="following-sibling::level[@subdoc='true']"/>
	                </xsl:if>
	            </seclaw:bodytext>
	        </xsl:when>
	        <xsl:when test="preceding-sibling::bodytext">
	            <xsl:apply-templates select="@*|node()"/>
	        </xsl:when>
	        <xsl:otherwise>
	            <seclaw:bodytext>
	                <xsl:apply-templates select="@* | node() except remotelink"/>
	                <xsl:if test="following-sibling::level[@subdoc='true']">
	                    <xsl:apply-templates select="following-sibling::level[@subdoc='true']"/>
	                </xsl:if>
	                <xsl:apply-templates select="following-sibling::bodytext"/>
	            </seclaw:bodytext>
	        </xsl:otherwise>
	    </xsl:choose>
	</xsl:template>

    <xsl:template match="level[@subdoc='true']" priority="25">
        <xsl:variable name="i" select="count(key('level',@subdoc)[. &lt;&lt; current() or . is current()])"/>
        <xsl:choose>
            <xsl:when test="preceding-sibling::*[1][name()='heading']">
                <seclaw:bodytext>
                    <seclaw:level>
                        <xsl:attribute name="leveltype">
                            <xsl:text>unclassified</xsl:text>
                        </xsl:attribute>
                        <xsl:apply-templates select="@*"/>
                        <ref:anchor>
                            <xsl:attribute name="id">
                                <!--<xsl:text>TOC00</xsl:text>-->
                                <xsl:value-of select="concat('TOC00',$i)"/>
                            </xsl:attribute>
                            <xsl:attribute name="anchortype">
                                <xsl:text>local</xsl:text>
                            </xsl:attribute>
                        </ref:anchor>
                        <xsl:apply-templates select="node() except (level[@subdoc='true'][preceding-sibling::bodytext] , bodytext[preceding-sibling::level[@subdoc='true']])"/>
                    </seclaw:level>
                    <xsl:apply-templates select="following-sibling::level[@subdoc='true']"/>
                </seclaw:bodytext>
            </xsl:when>
            <xsl:otherwise>
                <seclaw:level>
                    <xsl:attribute name="leveltype">
                        <xsl:text>unclassified</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="@*"/>
                    <ref:anchor>
                        <xsl:attribute name="id">
                            <!--<xsl:text>TOC00</xsl:text>-->
                            <xsl:value-of select="concat('TOC00',$i)"/>
                        </xsl:attribute>
                        <xsl:attribute name="anchortype">
                            <xsl:text>local</xsl:text>
                        </xsl:attribute>
                    </ref:anchor>
                    <xsl:apply-templates select="node() except (level[preceding-sibling::bodytext],bodytext[preceding-sibling::bodytext])"/>
                </seclaw:level>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
    
</xsl:stylesheet>