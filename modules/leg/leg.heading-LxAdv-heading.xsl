<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading-LxAdv-heading">
  <title>leg:heading <lnpid>id-HK04-36613</lnpid></title>
 <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with
            attributes <sourcexml>@align</sourcexml> becames <targetxml>@align</targetxml>
            <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml> 
            <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.heading_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
            <b>heading element with inline attribute:</b>
            <pre>
 
       &lt;leg:level id="UAOHK.0025.SUBLEG_001.BODY"&gt;
            &lt;leg:level-vrnt toc-caption="1. Citation and commencement" subdoc="true" searchtype="LEGISLATION RULE" leveltype="rule"&gt;
                &lt;leg:heading&gt;
                    &lt;title&gt;&lt;refpt type="ext" id="AOHK.0025.SUBLEG_001"/&gt;LABOUR TRIBUNAL (GENERAL) RULES (CAP 25A)&lt;/title&gt;
                &lt;/leg:heading&gt;
             ....
             &lt;/leg:level-vrnt&gt;
      &lt;/leg:level&gt;

</pre>
            <b>Becomes</b>
            <pre>

       &lt;primlaw:level leveltype="section" includeintoc="true" alternatetoccaption="1. Citation and commencement"&gt;
              &lt;ref:anchor id="AOHK.0025.SUBLEG_001" anchortype="global"/&gt;
                  &lt;heading&gt;
                    &lt;title&gt;LABOUR TRIBUNAL (GENERAL) RULES (CAP 25A)&lt;/title&gt;
                  &lt;/heading&gt;
              ...
        &lt;/primlaw:level&gt;

            </pre>
            
          </li>
        </ul>
      </p>  
    </section>  
   <section>
     <title>Changes</title>
     <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
   </section>
  </body>
	</dita:topic>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
	  <xsl:choose>
	    <!-- Awantika: 2017-11-11- Added scenario "If the input documents are having scenario
                  leg:bodytext/leg:heading/title then
                  leg:bodytext becomes
                  primlaw:bodytext and create a wrapper
                  primlaw:level[@leveltype="unclassified"] with child
                  title becomes title" -->
	    <xsl:when test="parent::leg:bodytext and $streamID='HK04'">
	      <primlaw:level>
	        <xsl:attribute name="leveltype">
	          <xsl:text>unclassified</xsl:text>
	        </xsl:attribute>
	        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	          <xsl:apply-templates select="@* | node() except(leg:empleg | glp:note | refpt | leg:histnote)"/>
	        </heading>
	      </primlaw:level>
	    </xsl:when>
	    <xsl:otherwise>
	      <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:apply-templates select="@* | node() except(leg:empleg | glp:note | refpt | leg:histnote[$streamID=('HK04', 'HK06')])"/>
	      </heading>
	    </xsl:otherwise>
	  </xsl:choose>
	 

	</xsl:template>
  
  <xsl:template match="leg:heading[parent::leg:bodytext][$streamID='HK06']">
    
    <!--  Original Target XPath:  heading   -->
    <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="@* | node() except(leg:empleg | glp:note | refpt)"/>
    </h>    
  </xsl:template>
  
  <xsl:template match="title[parent::leg:heading[parent::leg:bodytext]][$streamID='HK06']" priority="25">
    <xsl:apply-templates select="node()"/>
  </xsl:template>

	<xsl:template match="leg:heading/@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:heading/@inline">
		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>