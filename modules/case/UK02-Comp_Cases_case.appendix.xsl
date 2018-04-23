<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.appendix">
		<title>case:appendix <lnpid>id-UK02-27207</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:appendix</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>attachments/appendix</targetxml>. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:appendix&gt; &lt;pgrp&gt; &lt;p&gt;
					&lt;text&gt;[Subsequent to the delivery of the judgments in the Court
					of Appeal the chief &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;page
					text="[1980] 2 All ER 444 at " count="457" reporter="ALLER"/&gt;
					&lt;pgrp&gt; &lt;p&gt; &lt;text&gt;constable applied to his Honour
					Judge Pickles to revoke his order of 4 October 1979. In a reserved
					judgment delivered in the Crown Court at Barnsley on 31 March 1980
					Judge Pickles declined to revoke his order but he amended it by adding
					the words '(save for spent convictions)' after the word 'convictions'
					therein.]&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;/case:appendix&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;attachments&gt; &lt;appendix&gt; &lt;bodytext&gt;
					&lt;pgrp&gt; &lt;p&gt; &lt;text&gt;[Subsequent to the delivery of the
					judgments in the Court of Appeal the chief &lt;/text&gt; &lt;/p&gt;
					&lt;/pgrp&gt; &lt;ref:page num="457" page-scheme="ALLER"
					page-scheme-type="reporterabbreviation" /&gt; &lt;pgrp&gt; &lt;p&gt;
					&lt;text&gt;constable applied to his Honour Judge Pickles to revoke
					his order of 4 October 1979. In a reserved judgment delivered in the
					Crown Court at Barnsley on 31 March 1980 Judge Pickles declined to
					revoke his order but he amended it by adding the words '(save for
					spent convictions)' after the word 'convictions'
					therein.]&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt;
					&lt;/appendix&gt; &lt;/attachments&gt; </codeblock>
			</example>

			<note> If <sourcexml class="+ topic/keyword xml-d/sourcexml "
					>case:appendix</sourcexml> occurs within <sourcexml
					class="+ topic/keyword xml-d/sourcexml ">case:content</sourcexml> or
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
					>case:judgments</sourcexml> i.e, <sourcexml
					class="+ topic/keyword xml-d/sourcexml "
					>case:content/case:appendix</sourcexml> or <sourcexml
					class="+ topic/keyword xml-d/sourcexml "
					>case:judgments/case:appendix</sourcexml> will become <targetxml
					class="+ topic/keyword xml-d/targetxml "
					>courtcase:opinions/attachments/appendix</targetxml>. </note>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.appendix.dita  -->

	<xsl:template match="case:appendix">
		<!--  Original Target XPath:  attachments/appendix   -->
		<attachments
			xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<appendix>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</appendix>
		</attachments>
	</xsl:template>

  <!-- Note: If case:appendix occurs within case:content or case:judgments i.e, case:content/case:appendix or case:judgments/
case:appendix will become courtcase:opinions/attachments/appendix -->
	<xsl:template
	  match="case:appendix[parent::case:content]"><!--  or parent::case:judgments -->
		<compcase:caseinstance>
			<compcase:caseinstancebody>
				<courtcase:opinions>
					<attachments
						xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<appendix>
							<bodytext>
								<xsl:apply-templates select="@* | node()"/>
							</bodytext>
						</appendix>
					</attachments>
				</courtcase:opinions>
			</compcase:caseinstancebody>
		</compcase:caseinstance>
	</xsl:template>



</xsl:stylesheet>