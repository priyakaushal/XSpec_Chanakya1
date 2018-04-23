<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
    xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info_case.courtinfo_case.dates">
   <title>case:dates <lnpid>id-AU07-19218</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:dates</sourcexml> is a container element and need not be carried forward in the conversion. However, all content must be converted such that the order of elements is maintained whenever possible. Please see the "Maintain the Order of Elements Whenever Possible" section for more information. The child element is described as below :
                                <ul class="- topic/ul ">
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:dates/case:decisiondate/date @day="" @month="" @year=""</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:issuedate @day="" @month="" @year=""</targetxml>
                              <pre xml:space="preserve" class="- topic/pre ">
&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;
            &lt;case:dates&gt;
                &lt;case:decisiondate&gt;
                    &lt;date day="22" month="06" year="1995"&gt;22 June 1995&lt;/date&gt;
                &lt;/case:decisiondate&gt;
            &lt;/case:dates&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;
    &lt;courtorder:issuedate day="22" month="06" year="1995"&gt;22 June 1995&lt;/courtorder:issuedate&gt;
&lt;/courtorder:head&gt;                
</pre>
                                    
                                    <p class="- topic/p "/>
                                    </li>
                                    <li class="- topic/li ">
                                        <p class="- topic/p ">
                                 <b class="+ topic/ph hi-d/b ">The following conversion instruction is specific to NZ CourtOrders:</b>
                              </p>
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:dates/case:hearingdates</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">/courtorder:head/caseinfo:caseinfo/decision:dates/decision:argueddate</targetxml>                                        
                                        <note class="- topic/note ">This is likely not a complete date, rather just a day. Do not attempt to place a complete date if there is not sufficient content in source (year, month and day). It should remain PCDATA. See
                                        example.</note>
                              <pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;
            &lt;case:dates&gt;
                &lt;case:hearingdates&gt;17 October; &lt;/case:hearingdates&gt;
            &lt;/case:dates&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:head&gt;
    &lt;caseinfo:caseinfo&gt;
        &lt;decision:dates&gt;
            &lt;decision:argueddate&gt;17 October; &lt;/decision:argueddate&gt;
        &lt;/decision:dates&gt;
    &lt;/caseinfo:caseinfo&gt;            
&lt;/courtorder:head&gt;                
</pre>
                                    
                                    </li>
                                </ul>                            
                            </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.courtinfo.case.dates.dita  -->
	 

    <xsl:template match="case:dates | case:dates/case:decisiondate/date">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="case:dates/case:decisiondate">
	        <courtorder:issuedate>
	            <xsl:if test="date/@year[.!='']">
	                <xsl:call-template name="DATE_attributes">
	                    <xsl:with-param name="date">
	                        <xsl:copy-of select="date"/>
	                    </xsl:with-param>
	                </xsl:call-template>
	            </xsl:if>	
	            <xsl:apply-templates/>
	        </courtorder:issuedate>    
	</xsl:template>
    
    <!-- JL since I'm not doing NZ right now this could output in the wrong place.  Please test -->

    <xsl:template match="case:info/case:courtinfo/case:dates/case:hearingdates[starts-with($streamID , 'NZ')]">
        <case:hearingdates>
            <xsl:apply-templates/>
        </case:hearingdates>    
    </xsl:template>

</xsl:stylesheet>