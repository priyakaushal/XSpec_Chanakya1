<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
						xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
						xmlns:dc="http://purl.org/dc/elements/1.1/"

						exclude-result-prefixes="xs dita lnf docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.doc.heading-to-LexisAdvance_dc.title">
		<title><sourcexml>docinfo:doc-heading</sourcexml> to <targetxml>dc:title</targetxml>
			<lnpid>id-CCCC-10292</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>docinfo:doc-heading</sourcexml> becomes
						<targetxml>dc:metadata/dc:title</targetxml>. </p>
				<p>Exceptional scenario for CA Indices: When <sourcexml>docinfo:doc-heading</sourcexml>
					contains word <b>TITLE: </b> or <b>NAME: </b> or <b>SITE: </b> or <b>SUBJECT: </b>
					or <b>RULE: </b> or <b>STATUTE: </b> then conversion should drop the word <b>TITLE:
					</b> or <b>NAME: </b> or <b>SITE: </b> or <b>SUBJECT: </b> or <b>RULE: </b> or
					<b>STATUTE: </b> from conversion.</p>
				<p>Exceptional scenario for AU Legislative Citator: When <sourcexml>docinfo:doc-heading</sourcexml>
					contains text <b>Overview Tab for </b> then conversion should drop the this text 
					<b>Overview Tab for </b> from conversion.</p>
				<p>Exceptional scenario for US Lexis Practice Advisor (LPA): 
					In addition to the standard mapping above, perform the following mappings. An example has been added 
					below. With this addition, the target output document will always contain three 
					<targetxml>dc:title</targetxml> elements; the one created above without any attributes, as well as 
					the two below with a <targetxml>@lnmeta:titlepurpose</targetxml> attribute:
					<ul>
						<li><sourcexml>docinfo:doc-heading</sourcexml> also maps to become 
							<targetxml>dc:metadata/dc:title[@lnmeta:titlepurpose='resultDisplayList']</targetxml>.</li>
						<li>If <sourcexml>docinfo:doc-heading</sourcexml> ends with a string enclosed by parentheses 
							(e.g. "Patent License Agreement (Pro-Licensee)"), remove 
							the parentheses and the enclosed text, remove any trailing spaces in the remaining text, and 
							the remaining text becomes the content of a new  
							<targetxml>dc:metadata/dc:title[@lnmeta:titlepurpose='download']</targetxml> element. 
							If <sourcexml>docinfo:doc-heading</sourcexml> does not end with a string inside parentheses, 
							map <sourcexml>docinfo:doc-heading</sourcexml>, with all of its text content, to a new 
							<targetxml>dc:metadata/dc:title[@lnmeta:titlepurpose='download']</targetxml> element.</li>
					</ul>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock>

&lt;docinfo:doc-heading&gt;PART�1&amp;#x2014;PRELIMINARY&lt;/docinfo:doc-heading&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock>

&lt;dc:title&gt;PART�1&amp;#x2014;PRELIMINARY&lt;/dc:title&gt;

		</codeblock>
			</example>

			<example>
				<title>Source XML</title>
				<codeblock>

&lt;docinfo:doc-heading&gt;West Energy Ltd. (Re), [2007] A.E.U.B.D. No. 57&lt;/docinfo:doc-heading&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock>

&lt;dc:title&gt;West Energy Ltd. (Re), [2007] A.E.U.B.D. No. 57&lt;/dc:title&gt;

		</codeblock>
			</example>

			<example>
				<title>Source XML - Example for UK Content</title>
				<codeblock>

&lt;docinfo:doc-heading&gt;In re B (Children) (Care Proceedings: Standard of Proof) (CAFCASS intervening) - [2009] AC 11&lt;/docinfo:doc-heading&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML - Example for UK Content</title>
				<codeblock>

