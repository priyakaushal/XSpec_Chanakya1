<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
   <title>case:casename <lnpid>id-CA02CC-12410</lnpid></title>
   <body>
      <section>
<ul>
         <li>
                    <sourcexml>case:casename</sourcexml> becomes
                        <targetxml>caseinfo:casename</targetxml> and populate the child as below: <ul>
                        <li>Create <targetxml>caseinfo:fullcasename</targetxml>
                        </li>
                    </ul>
             <note>Place <targetxml>caseinfo:fullcasename</targetxml> within hierarchy of <targetxml>casedigest:head/casedigest:caseinfo</targetxml>. Please see below target examples for more details.</note>  
             
             <note>Any <sourcexml>nl</sourcexml> elements that occur inside
                 <sourcexml>case:casename</sourcexml> should be suppressed if they are preceded or
                 followed by a space. Any <sourcexml>nl</sourcexml> elements that are not preceded or
                 followed by a space should be converted into a single space character.</note>
                  
             <pre>

&lt;case:casename&gt;Between&lt;nl/&gt; Her Majesty the Queen, and&lt;nl/&gt; Joseph Moore&lt;/case:casename&gt;

            </pre>
                    <b>Becomes</b>
                    <pre>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;Between Her Majesty the Queen, and Joseph Moore&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

          </pre>
                    <pre>
             
<b>Handling of <sourcexml>case:casename/glp:note</sourcexml> scenario</b>

&lt;case:casename&gt;Requests for Leave to Intervene&lt;nl/&gt; Reasons and Order&lt;nl/&gt;
    &lt;glp:note&gt;
        &lt;p&gt;
            &lt;text&gt;[Ed. note: Rev'd [1989] 2 F.C. 88 (C.A.), rev'd&lt;nl/&gt; [1989] 1 S.C.R. 236.]&lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;&lt;nl/&gt; IN THE MATTER OF an application by the Director of&lt;nl/&gt; Investigation and
    Research under Subsection 64(1) of the&lt;nl/&gt; Competition Act, R.S.C., 1970, c. C-23 as
    amended;&lt;nl/&gt; AND IN THE MATTER OF a Limited Partnership formed to combine&lt;nl/&gt; the operations
    of the Reservec and Pegasus computer&lt;nl/&gt; reservation systems;&lt;nl/&gt; AND IN THE MATTER OF The
    Gemini Group Automated Distribution&lt;nl/&gt; Systems Inc.&lt;nl/&gt; Between&lt;nl/&gt; The Director of
    Investigation and Research, Applicant, and&lt;nl/&gt; Air Canada, Air Canada Services Inc., PWA
    Corporation,&lt;nl/&gt; Canadian Airlines International Ltd., Pacific Western&lt;nl/&gt; Airlines Ltd.,
    Canadian Pacific Air Lines, Limited, 154793&lt;nl/&gt; Canada Ltd., 153333 Canada Limited Partnership,
    The Gemini&lt;nl/&gt; Group Automated Distribution Systems Inc., Respondents,&lt;nl/&gt; Consumers'
    Association of Canada, American Airlines Inc.,&lt;nl/&gt; Wardair Canada Inc., Applicants for Leave to
    Intervene 
&lt;/case:casename&gt;

          
          <b>Becomes</b>           
          

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;case:casename&gt;Requests for Leave to Intervene Reasons and Order 
            &lt;note&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;[Ed. note: Rev'd [1989] 2 F.C. 88 (C.A.), rev'd [1989] 1 S.C.R. 236.] &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt; IN THE MATTER OF an application by the Director of Investigation and Research under
            Subsection 64(1) of the Competition Act, R.S.C., 1970, c. C-23 as amended; AND IN THE MATTER OF
            a Limited Partnership formed to combine the operations of the Reservec and Pegasus computer
            reservation systems; AND IN THE MATTER OF The Gemini Group Automated Distribution Systems Inc.
            Between The Director of Investigation and Research, Applicant, and Air Canada, Air Canada
            Services Inc., PWA Corporation, Canadian Airlines International Ltd., Pacific Western Airlines
            Ltd., Canadian Pacific Air Lines, Limited, 154793 Canada Ltd., 153333 Canada Limited
            Partnership, The Gemini Group Automated Distribution Systems Inc., Respondents, Consumers'
            Association of Canada, American Airlines Inc., Wardair Canada Inc., Applicants for Leave to
            Intervene 
        &lt;/case:casename&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
  
           </pre>
                </li>
      </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2013-04-24: <ph id="change_20130424_AS">Fullcasename displayed in multiple lines under casename... "DB item #1151</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.casename.dita  -->
<!-- Sudhanshu Srivastava edited on 15-May-2017. -->
    <xsl:template match="case:casename">
		<!--  Original Target XPath:  caseinfo:casename   -->
		<caseinfo:casename>
		    <caseinfo:fullcasename>
			<xsl:apply-templates select="@* | node()"/>
		    </caseinfo:fullcasename>
		</caseinfo:casename>
	</xsl:template>
    
    <!-- Awantika-2017-12-01-Created this template for Webstar  6994049, CI doesn't say to create proc:nl
                "Any nl elements that occur inside case:casename should be suppressed if they are preceded or followed by a space. Any nl elements that
are not preceded or followed by a space should be converted into a single space character." -->
    <xsl:template match="case:casename/nl">
        <xsl:choose>
            <xsl:when test="ends-with(preceding-sibling::text()[1], ' ') or starts-with(following-sibling::text()[1], ' ')"/>
            <xsl:otherwise>
                <xsl:text> </xsl:text>
            </xsl:otherwise>
        </xsl:choose> 
    </xsl:template> 
</xsl:stylesheet>