<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" 
  xmlns:shared_legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legisinfo/1/" 
  version="2.0" exclude-result-prefixes="dita leg shared_legisinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.officialname_ln.user-displayed-to-LexisAdvance_legisinfo.officialtitle">
  <title><sourcexml>leg:officialname/@ln.user-displayed="false"</sourcexml> to <targetxml>legisinfo:officialtitle</targetxml> <lnpid>id-CCCC-10384</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>If <sourcexml>leg:officialname</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> becomes
        <targetxml>legisinfo:officialtitle</targetxml> with attribute <targetxml>source="editoriallyassigned"</targetxml>          
        <note>In order to enable searching and indexing while retaining the display integrity of the information. The @source
          attribute will be populated with "editoriallyassigned" indicating these fields were assigned their value.
          The viewspec will utilize the @source attribute to choose whether to display this information
          differently or not at all depending on the needs of the LBU users.</note> 
      </p>
      
    </section>    
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:officialname searchtype="LEGISLATION" ln.user-displayed="false"&gt;SUPREME COURT (FOREIGN JUDGMENTS) RULES 1993&lt;/leg:officialname&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;legisinfo:names&gt;
&lt;legisinfo:officialtitle source="editoriallyassigned"&gt;SUPREME COURT (FOREIGN JUDGMENTS) RULES 1993&lt;/legisinfo:officialtitle&gt;
&lt;/legisinfo:names&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>

  <!-- MCJ:  Single template to handle leg:officialname.  This collapses the specific instructions around @ln.user-displayed="false" with the
             generic-case of no @ln.user-displayed and the lack of @ln.user-displayed. -->
  <xsl:template match="leg:officialname">
		<!--  JL: ref:anchor is not valid in legisinfo:officialtitle   -->
    <xsl:choose>
      <xsl:when test="parent::leg:info">
        <legisinfo:names>
          <legisinfo:officialtitle>
            <xsl:apply-templates select="@*"/>
            <!-- MCJ:  Only create the @source attribute of 'editoriallyassigned' if @ln.user-displayed="false". -->
            <xsl:if test="@ln.user-displayed='false'">
              <xsl:attribute name="source">editoriallyassigned</xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select="node() except refpt"/>
          </legisinfo:officialtitle>
        </legisinfo:names>
      </xsl:when>
      <xsl:otherwise>
        <legisinfo:legisinfo>
          <legisinfo:names>
            <legisinfo:officialtitle>
              <xsl:apply-templates select="@*"/>
              <!-- MCJ:  Only create the @source attribute of 'editoriallyassigned' if @ln.user-displayed="false". -->
              <xsl:if test="@ln.user-displayed='false'">
                <xsl:attribute name="source">editoriallyassigned</xsl:attribute>
              </xsl:if>
              <xsl:apply-templates select="node() except refpt"/>
            </legisinfo:officialtitle>
          </legisinfo:names>
        </legisinfo:legisinfo>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="leg:officialname/@ln.user-displayed" />
  <xsl:template match="leg:officialname/@searchtype" />


</xsl:stylesheet>