<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" 
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelinfo_leg.levelstatus">
    <title>leg:levelinfo/leg:levelstatus <lnpid>id-HK01-36818</lnpid></title>
  <body>
    <section>
        <p> The conversion for <sourcexml>leg:levelstatus</sourcexml> is based
            on the following scenarios: 
                    <ol>
                        <li>If the
                            <sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
                            with text in that then becomes
                            <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
                                legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                            <note>Include the <targetxml>@statuscode</targetxml>
                                in element <targetxml>legisinfo:status</targetxml>
                                to represent repealed legislation.</note>
        <pre>

&lt;leg:level id="LOHK.CAP341.SCH2"&gt;
    &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION SCHEDULE" subdoc="false" toc-caption="SCHEDULE 2 Repealed"&gt;
        &lt;leg:levelinfo&gt;
            &lt;leg:levelstatus isrepealed="true"&gt;(Repealed)&lt;/leg:levelstatus&gt;
        &lt;/leg:levelinfo&gt;
        ....
&lt;/leg:level&gt;

            
            <b>Becomes</b>
            

&lt;primlaw:level xml:id="LOHK.CAP341.SCH2" leveltype="schedule" subdoc="false" toc-caption="SCHEDULE 2 Repealed"&gt;
    &lt;primlaw:levelinfo&gt;
        &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status statuscode="repealed"&gt;
                        &lt;legisinfo:statustext&gt;(Repealed)&lt;/legisinfo:statustext&gt;
                    &lt;/legisinfo:status&gt;
                &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
       &lt;/primlawinfo:primlawinfo&gt;
   &lt;/primlaw:levelinfo&gt;
   ....
&lt;/primlaw:level&gt;            

          </pre>
                        </li>
                        <li>If the
                            <sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
                            with no text in that then becomes
                            <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
                                legisinfo:status[@statuscode="repealed"]</targetxml>
                            <pre>

&lt;leg:level id="LOHK.CAP341.SCH2"&gt;
    &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION SCHEDULE"&gt;
        &lt;leg:levelinfo&gt;
            &lt;leg:levelstatus isrepealed="true"/&gt;
        &lt;/leg:levelinfo&gt;

              
              <b>Becomes</b>
              

&lt;primlaw:level xml:id="LOHK.CAP341.SCH2" leveltype="schedule"&gt;
    &lt;primlaw:levelinfo&gt;
        &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status statuscode="repealed"/&gt;
                &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
        &lt;/primlawinfo:primlawinfo&gt;
    &lt;/primlaw:levelinfo&gt;
    ....
&lt;/primlaw:level&gt;
              
              </pre>
                        </li>
                        <li>If the <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml> then
                        supress the element.
                    </li>
                    </ol>
                    <note>For handling <b>@ln.user-displayed</b> attribute,
                        refer the general markup <xref href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the
                        CI.</note>
        </p> 
    </section>
<section>
    <title>Changes</title>
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\leg.levelinfo_leg.levelstatus.dita  -->

    <xsl:template match="leg:levelinfo/leg:levelstatus[@isrepealed='true']">
                    <legisinfo:statusgroup>
                        <legisinfo:status statuscode="repealed">
                            <xsl:if test="node() and not(@ln.user-displayed)">
                                <legisinfo:statustext>
                                    <xsl:apply-templates select="node() except refpt"/>
                                </legisinfo:statustext>
                            </xsl:if>
                        </legisinfo:status>
                    </legisinfo:statusgroup>
        
	</xsl:template>
    	
	<xsl:template match="leg:levelinfo/leg:levelstatus/@isrepealed"/>

				
    <xsl:template match="leg:levelinfo/leg:levelstatus[@isrepealed='false'and not(@isrepealed='true')]"/>
    
    <xsl:template match="leg:levelinfo">
        <xsl:choose>
            <xsl:when test="$streamID='HK01' and child::*[not(self::leg:levelstatus[@isrepealed='false'])]">
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <xsl:apply-templates select="@* | node()"/>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>                
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
    
    <!-- ln.user-displayed='false' scenario is addressed in modules/leg/Rosetta_leg.levelstatus_ln.user-displayed.xsl -->

		
</xsl:stylesheet>