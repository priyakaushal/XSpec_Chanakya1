<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"  
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    version="2.0" exclude-result-prefixes="dita leg legisinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelinfo_leg.levelstatus">
    <title>leg:levelinfo/leg:levelstatus <lnpid>id-HK04-36618</lnpid></title>
  <body>
    <section>
        <p> The conversion for <sourcexml>leg:levelstatus</sourcexml> is based
            on the following scenarios: 
                    <ul>
                        <li>If the
                            <sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
                        with text in that then becomes
                            <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
                            legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                        <note>Include the <targetxml>@statuscode</targetxml> in element
                                <targetxml>legisinfo:status</targetxml> to represent repealed
                            legislation.</note>
                        <pre>

&lt;leg:level id="AOHK.0290.SUBLEG_290A.RUL2.3"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION SUBRUL" leveltype="subrul"&gt;
    &lt;leg:levelinfo&gt;
        &lt;leg:levelstatus isrepealed="true"&gt;(Repealed)&lt;/leg:levelstatus&gt;&lt;/leg:levelinfo&gt;
            ....
&lt;/leg:level&gt;

            
            <b>Becomes</b>
            

&lt;primlaw:level xml:id="AOHK.0290.SUBLEG_290A.RUL2.3" leveltype="subrule"&gt;
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
                            <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
                            then supress the element.</li>
                    </ul>
                    <note>For handling <b>@ln.user-displayed</b> attribute,
                        refer the general markup <xref href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the
                        CI.</note>
        </p> 
    </section>
      <section>
          <title>Changes</title>
          <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
      </section>
  </body>
	</dita:topic>


	<xsl:template match="leg:levelinfo[leg:levelstatus[@isrepealed='true']]">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext   -->
	    <primlaw:levelinfo>
	        <primlawinfo:primlawinfo>
	            <legisinfo:legisinfo>
	                <legisinfo:statusgroup>
	                    <legisinfo:status>
	                        <xsl:attribute name="statuscode">repealed</xsl:attribute>
	                        <xsl:if test="not(leg:levelstatus/@ln.user-displayed='false')">
	                        <legisinfo:statustext>
	                            <xsl:apply-templates select="node()"/>
	                        </legisinfo:statustext>
	                        </xsl:if>
	                    </legisinfo:status>
	                </legisinfo:statusgroup>
	            </legisinfo:legisinfo>
	        </primlawinfo:primlawinfo>
	    </primlaw:levelinfo>

	</xsl:template>
    


    <xsl:template match="leg:levelinfo[leg:levelstatus[@isrepealed='false']]"/>

</xsl:stylesheet>