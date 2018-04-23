<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judgments">
   <title>case:judgments <lnpid>id-CA02CC-12425</lnpid></title>
   <body>
      <section>
          <ul>
         <li>
                    <sourcexml>case:judgments</sourcexml> becomes
                        <targetxml>casedigest:decision</targetxml>, children are populated as below: <ul>
                        <li><sourcexml>case:judgment</sourcexml> becomes
                                <targetxml>casedigest:decisionsummary</targetxml> within
                                <targetxml>casedigest:decision</targetxml>.</li>
                        <li><sourcexml>case:judgmentbody</sourcexml> becomes
                                <targetxml>bodytext</targetxml> within
                                <targetxml>casedigest:decisionsummary</targetxml>.</li>
                    </ul>
                    <pre>

&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;case:judgment&gt;
            &lt;case:judgmentbody&gt;
                &lt;p&gt;
                    &lt;text align="center"&gt;
                        &lt;emph typestyle="bf"&gt;COURT OF APPEAL&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;R. v. Conway&lt;/text&gt;
                &lt;/p&gt;
                
                &lt;p&gt;
                    &lt;text&gt;E.A. Roscoe, N.J. Bateman and J.W.S. Saunders JJ.A., September 23,
                        2009.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;A sixty-five year old married father was operating a Dial-a-Dope
                        operation out of his truck. Distribution paraphernalia was found in
                        his home. The total drug weight, value and amount of currency was
                        103.1 grams of crack cocaine with an approximate street value of
                        $10,310.00; 264.12 grams of cannabis marihuana with an approximate
                        street value of $2,650.00 and $2,938.00 in Canadian currency. He
                        entered an early guilty plea. He was given a conditional sentence of
                        two years less a day followed by two years probation. He was
                        permitted to attend work as a driver for his wife's cleaning
                        business and necessary medical and legal appointments. Otherwise,
                        house arrest for full term. The Crown appealed.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;Issues&lt;/emph&gt;: Did the judge err in law or
                        principle or is the sentence manifestly unfit?&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;R. v. Humphreys&lt;/text&gt;
                &lt;/p&gt;
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
    &lt;/case:judgments&gt;
&lt;/case:content&gt;


<b>Becomes</b>


&lt;casedigest:body&gt;
    &lt;casedigest:decision&gt;
        &lt;casedigest:decisionsummary&gt;
            &lt;bodytext&gt;
                &lt;p align="center"&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="bf"&gt;COURT OF APPEAL&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;R. v. Conway&lt;/text&gt;
                &lt;/p&gt;
                
                &lt;p&gt;
                    &lt;text&gt;E.A. Roscoe, N.J. Bateman and J.W.S. Saunders JJ.A., September 23,
                        2009.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;A sixty-five year old married father was operating a Dial-a-Dope
                        operation out of his truck. Distribution paraphernalia was found in
                        his home. The total drug weight, value and amount of currency was
                        103.1 grams of crack cocaine with an approximate street value of
                        $10,310.00; 264.12 grams of cannabis marihuana with an approximate
                        street value of $2,650.00 and $2,938.00 in Canadian currency. He
                        entered an early guilty plea. He was given a conditional sentence of
                        two years less a day followed by two years probation. He was
                        permitted to attend work as a driver for his wife's cleaning
                        business and necessary medical and legal appointments. Otherwise,
                        house arrest for full term. The Crown appealed.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;Issues&lt;/emph&gt;: Did the judge err in law or
                        principle or is the sentence manifestly unfit?&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;R. v. Humphreys&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/casedigest:decisionsummary&gt;
    &lt;/casedigest:decision&gt;
&lt;/casedigest:body&gt;

         </pre>
                    <note>
                        <b>Canada CA02 Only:</b> If <sourcexml>footnotegrp</sourcexml> is a child of
                            <sourcexml>case:judgments</sourcexml>, then it becomes
                            <targetxml>casedigest:body/casedigest:decision/casedigest:decisionsummary/bodytext/p/text/footnotegroup</targetxml>.
                        Please refer the example below for more clarification. </note>
                    <pre><b>Source XML</b>
                 
&lt;case:judgments&gt;
    &lt;footnotegrp&gt;
        &lt;footnote fntoken="fn-1" fnrtokens="fnr-1"&gt;
            &lt;fnlabel&gt;1&lt;/fnlabel&gt;
            &lt;fnbody&gt;
                &lt;p&gt;
                    &lt;text&gt;R.S.N.L. 1990, c. F-12.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/fnbody&gt;
        &lt;/footnote&gt;
    &lt;/footnotegrp&gt;
&lt;/case:judgments&gt;
            
             </pre>
                    <pre>
                 <b>Target XML</b>
                 
&lt;casedigest:body&gt;
    &lt;casedigest:decision&gt;
        &lt;casedigest:decisionsummary&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;footnotegroup&gt;
                            &lt;footnote&gt;
                                &lt;ref:anchor id="fn-1"/&gt;
                                &lt;ref:returnreference&gt;
                                    &lt;ref:locator anchoridref="fnr-1" anchortype="local"/&gt;
                                &lt;/ref:returnreference&gt;
                                &lt;label&gt;1&lt;/label&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;R.S.N.L. 1990, c. F-12.&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/footnote&gt;
                        &lt;/footnotegroup&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/casedigest:decisionsummary&gt;
    &lt;/casedigest:decision&gt;
&lt;/casedigest:body&gt;
                 </pre>
                </li>
          </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2014-06-06: <ph id="change_20140606_AS">Canada CA02 only. Added special rule for
                        <sourcexml>case:judgements/footnotegrp</sourcexml> to map to
                        <targetxml>casedigest:body/casedigest:decision/casedigest:decisionsummary/bodytext/p/text/footnotegroup</targetxml>
                    Phase 4 Issue 207.</ph></p>
       </section>         
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.judgments.dita  -->
	 
<!-- Sudhanshu Srivastava edited on 16-May-2017.-->
	<xsl:template match="case:judgments">
		<!--  Original Target XPath:  casedigest:decision   -->
		<casedigest:decision>
		    <xsl:choose>
		        <xsl:when test="footnotegrp and not(case:judgment)">
		            <casedigest:decisionsummary>
		                <bodytext>
		                    <p>
		                        <text>
		                            <xsl:apply-templates select="@* | node()"/>
		                        </text>
		                    </p>
		                </bodytext>
		            </casedigest:decisionsummary>
		        </xsl:when>
		        <xsl:otherwise>
		            <xsl:apply-templates select="@* | node()"/>        
		        </xsl:otherwise>
		    </xsl:choose>
		</casedigest:decision>
	</xsl:template>

	<xsl:template match="case:judgment">
		<!--  Original Target XPath:  casedigest:decisionsummary   -->
		<casedigest:decisionsummary>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:decisionsummary>
	</xsl:template>

	<xsl:template match="case:judgmentbody">
		<!--  Original Target XPath:  bodytext   -->
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>
	</xsl:template>
</xsl:stylesheet>