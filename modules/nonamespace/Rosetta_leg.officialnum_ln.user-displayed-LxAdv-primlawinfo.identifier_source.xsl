<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" 
  version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.officialnum_ln.user-displayed-to-LexisAdvance_primlawinfo.identifier_source">
  <title><sourcexml>leg:officialnum/@ln.user-displayed</sourcexml> to <targetxml>primlawinfo:identifier/@source</targetxml> <lnpid>id-CCCC-10385</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>If <sourcexml>leg:officialnum</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> becomes <targetxml>primlawinfo:identifier</targetxml> with attribute <targetxml>source="editoriallyassigned"</targetxml>          
        <note>In order to enable searching and indexing while retaining the display integrity of the information. The @source
          attribute will be populated with "editoriallyassigned" indicating these fields were assigned their value.
          The viewspec will utilize the @source attribute to choose whether to display this information
          differently or not at all depending on the needs of the LBU users.</note> 
      </p>
      
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:officialnum searchtype="LEGISLATION" ln.user-displayed="false"&gt;Act No. 91, 1993&lt;/leg:officialnum&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>
&lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;Act No. 91, 1993&lt;/primlawinfo:identifier&gt;
       
         </codeblock>
    </example>
  </body>
	</dita:topic>

  <!-- MCJ:  Single template to handle leg:officialnum.  This collapses the specific instructions around @ln.user-displayed="false" with the
             generic-case of no @ln.user-displayed and the lack of @ln.user-displayed. -->
  <xsl:template match="leg:officialnum">
		<primlawinfo:identifier>
			<xsl:apply-templates select="@*"/>
		  <xsl:attribute name="idtype" select="'officialnum'"/>
		  <!-- MCJ:  Set @source='editoriallyassigned' if @ln.user-displayed is explicitly set to 'false'.  -->
		  <xsl:if test="@ln.user-displayed='false'">
			    <xsl:attribute name="source" select="'editoriallyassigned'"/>
		  </xsl:if>
			<xsl:apply-templates select="node()"/>
		</primlawinfo:identifier>
	</xsl:template>
	
	<!-- JD: @searchtype not mentioned in DITA, but examples illustrate this is suppressed. -->	
	<xsl:template match="leg:officialnum/@searchtype | leg:officialnum/@ln.user-displayed"/>

</xsl:stylesheet>