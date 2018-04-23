<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.consideredcases">
  <title>case:consideredcases <lnpid>id-ST05-28413</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:consideredcases</sourcexml> becomes
            <targetxml>compcase:head/casesum:summaries/casesum:decisionsummary/bodytext/ref:relatedrefs</targetxml>
          with an attribute 'referencetype' set to
            <targetxml>@referencetype="consideredcases"</targetxml>
          <note>In case multiple <targetxml>p</targetxml> occurs within
              <targetxml>ref:relatedrefs</targetxml>; conversion need to create only one
              <targetxml>bodytext</targetxml> acting as a wrapper for all <targetxml>p</targetxml>
            elements.</note>
          <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
            elements. When 2 or more sibling source elements map to
              <targetxml>casesum:summaries</targetxml>, data should be merged to a single
              <targetxml>casesum:summaries</targetxml> element.</note>Example for
            <sourcexml>case:consideredcases</sourcexml>:
        </li>
      </ul>
      </section>
    <example>
      <title>Source XML based on AU content</title>
      <codeblock>

&lt;case:consideredcases&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
          &lt;ci:caseinfo&gt;
            &lt;ci:decisiondate year="1995"/&gt;
          &lt;/ci:caseinfo&gt;
          &lt;ci:caseref ID="cr000001" spanref="cr000001-001" status="unval"&gt;
            &lt;ci:reporter value="clr"/&gt;
            &lt;ci:volume num="183"/&gt;
            &lt;ci:page num="501"/&gt;
          &lt;/ci:caseref&gt;
          &lt;ci:caseref ID="cr000002" spanref="cr000002-002"&gt;
            &lt;ci:reporter value="alr"/&gt;
            &lt;ci:volume num="130"/&gt;
            &lt;ci:page num="529"/&gt;
          &lt;/ci:caseref&gt;
          &lt;ci:caseref ID="cr000003" spanref="cr000003-003"&gt;
            &lt;ci:reporter value="acsr"/&gt;
            &lt;ci:volume num="17"/&gt;
            &lt;ci:page num="551"/&gt;
          &lt;/ci:caseref&gt;
          &lt;ci:caseref ID="cr000004" spanref="cr000004-004"&gt;
            &lt;ci:reporter value="urj"/&gt;
            &lt;ci:refnum num="BC9506451"/&gt;
          &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
          &lt;citefragment searchtype="CASE-NAME-REF"&gt;
            &lt;emph typestyle="it"&gt;R v Byrnes &amp;amp;amp; Hopwood&lt;/emph&gt;
          &lt;/citefragment&gt;
          &lt;citefragment searchtype="CASE-CITE-REF"&gt; 
            &lt;ci:span spanid="cr000001-001" status="unval"&gt;(1995) 183 CLR 501&lt;/ci:span&gt; ; 
            &lt;ci:span spanid="cr000002-002"&gt;130 ALR 529&lt;/ci:span&gt; ; 
            &lt;ci:span spanid="cr000003-003"&gt;17 ACSR 551&lt;/ci:span&gt; ; 
            &lt;ci:span spanid="cr000004-004"&gt; [1995] HCA 1&lt;/ci:span&gt;
          &lt;/citefragment&gt;
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
      , followed
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:consideredcases&gt;
    
    </codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>


&lt;ref:relatedrefs referenctype="consideredcases"&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:case&gt;
            &lt;lnci:caseinfo&gt;
              &lt;lnci:decisiondate year="1995"/&gt;
            &lt;/lnci:caseinfo&gt;
            &lt;lnci:caseref ID="cr000001" status="unval"&gt;
              &lt;lnci:reporter value="clr"/&gt;
              &lt;lnci:volume num="183"/&gt;
              &lt;lnci:page num="501"/&gt;
            &lt;/lnci:caseref&gt;
            &lt;lnci:caseref ID="cr000002"&gt;
              &lt;lnci:reporter value="alr"/&gt;
              &lt;lnci:volume num="130"/&gt;
              &lt;lnci:page num="529"/&gt;
            &lt;/lnci:caseref&gt;
            &lt;lnci:caseref ID="cr000003"&gt;
              &lt;lnci:reporter value="acsr"/&gt;
              &lt;lnci:volume num="17"/&gt;
              &lt;lnci:page num="551"/&gt;
            &lt;/lnci:caseref&gt;
            &lt;lnci:caseref ID="cr000004"&gt;
              &lt;lnci:reporter value="urj"/&gt;
              &lt;lnci:refnum num="BC9506451"/&gt;
            &lt;/lnci:caseref&gt;
          &lt;/lnci:case&gt;
          &lt;ci:content&gt;
            &lt;emph typestyle="it"&gt;R v Byrnes &amp;amp;amp; Hopwood&lt;/emph&gt; (1995) 183 CLR 501; 130 ALR 529; 17 ACSR 551; [1995] HCA 1
          &lt;/ci:content&gt;
        &lt;/lnci:cite&gt;
        , followed
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;           
    
    </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.consideredcases.dita  -->
	<xsl:message>Compcase_case.consideredcases.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:consideredcases">

		<!--  Original Target XPath:  compcase:head/casesum:summaries/casesum:decisionsummary/bodytext/ref:relatedrefs   -->
		<compcase:head>
			<casesum:summaries>
				<casesum:decisionsummary>
					<bodytext>
						<ref:relatedrefs>
							<xsl:apply-templates select="@* | node()"/>
						</ref:relatedrefs>
					</bodytext>
				</casesum:decisionsummary>
			</casesum:summaries>
		</compcase:head>

	</xsl:template>

</xsl:stylesheet>