<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.year_ln.user-displayed">
  <title><sourcexml>leg:year/@ln.user-displayed="false"</sourcexml> <lnpid>id-CCCC-10386</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>When <sourcexml>leg:year</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> (i.e. <sourcexml>leg:year/@ln.user-displayed="false"</sourcexml>),
      that element is translated into the target but with the element content omitted. Only the attributes are populated. So there is no displayable content.</p>
           
    </section>  
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:year searchtype="LEGISLATION" ln.userdisplayed="false"&gt;1970&lt;/leg:year&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:enactdate year="1970"/&gt;
&lt;/primlawinfo:dates&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!-- JD: 2017-07-27: the instructions for this are ambiguous; I read it 
		as the <primlaw:enactdate> is used as an example of when only date attributes and not 
		content would be output, i.e., the target element for leg:year could be different
		(as in NZ06, where the target is <primlawinfo:assentdate>).
		
		If that reading is correct, then this template should just output attributes
	-->
	<xsl:template match="leg:year[@ln.user-displayed='false']">
	  <primlawinfo:dates>
	    <primlawinfo:enactdate>
	      <xsl:if test="matches(normalize-space(.) , '^[1|2]\d{3}$')">
	        <xsl:attribute name="year"><xsl:value-of select="normalize-space(.)"/></xsl:attribute>
	      </xsl:if>	     
	    </primlawinfo:enactdate>
	  </primlawinfo:dates>
	</xsl:template>
  
  <!-- Awantika: When leg:year does not have an attribute ln.user-displayed --> 
  <xsl:template match="leg:year[not(@ln.user-displayed)]">
    <primlawinfo:dates>
      <primlawinfo:enactdate>
        <xsl:if test="matches(normalize-space(.) , '^[1|2]\d{3}$')">
          <xsl:attribute name="year"><xsl:value-of select="normalize-space(.)"/></xsl:attribute>
        </xsl:if>	     
      </primlawinfo:enactdate>
      <!-- Awantika: In AU20 primlawinfo:assentdate need to be merged inside primlawinfo:dates -->
      <xsl:if test="$streamID='AU20'">
        <xsl:apply-templates select="parent::leg:info/leg:dates/leg:assentdate" mode="legdate"/>        
      </xsl:if>
    </primlawinfo:dates>
  </xsl:template>
  
  <xsl:template match="@ln.user-displayed"/>

</xsl:stylesheet>