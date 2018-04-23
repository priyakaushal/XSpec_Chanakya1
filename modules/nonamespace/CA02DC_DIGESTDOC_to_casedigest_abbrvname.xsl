<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="abbrvname">
   <title>abbrvname <lnpid>id-CA02DC-12607</lnpid></title>
   <body>
      <section>
<ul>
         <li>
                    <sourcexml>abbrvname</sourcexml> becomes
                        <targetxml>caseinfo:casename/caseinfo:shortcasename</targetxml> and retain
                    within target <targetxml>casedigest:head/casedigest:caseinfo</targetxml>,
                    attribute <sourcexml>@display-name</sourcexml> becomes
                        <targetxml>@name</targetxml> and attribute
                        <sourcexml>@searchtype</sourcexml> will be suppressed during conversion. <pre>


&lt;case:info&gt;
    .........
    &lt;abbrvname searchtype="SHORT-CASE-NAME"&gt;Employer: Hanna Turbo&lt;/abbrvname&gt;
    .........
&lt;/case:info&gt; 

                    </pre>
                    <b>Becomes</b>
                    <pre>
    

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        .......
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:shortcasename&gt;Employer: Hanna Turbo&lt;/caseinfo:shortcasename&gt;
        &lt;/caseinfo:casename&gt;
        .......   
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

               </pre>
                    <note>If input document has <sourcexml>nl</sourcexml> within
                            <sourcexml>abbrvname</sourcexml> then convert all newlines to a single
                        space character.</note>
                    <pre>


&lt;case:info&gt;
    ......
    &lt;abbrvname searchtype="SHORT-CASE-NAME"&gt;Employer: Alberta Habitat Education and Development&lt;nl/&gt;Society&lt;/abbrvname&gt;
    .......
&lt;/case:info&gt; 

                    </pre>
                    <b>Becomes</b>
                    <pre>
    

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        .......
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:shortcasename&gt;Employer: Alberta Habitat Education and Development Society&lt;/caseinfo:shortcasename&gt;
        &lt;/caseinfo:casename&gt;
        .......   
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

        </pre>
                </li>
   <li> If <sourcexml>abbrvname</sourcexml> is the child of <targetxml>case:courtinfo</targetxml> then it will
               become <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml> with attribute
                  <targetxml>@normshortname</targetxml>
               <pre>


&lt;case:info&gt;
    &lt;case:courtinfo&gt;
        &lt;abbrvname ln.user-displayed="false"&gt;ABEmpStdsUmp&lt;/abbrvname&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

                    
      <b>Becomes</b> 
      

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;jurisinfo:courtname normshortname="ABEmpStdsUmp"/&gt;
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

      </pre>
              <!-- <note>For handling <sourcexml>@ln.user-displayed</sourcexml> attribute, refer the general markup
                   <xref href="../../../common_newest/Rosetta_abbrvname_ln.user-displayed.dita">Rosetta_abbrvname_ln.user-displayed</xref> section in the CI.</note>-->
            </li>
      </ul>
          
          <note><sourcexml>case:courtinfo/abbrvname</sourcexml> will also be mapped in
                    <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode</targetxml>. For
                more confirmation please see below examples.</note>
          <pre>


&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;
            &lt;abbrvname ln.user-displayed="false"&gt;CASCC&lt;/abbrvname&gt;
            &lt;case:courtname&gt;Supreme Court of Canada&lt;nl/&gt; On appeal from British Columbia&lt;/case:courtname&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;

<b>Becomes</b> 
   
&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;jurisinfo:courtname normshortname="CASCC"&gt;Supreme Court of Canada&lt;proc:nl/&gt; On appeal from British
                Columbia&lt;/jurisinfo:courtname&gt;
            &lt;jurisinfo:alternatecourtcode alternatecourtcode="CASCC"/&gt;
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

</pre>
</section>
       
       <section><title>Changes</title>
           <p>2014-10-22<ph id="change_20141022">Updated CI for <targetxml>jurisinfo:courtname@normshortname</targetxml> to also be placed in <targetxml>jurisinfo:alternatecourtcode@alternatecourtcode</targetxml>...R4.5 Db issue #1987</ph></p>
       </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\abbrvname.dita  -->
	 

    <!-- Vikas Rohilla : Template to match the case:info/abbrvname -->
    <xsl:template match="case:info/abbrvname">
        <caseinfo:casename>
        <caseinfo:shortcasename>
            <xsl:if test="@display-name">
                <xsl:attribute name="name">
                    <xsl:value-of select="@display-name"/>
                </xsl:attribute>
            </xsl:if>
        <xsl:apply-templates select="node()"/>
        </caseinfo:shortcasename>
        </caseinfo:casename>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the case:courtinfo/abbrvname -->
    <xsl:template match="case:courtinfo/abbrvname">
        <xsl:attribute name="normshortname">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <!-- Awantika:2017-12-01- Updated for webstar# 7043180. "If input document has nl within abbrvname then convert all newlines to a single space character." -->
    <xsl:template match="abbrvname/nl">
        <xsl:choose>
            <xsl:when test="ends-with(preceding-sibling::text()[1], ' ') or starts-with(following-sibling::text()[1], ' ')"/>
            <xsl:otherwise>
                <xsl:text> </xsl:text>
            </xsl:otherwise>
        </xsl:choose> 
    </xsl:template>
</xsl:stylesheet>