&lt;dc:title&gt;In re B (Children) (Care Proceedings: Standard of Proof) (CAFCASS intervening) - [2009] AC 11&lt;/dc:title&gt;

		</codeblock>
			</example>
			<note>If <sourcexml>emph</sourcexml> is child of <sourcexml>docinfo:doc-heading</sourcexml>
				then suppress <sourcexml>emph</sourcexml> element and retain its content in
					<targetxml>dc:title</targetxml>.</note>
			<note><b>For Canada Contents:</b> if <sourcexml>nl</sourcexml> is child of
					<sourcexml>docinfo:doc-heading</sourcexml>, then replace it with single space
				character. For furter details please see the following example.</note>
			<example>
				<title>Source XML- From CAN</title>
				<codeblock>

&lt;docinfo:doc-heading&gt;90F32&lt;nl/&gt;Memorandum of Argument of the Applicant&lt;/docinfo:doc-heading&gt;
            
			</codeblock>
			</example>
			<example>
				<title>Target XML</title>
				<codeblock>

&lt;dc:title&gt;90F32 Memorandum of Argument of the Applicant&lt;/dc:title&gt;
            
			</codeblock>
			</example>

			<note><b>Exception Scenario for Canada CA14:</b><p>Trademarks and related marks: When (TM)
					or (R) occur in <sourcexml>docinfo:doc-heading</sourcexml>, convert to unicode code
					point as follows:</p>
				<p><b>(TM)</b> becomes &amp;#8482;
					<b>(R)</b> becomes &amp;#174;</p></note>
			<example>
				<title>Source XML- From CA14</title>
				<codeblock>
&lt;docinfo:doc-heading&gt;Alan D. Gold's NetLetter(TM), Monday, November 24, 2008 - Issue 615&lt;/docinfo:doc-heading&gt;            
			</codeblock>
			</example>
			<example>
				<title>Target XML for CA14</title>
				<codeblock>

&lt;dc:title&gt;Alan D. Gold's NetLetter&amp;#8482;, Monday, November 24, 2008 - Issue 615&lt;/dc:title&gt;
            
			</codeblock>
			</example>
			
			<example>
				<title>Source XML for US LPA Forms</title>
				<codeblock>
