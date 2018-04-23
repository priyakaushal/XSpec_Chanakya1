<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.appendix">
    <title>case:appendix <lnpid>id-ST05-28409</lnpid></title>
   <body>
      <section>
          <ul>
         <li>
                    <sourcexml>case:appendix</sourcexml>
                    becomes <targetxml>attachments/appendix</targetxml>.</li>
          </ul>
      </section>
       <example>
           <title>Source XML based on AU content</title>
           <codeblock>

&lt;case:judgments&gt;
    ...
    &lt;case:appendix&gt;
        &lt;p&gt;
            &lt;text&gt;Attached is a copy of the relevant portion of the judgment of the Supreme&lt;nl/&gt;Court Equity Division in 
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Massoud v NRMA Insurance Ltd&lt;/emph&gt;&lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt; referred to at 655
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:case&gt;
                        &lt;ci:caseinfo&gt;
                            &lt;ci:decisiondate year="2005"/&gt;
                        &lt;/ci:caseinfo&gt;
                        &lt;ci:caseref ID="cr002"&gt;
                            &lt;ci:reporter value="nswlr"/&gt;
                            &lt;ci:volume num="62"/&gt;
                            &lt;ci:page num="653"/&gt;
                        &lt;/ci:caseref&gt;
                        &lt;ci:caseref anaphref="cr002" spanref="cr002-01"&gt;
                            &lt;ci:pinpoint targettype="para" num="7"/&gt;
                        &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                            &lt;ci:span spanid="cr002-01"&gt;[7]&lt;/ci:span&gt;
                        &lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt;.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:appendix&gt;
&lt;/case:judgments&gt;
       
       </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;courtcase:opinions&gt;
    ...
    &lt;attachments&gt;
        &lt;appendix&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Attached is a copy of the relevant portion of the judgment of the Supreme&lt;proc:nl/&gt;Court Equity Division in 
                        &lt;lnci:cite type="case"&gt;
                            &lt;lnci:content&gt;
                                &lt;emph typestyle="it"&gt;Massoud v NRMA Insurance Ltd&lt;/emph&gt;
                            &lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt; referred to at 655
                        &lt;lnci:cite&gt;
                            &lt;lnci:case&gt;
                                &lt;lnci:caseinfo&gt;
                                    &lt;lnci:decisiondate year="2005"/&gt;
                                &lt;/lnci:caseinfo&gt;
                                &lt;lnci:caseref ID="cr002"&gt;
                                    &lt;lnci:reporter value="nswlr"/&gt;
                                    &lt;lnci:volume num="62"/&gt;
                                    &lt;lnci:page num="653"/&gt;
                                &lt;/lnci:caseref&gt;
                                &lt;lnci:caseref anaphref="cr002"&gt;
                                    &lt;lnci:pinpoint targettype="para" num="7"/&gt;
                                &lt;/lnci:caseref&gt;
                            &lt;/lnci:case&gt;
                            &lt;lnci:content&gt;[7]&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/appendix&gt;
    &lt;/attachments&gt;
&lt;/courtcase:opinions&gt;
       
       </codeblock>
       </example>
                    <note class="- topic/note ">If <sourcexml>case:appendix</sourcexml>occurs
                        within <sourcexml>case:content</sourcexml> or <sourcexml>case:judgments</sourcexml> i.e,
                            <sourcexml>case:content/case:appendix</sourcexml> or <sourcexml>case:judgments/case:appendix</sourcexml> becomes <targetxml>courtcase:opinions/attachments/appendix</targetxml>.</note>
                    
                    
       <section>
           <title>Changes</title>
           <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.appendix.dita  -->
	<xsl:message>Compcase_case.appendix.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:appendix">

		<!--  Original Target XPath:  attachments/appendix   -->
		<attachments>
			<appendix>
				<xsl:apply-templates select="@* | node()"/>
			</appendix>
		</attachments>

	</xsl:template>

	<xsl:template match="case:content">

		<!--  Original Target XPath:  courtcase:opinions/attachments/appendix   -->
		<courtcase:opinions>
			<attachments>
				<appendix>
					<xsl:apply-templates select="@* | node()"/>
				</appendix>
			</attachments>
		</courtcase:opinions>

	</xsl:template>

	<xsl:template match="case:judgments">

		<!--  Original Target XPath:  courtcase:opinions/attachments/appendix   -->
		<courtcase:opinions>
			<attachments>
				<appendix>
					<xsl:apply-templates select="@* | node()"/>
				</appendix>
			</attachments>
		</courtcase:opinions>

	</xsl:template>

	<xsl:template match="case:content/case:appendix">

		<!--  Original Target XPath:  courtcase:opinions/attachments/appendix   -->
		<courtcase:opinions>
			<attachments>
				<appendix>
					<xsl:apply-templates select="@* | node()"/>
				</appendix>
			</attachments>
		</courtcase:opinions>

	</xsl:template>

	<xsl:template match="case:judgments/case:appendix">

		<!--  Original Target XPath:  courtcase:opinions/attachments/appendix   -->
		<courtcase:opinions>
			<attachments>
				<appendix>
					<xsl:apply-templates select="@* | node()"/>
				</appendix>
			</attachments>
		</courtcase:opinions>

	</xsl:template>

</xsl:stylesheet>