<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.priorhist">
   <title>case:priorhist <lnpid>id-CA02CC-12429</lnpid></title>
   <body>
      <section>
        <ul>
         <li>
                    <sourcexml>case:priorhist</sourcexml> becomes
                        <targetxml>casedigest:body/casehist:casehist/casehist:priorhist/casehist:summary</targetxml>
                    <pre>

&lt;case:priorhist&gt;
    &lt;p&gt;
        &lt;text&gt;On appeal from Saskatchewan October 3, 1961&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:priorhist&gt;


<b>Becomes</b>
 

&lt;casedigest:body&gt;
    &lt;casehist:casehist&gt;
        &lt;casehist:priorhist&gt;
            &lt;casehist:summary&gt;
                &lt;p&gt;
                    &lt;text&gt;On appeal from Saskatchewan October 3, 1961&lt;/text&gt;
                &lt;/p&gt;
            &lt;/casehist:summary&gt;
        &lt;/casehist:priorhist&gt;
    &lt;/casehist:casehist&gt;
&lt;/casedigest:body&gt;    

          </pre> Second Scenario: <pre>
&lt;case:priorhist&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;glp:note&gt;
                &lt;p nl="0"&gt;
                    &lt;text&gt;
                    [Quicklaw note: Supplementary reasons for judgment were released October 3, 1997. See &lt;ci:cite&gt;
                            &lt;ci:case&gt;
                            &lt;ci:caseref ID="cref00001085" spanref="cspan00001085"&gt;
                                    &lt;ci:reporter value="AJ"/&gt;
                                    &lt;ci:edition&gt;
                                        &lt;ci:date year="1997"/&gt;
                                    &lt;/ci:edition&gt;
                                    &lt;ci:refnum num="961"/&gt;
                                &lt;/ci:caseref&gt;
                            &lt;/ci:case&gt;
                          &lt;ci:content&gt;
                             &lt;ci:span spanid="cspan00001085"&gt;[1997] A.J. No. 961&lt;/ci:span&gt;
                          &lt;/ci:content&gt;
                        &lt;/ci:cite&gt;.] 
                     &lt;/text&gt;
                &lt;/p&gt;
            &lt;/glp:note&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:priorhist&gt;
             
<b>Becomes</b>           
                        
&lt;casehist:casehist&gt;
    &lt;casehist:priorhist&gt;
        &lt;casehist:summary&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;inlinenote&gt;                       
                          [Quicklaw note: Supplementary reasons for judgment were
                                released October 3, 1997. See &lt;lnci:cite&gt;
                                &lt;lnci:case&gt;
                                   &lt;lnci:caseref ID="cref00001085"&gt;
                                      &lt;lnci:reporter value="AJ"/&gt;
                                         &lt;lnci:edition&gt;
                                            &lt;lnci:date year="1997"/&gt;
                                          &lt;/lnci:edition&gt;
                                          &lt;lnci:refnum num="961"/&gt;
                                      &lt;/lnci:caseref&gt;
                                 &lt;/lnci:case&gt;
                                        &lt;lnci:content&gt;[1997] A.J. No. 961&lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;.]                                
                    &lt;/inlinenote&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/casehist:summary&gt;
    &lt;/casehist:priorhist&gt;
&lt;/casehist:casehist&gt;

</pre>
                    <note>If <sourcexml>heading</sourcexml> comes as a child of
                            <sourcexml>case:priorhist</sourcexml></note>
                    <codeblock>
&lt;case:priorhist&gt;
    &lt;heading&gt;
        &lt;title&gt;En appel de :&lt;/title&gt;
    &lt;/heading&gt;
&lt;/case:priorhist&gt;
                 
                    </codeblock>
                    <b>Becomes</b>
                    <codeblock>
&lt;casedigest:body&gt;
    &lt;casehist:casehist&gt;
        &lt;casehist:priorhist&gt;
            &lt;casehist:summary&gt;
                &lt;heading&gt;
                    &lt;title&gt;En appel de :&lt;/title&gt; 
                &lt;/heading&gt;
            &lt;/casehist:summary&gt;
        &lt;/casehist:priorhist&gt;
    &lt;/casehist:casehist&gt;
&lt;/casedigest:body&gt;
                 
             </codeblock>
                </li>
        </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2014-05-15: <ph id="change_20140515_AS">Note to handle if heading comes as a child of case:priorhist... DB issue# 208</ph></p>
       </section>
   </body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.priorhist.dita  -->
<!-- Sudhanshu Srivastava edited on 16-May-2017.-->
	<xsl:template match="case:priorhist">
		<!--  Original Target XPath:  casedigest:body/casehist:casehist/casehist:priorhist/casehist:summary   -->
			<casehist:casehist>
				<casehist:priorhist>
					<casehist:summary>
						<xsl:apply-templates select="@* | node()"/>
					</casehist:summary>
				</casehist:priorhist>
			</casehist:casehist>
	</xsl:template>
</xsl:stylesheet>