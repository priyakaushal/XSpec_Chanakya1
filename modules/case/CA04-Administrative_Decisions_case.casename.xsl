<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
   <title>case:casename <lnpid>id-CA04-13413</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:casename</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">caseinfo:casename</targetxml> and populate the child as below: <ul class="- topic/ul ">
                        <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">caseinfo:fullcasename</targetxml>
                        </li>
                        <li>Any <sourcexml>nl</sourcexml> elements that occur inside
                                <sourcexml>case:casename</sourcexml> should be suppressed if they
                            are preceded or followed by a space. Any <sourcexml>nl</sourcexml>
                            elements that are not preceded or followed by a space should be
                            converted into a single space character. If <sourcexml>nl</sourcexml>
                            element is followed by new line, then <sourcexml>nl</sourcexml> and new
                            line will be replaced by single space.</li>
                    </ul>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:casename&gt;IN THE MATTER OF Sections 84, 85, 86 and 87 of the&lt;nl/&gt; Environmental Protection and
    Enhancement Act (S.A. 1992, ch.&lt;nl/&gt; E-13.3) as amended;&lt;nl/&gt; AND IN THE MATTER OF an appeal
    filed by Maurice Boucher et al&lt;nl/&gt; dated December 4, 1993 with respect to Approval
    93-MUN-008&lt;nl/&gt; issued on November 8, 1993 by Mr. David Spink, then Acting&lt;nl/&gt; Director,
    Department of Environmental Protection, relative to&lt;nl/&gt; the construction of a water
    transmission line from the Village&lt;nl/&gt; of Nampa to the Hamlet of Marie Reine. &lt;/case:casename&gt;         
             
          <b class="+ topic/ph hi-d/b ">Becomes</b>             
          

&lt;caseinfo:fullcasename&gt;IN THE MATTER OF Sections 84, 85, 86 and 87 of the Environmental Protection
    and Enhancement Act (S.A. 1992, ch. E-13.3) as amended; AND IN THE MATTER OF an appeal filed by
    Maurice Boucher et al dated December 4, 1993 with respect to Approval 93-MUN-008 issued on
    November 8, 1993 by Mr. David Spink, then Acting Director, Department of Environmental
    Protection, relative to the construction of a water transmission line from the Village of Nampa
    to the Hamlet of Marie Reine. &lt;/caseinfo:fullcasename&gt;
</pre>
                    <b>Example of <sourcexml>nl</sourcexml> followed by space:</b>
                    <pre><b>Source XML</b>

&lt;case:casename&gt;Concordia University, appellant;&lt;nl/&gt; v.&lt;nl/&gt; Richard Bisaillon, respondent, and&lt;nl/&gt;
    Régie des rentes du Québec, respondent, and&lt;nl/&gt; Concordia University Faculty Association
    (CUFA), John&lt;nl/&gt; Hall and Howard Fink, respondents.&lt;nl/&gt; And between&lt;nl/&gt; Concordia University
    Faculty Association (CUFA),&lt;nl/&gt; appellant;&lt;nl/&gt; v.&lt;nl/&gt; Richard Bisaillon, respondent, and&lt;nl/&gt;
    Régie des rentes du Québec, respondent, and&lt;nl/&gt; Concordia University, John Hall and Howard
    Fink,&lt;nl/&gt; respondents.&lt;/case:casename&gt;      

<b>Target XML</b>

&lt;caseinfo:fullcasename&gt;Concordia University, appellant; v. Richard Bisaillon, respondent, and Régie
    des rentes du Québec, respondent, and Concordia University Faculty Association (CUFA), John
    Hall and Howard Fink, respondents. And between Concordia University Faculty Association (CUFA),
    appellant; v. Richard Bisaillon, respondent, and Régie des rentes du Québec, respondent, and
    Concordia University, John Hall and Howard Fink, respondents.&lt;/caseinfo:fullcasename&gt;        
          </pre>
                    <pre xml:space="preserve" class="- topic/pre ">
<b>Handling of case:casename/glp:note scenario</b>
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
          
          <b class="+ topic/ph hi-d/b ">Becomes</b>           
          
&lt;caseinfo:fullcasename&gt;Requests for Leave to Intervene Reasons and Order 
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;[Ed. note: Rev'd [1989] 2 F.C. 88 (C.A.), rev'd  [1989] 1 S.C.R. 236.] &lt;/text&gt;
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
&lt;/caseinfo:fullcasename&gt;  
           </pre>
                </li>
      </ul>
      </section>
       
       <section>
           <title>Changes</title>
           <p>2014-08-20: <ph id="change_20140820_AS">Update rule for <sourcexml>nl</sourcexml>
                    inside <sourcexml>case:casename</sourcexml> where there is a newline after
                        <sourcexml>nl</sourcexml>. <b>Db issue no. #329</b></ph></p>
           <p>2014-04-01: <ph id="change_20140401_VA">Update rule for <sourcexml>nl</sourcexml>
                    inside <sourcexml>case:casename</sourcexml>. These changes immediate applies to CA04 - Administrative Decisions.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.casename.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.casename.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:casename">
		<caseinfo:casename>
		    <caseinfo:fullcasename>
			<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
		    <xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:info/abbrvname"/>
		</caseinfo:casename>
	</xsl:template>

    <!--RS[2017-12-01]: Created template for handling nl elements that are not preceded or followed by a space should be converted into a single space character-->
    <xsl:template match="case:casename/nl">
        <xsl:choose>
            <xsl:when test="ends-with(preceding-sibling::text()[1], ' ') or starts-with(following-sibling::text()[1], ' ')"/>
            <xsl:otherwise>
                <xsl:text> </xsl:text>
            </xsl:otherwise>
        </xsl:choose> 
    </xsl:template>

	


    <xsl:template match="case:casename/glp:note">
        <note>
            <bodytext>
                <xsl:apply-templates select="@*|node()"/>
            </bodytext>
        </note>
    </xsl:template>
</xsl:stylesheet>