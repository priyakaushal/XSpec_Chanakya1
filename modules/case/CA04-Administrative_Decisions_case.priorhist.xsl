<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.priorhist">
   <title>case:priorhist <lnpid>id-CA04-13432</lnpid></title>
   <body>
      <section>
        <ul>
         <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:priorhist</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">casehist:casehist/casehist:priorhist/casehist:summary</targetxml>
           
           <pre xml:space="preserve" class="- topic/pre ">
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
             
<b class="+ topic/ph hi-d/b ">Becomes</b>           
                        
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
         </li>
          <li>
            If <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:priorhist</sourcexml> is child of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/case:headnote</sourcexml> then it becomes <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:appendix/casehist:casehist</targetxml> and create <targetxml class="+ topic/keyword xml-d/targetxml ">casehist:priorhist/casehist:summary</targetxml> within <targetxml class="+ topic/keyword xml-d/targetxml ">casehist:casehist</targetxml>
            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:appendix&gt;
    &lt;case:headnote&gt;
        &lt;case:priorhist&gt;
            &lt;p&gt;
                &lt;text&gt;APPENDIX "C"&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;AUTHORITIES&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;The Employer&lt;/text&gt;
            &lt;/p&gt;
            &lt;l virtual-nesting="2"&gt;
                &lt;li&gt;
                    &lt;lilabel&gt;1.&lt;/lilabel&gt;
                    &lt;p&gt;
                       &lt;text&gt;
                       Re Motor Transport Industrial Relations Bureau of Ontario and General
                       Truck Drivers' Union, Local 938,
                       &lt;ci:cite&gt;
                            &lt;ci:case&gt;
                                &lt;ci:caseinfo&gt;
                                 &lt;ci:decisiondate year="1973"/&gt;
                                &lt;/ci:caseinfo&gt;
                             &lt;ci:caseref ID="cref00015137" spanref="cspan00015137"&gt;
                                &lt;ci:reporter value="LAC2"/&gt;
                                &lt;ci:volume num="4"/&gt;
                                &lt;ci:page num="154"/&gt;
                             &lt;/ci:caseref&gt;
                             &lt;/ci:case&gt;
                             &lt;ci:content&gt;
                             (1973) 4 L.A.C. (2d) 154
                            &lt;/ci:content&gt;
                         &lt;/ci:cite&gt;.
                         &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/li&gt;
            &lt;/l&gt;
        &lt;/case:priorhist&gt;
    &lt;/case:headnote&gt;
&lt;/case:appendix&gt;
</pre>
            <b class="+ topic/ph hi-d/b ">Becomes</b>
            <pre xml:space="preserve" class="- topic/pre ">
            &lt;admindecision:appendix&gt;
    &lt;casehist:casehist&gt;
        &lt;casehist:priorhist&gt;
            &lt;casehist:summary&gt;
                &lt;p&gt;
                    &lt;text&gt;APPENDIX "C"&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;AUTHORITIES&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;The Employer&lt;/text&gt;
                &lt;/p&gt;                
                    &lt;list&gt;
                        &lt;listitem&gt;
                            &lt;label&gt;1.&lt;/label&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                   &lt;text&gt;
                                   Re Motor Transport Industrial Relations Bureau of Ontario and General
                                   Truck Drivers' Union, Local 938,
                                    &lt;lnci:cite&gt;
                                         &lt;lnci:case&gt;
                                             &lt;lnci:caseinfo&gt;
                                              &lt;lnci:decisiondate year="1973"/&gt;
                                             &lt;/lnci:caseinfo&gt;
                                          &lt;lnci:caseref ID="cref00015137"&gt;
                                             &lt;lnci:reporter value="LAC2"/&gt;
                                             &lt;lnci:volume num="4"/&gt;
                                             &lt;lnci:page num="154"/&gt;
                                          &lt;/lnci:caseref&gt;
                                          &lt;/lnci:case&gt;
                                          &lt;lnci:content&gt;(1973) 4 L.A.C. (2d) 154&lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;.
                                 &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/listitem&gt;
                    &lt;/list&gt;                
            &lt;/casehist:summary&gt;
        &lt;/casehist:priorhist&gt;
    &lt;/casehist:casehist&gt;
&lt;/admindecision:appendix&gt;
            </pre>          
            </li>
        </ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.priorhist.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.priorhist.xsl requires manual development!</xsl:message> -->

    <xsl:template match="case:priorhist">

		<xsl:choose>
		    <xsl:when test="parent::case:headnote and ancestor::case:appendix">
		        <!--<admindecision:appendix>-->
		            <casehist:casehist>
		                <casehist:priorhist>
		                    <casehist:summary>
		                        <xsl:apply-templates select="@* | node()"/>
		                    </casehist:summary>
		                </casehist:priorhist>
		            </casehist:casehist>
		        <!--</admindecision:appendix>-->
		         </xsl:when>
		    <xsl:otherwise>
		        <casehist:casehist>
		            <casehist:priorhist>
		                <casehist:summary>
		                    <xsl:apply-templates select="@* | node()"/>
		                </casehist:summary>
		            </casehist:priorhist>
		        </casehist:casehist>
		    </xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	

</xsl:stylesheet>