<![CDATA[
<docinfo:doc-heading>Patent License Agreement (Pro-Licensee)</docinfo:doc-heading>
]]>          					
					 </codeblock>

            <title>Target XML for US LPA Forms</title>
            <codeblock>
   <![CDATA[
<dc:metadata>
	<dc:title>Patent License Agreement (Pro-Licensee)</dc:title>
	<dc:title lnmeta:titlepurpose="resultDisplayList">Patent License Agreement (Pro-Licensee)</dc:title>
	<dc:title lnmeta:titlepurpose="download">Patent License Agreement</dc:title>
	...
</dc:metadata>
]]> 
             </codeblock>
        </example>
			<section>
				<title>Changes</title>
				<p>2017-04-03: <ph id="change_20170403_snb">US LPA 2016 enhancements: Changes for treatment of 
					parenthesis containing form types for Title Parenthetical feature requirements for Forms 
					Enhancements. Change is to support content in forms (PCTs 275 and 305), but should be implemented 
					for all US LPA conversions. Added additional mapping of <sourcexml>docinfo:doc-heading</sourcexml> to 
					<targetxml>dc:metadata/dc:title[@lnmeta:titlepurpose='resultDisplayList']</targetxml> for search results, 
					and to <targetxml>dc:metadata/dc:title[@lnmeta:titlepurpose='download']</targetxml> for form 
					download. Also added an example.</ph></p>
				<p>2015-12-04: <ph id="change_20151204_snb">Added exception for AU Legislative Citator to 
					drop text <b>Overview Tab for </b> from conversion.</ph></p>
				<p>2015-09-06: <ph id="change_20150906_jm">Modified only the special rule for CA14
						trademarks. No longer mapping (MC) to entity, the unicode code point is not
						currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
						only.</ph></p>
				<p>2015-05-05: <ph id="change_20150505_PS">Added note to convert (TM), (R), and (MC) to
						unicode code points. DB # 45. Applicable to CA14.</ph></p>
				<p>2014-02-11: <ph id="change_20140211_PS">Updated note when <sourcexml>emph</sourcexml>
						is child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
							<sourcexml>emph</sourcexml> element and retain its content in
							<targetxml>dc:title</targetxml>, These instructions apply immediately to
						CA12.</ph></p>
				<p>2013-10-18: <ph id="change_20131018_PS">Updated Instruction when
							<sourcexml>docinfo:doc-heading</sourcexml> contains word <b>RULE: "</b> or
							<b>STATUTE: </b>.</ph></p>
				<p>2013-09-03: <ph id="change_20130903_PS">Updated Instruction when
							<sourcexml>docinfo:doc-heading</sourcexml> contains word <b>"TITLE: "</b> or
							<b>NAME: </b> or <b>SITE: </b> or <b>SUBJECT:</b>.</ph></p>
				<p>2013-08-01: <ph id="change_20130801_PKY"><b>For Canada Content streams:</b> Added a
						note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
							<sourcexml>nl</sourcexml> as a child element.</ph></p>
				<p>2013-07-30: <ph id="change_20130730_PS">Added Instruction when
							<sourcexml>docinfo:doc-heading</sourcexml> contains word <b>"TITLE: "</b> or
							<b>NAME: </b>.</ph></p>
				<p>2012-12-06: Added note for <sourcexml>emph</sourcexml> with
						<sourcexml>docinfo:doc-heading</sourcexml>.</p>
				<p>2012-10-05: Added example for UK Content.</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita  -->

	<xsl:template match="docinfo:doc-heading">
		<!-- these are used as regexes  -->
		<xsl:param name="docHeadingStringsToRemove" as="xs:string*" select="if ($streamID = 'CA11') then ( 'TITLE:' , 'NAME:' , 'SITE:' , 'SUBJECT:' , 'RULE:' , 'STATUTE:' ) else if ($streamID = 'CA15') then ('TITLE/TITRE:' , 'TITRE/TITLE:','CITED/CITÉ:','CITÉ/CITED:','CITE/CITED:','CITED:','TITLE:' , 'TITRE:')  else  'Overview Tab for' "/>

		<xsl:variable name="outputText" as="xs:string*">
			<xsl:apply-templates/>
		</xsl:variable>

		<!--  Original Target XPath:  dc:title   -->
		<dc:title>
			<!--  remove any occurrence of $docHeadingStringsToRemove strings but assume case sensitive; also replace (TM) and (R) with the trademark and copyright characters, respectively, all depending on streamID   -->
			<xsl:choose>
				<xsl:when test=" $streamID = ( 'CA11' , 'AU20', 'CA15' ) ">

					<xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $outputText , '' ) , $docHeadingStringsToRemove , false() ) "/>

				</xsl:when>
				<xsl:when test=" $streamID = 'CA14' ">

					<xsl:sequence select="replace( replace( string-join( $outputText , '' ) , '\(TM\)' , '&#8482;' ) , '\(R\)' , '&#174;' )"/>

				</xsl:when>
				<xsl:when test="$streamID = 'CA06' or $streamID = 'CA12' or $streamID = 'CA10'or $streamID = 'CA09'">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="@* | node()"/>
				</xsl:otherwise>
			</xsl:choose>
		</dc:title>
		<xsl:if test="$streamID='USLPA'">
			<dc:title>
				<xsl:attribute name="lnmeta:titlepurpose">
					<xsl:text>resultDisplayList</xsl:text>
				</xsl:attribute>
				<xsl:apply-templates select="@* | node()"/>
			</dc:title>
			<dc:title>
				<xsl:attribute name="lnmeta:titlepurpose">
					<xsl:text>download</xsl:text>
				</xsl:attribute>
				<xsl:apply-templates select="@* | node()"/>
			</dc:title>
		</xsl:if>

	</xsl:template>

	<xsl:template match="docinfo:doc-heading/emph">

		<!--  Original Target XPath:  dc:title   -->
		<!--  emph is pass-through when under doc-heading   -->
		<xsl:apply-templates select="@* | node()"/>

	</xsl:template>

	<xsl:template match="docinfo:doc-heading/nl">

		<!--  Original Target XPath:  dc:title   -->
		<!--  @SBy:  nl becomes a space when under doc-heading; implemented for ***all*** streamIDs, not just Canada Contents...   -->
		<xsl:text> </xsl:text>

	</xsl:template>

</xsl:stylesheet>