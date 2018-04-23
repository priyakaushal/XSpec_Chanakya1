<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	xmlns:source_docinfo="http://www.lexis-nexis.com/glp/docinfo"
	version="2.0" exclude-result-prefixes="dita leg source_docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.levelstatus_ln.user-displayed">
  <title><sourcexml>leg:levelstatus @ln.user-displayed="false" @isrepealed="true"</sourcexml> <lnpid>id-CCCC-10382</lnpid></title>
  <body>
   <section>
     <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
       Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
       this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
     
     <p>If <sourcexml>leg:levelstatus</sourcexml> has attribute <sourcexml>@isrepealed="true"</sourcexml> then map the @statuscode regardless of whether
       <sourcexml>@ln.user-displayed</sourcexml> exists or not. If the attribute <sourcexml>@ln.user-displayed</sourcexml> exists, then don't create the
       <targetxml>statustext</targetxml> element (but retain the <targetxml>@statuscode</targetxml> as stated here).</p>
   </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:levelstatus isrepealed="true" ln.userdisplayed="false"&gt;(Repealed)&lt;/leg:levelstatus&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;legisinfo:status statuscode="repealed" /&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>


<!--	<xsl:template match="leg:levelstatus[@ln.user-displayed='false' and @isrepealed='true']">

		<!-\-  Original Target XPath:  statustext   -\->
		<legisinfo:statusgroup>
		  <legisinfo:status>
		    <xsl:attribute name="statuscode" select="'repealed'"/>
		  </legisinfo:status>
		</legisinfo:statusgroup>

	</xsl:template>-->

<!-- MDS 2017-05-18 - Functionality in general module leg.levelstatus -->
  <!--<xsl:template match="leg:levelstatus[@ln.user-displayed='false' and not(@isrepealed='true')]"/>-->
	<!--xsl:template match="leg:levelinfo[* and not(*[not(self::leg:levelstatus)])]"-->
	<!-- JD: 2017-08-01: rewriting rule; original rule intended to apply when the only child of 
		leg:levelinfo is leg:levelstatus, which omits that output when other elements are present -->
	<xsl:template match="leg:levelinfo[leg:levelstatus]">
    <xsl:choose>
      <xsl:when test="leg:levelstatus/@isrepealed='true'">
        <primlaw:levelinfo>
          <primlawinfo:primlawinfo>
            <legisinfo:legisinfo>
            	<xsl:apply-templates select="node() except (source_docinfo:authorattribution)"/>
            </legisinfo:legisinfo>
          </primlawinfo:primlawinfo>
        </primlaw:levelinfo>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="leg:levelstatus[@isrepealed = 'true'][$streamID='UK12']">
    <legisinfo:statusgroup>
      <legisinfo:status>
        <xsl:attribute name="statuscode" select="'repealed'"/>
      </legisinfo:status>
    </legisinfo:statusgroup>
  </xsl:template>
  
  <xsl:template match="leg:levelstatus[parent::leg:levelinfo][$streamID=('HK06')]"/>
  
</xsl:stylesheet>

