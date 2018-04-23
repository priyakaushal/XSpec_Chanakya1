<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p-limited_ci.cite-to-LexisAdvance_p_text_lnci.cite">
 <title><sourcexml>p-limited/ci:cite</sourcexml> to <targetxml>p/text/lnci:cite</targetxml> <lnpid>id-CCCC-10420</lnpid></title>
 <body>
 <section>
    <p>When <sourcexml>ci:cite</sourcexml> occurs as a direct child of <sourcexml>p-limited</sourcexml> then <sourcexml>p-limited/ci:cite</sourcexml> becomes <targetxml>p/text/lnci:cite</targetxml>.
    </p>
    </section>
    <example>
        <title>Source XML</title>
        <codeblock>

&lt;entry&gt;
    &lt;p-limited&gt;Diagram drawn at August 16, 2001 hearing by Mr. Yakimishyn. Location plan NW 4 &lt;ci:cite&gt;&lt;ci:case&gt;&lt;ci:caseref ID="cref00000588" spanref="cspan00000588"&gt;&lt;ci:reporter country="US" value="N.E." normpubcode="627"/&gt;&lt;ci:volume num="8"/&gt;&lt;ci:page num="5"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;&lt;ci:span spanid="cspan00000588"&gt;8 NE 5&lt;/ci:span&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;-56-17-4. Submitted by Mr. Yakimishyn.&lt;/p-limited&gt;
&lt;/entry&gt;

	</codeblock>
    </example>
    
    <example>
        <title>Target XML</title>
        <codeblock>

&lt;entry&gt;
    &lt;p&gt;&lt;text&gt;Diagram drawn at August 16, 2001 hearing by Mr. Yakimishyn. Location plan NW 4 &lt;lnci:cite&gt;&lt;lnci:case&gt;&lt;lnci:caseref ID="cref00000588"&gt;&lt;lnci:reporter country="US" value="N.E." normpubcode="627"/&gt;&lt;lnci:volume num="8"/&gt;&lt;lnci:page num="5"/&gt;&lt;/lnci:caseref&gt;&lt;/lnci:case&gt;&lt;lnci:content&gt;8 NE 5&lt;/lnci:content&gt;&lt;/lnci:cite&gt;-56-17-4. Submitted by Mr. Yakimishyn.&lt;/text&gt;&lt;/p&gt;
&lt;/entry&gt;

	</codeblock>
    </example>
  <section>
   <title>Changes</title>
  </section>
 </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-limited_ci.cite-LxAdv-p_text_lnci.cite.dita  -->
	

             <!-- BRT: this template is in one condition of match="p-limited" in base.xsl
             -->
             <xsl:template match="p-limited[child::ci:cite]">
                     <xsl:element name="p">
                         <xsl:element name="text">
                             <xsl:apply-templates/>
                         </xsl:element>
                     </xsl:element>

             </xsl:template>
         
</xsl:stylesheet>