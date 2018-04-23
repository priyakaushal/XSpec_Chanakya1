<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
						xmlns:case="http://www.lexis-nexis.com/glp/case"
						xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"						
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						exclude-result-prefixes="xs dita lnf case docinfo jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_title_to-LexisAdvance_title">
		<title><sourcexml>title</sourcexml> to <targetxml>title</targetxml> <lnpid>id-CCCC-10479</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>title</sourcexml> becomes <targetxml>title</targetxml> with attributes:
					<ul>
						<li><sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml> with tokenized values of "true" and "false"</li>
						<li><sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> with tokenized
							values and populated as: 
							<ul>
								<li><targetxml>title[@align="left"]</targetxml></li>
								<li><targetxml>title[@align="right"]</targetxml></li>
								<li><targetxml>title[@align="center"]</targetxml></li>
							</ul>
						</li>
					</ul>
				</p>
				<p>
					If the input document has title/defterm scenario then <sourcexml>defterm</sourcexml> within a title can be dropped, but the content of
					the tag is retained and no text is dropped.		
				</p>
	
		<p>Exceptional scenario for <b>CA Indices</b> and <b>CA06 Regs</b>: <sourcexml>title/nl</sourcexml>
					becomes <targetxml>title</targetxml>. <sourcexml>nl</sourcexml> will be replaces by
					a white space in the target.</p>
			
				<p>Exceptional scenario for CA Indices: When <sourcexml>title</sourcexml> is an child of
						<sourcexml>docinfo:hierlev/heading</sourcexml> and contains word <b>TITLE: </b>
					or <b>NAME: </b> or <b>SITE: </b> then conversion should drop the word <b>TITLE: </b> or <b>NAME:
					</b> or <b>SITE: </b> from conversion.</p>
			
			</section>
		
			<example>
				<title>Source XML</title>
				<codeblock>

&lt;heading&gt;
	  &lt;title align="center"&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;
....
....
&lt;heading&gt;
	  &lt;title inline="false"&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

		</codeblock>
			</example>
		
			<example>
				<title>Target XML</title>
				<codeblock>

&lt;heading&gt;
  &lt;title align="center"&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;
....
....
&lt;heading&gt;
	  &lt;title inline="false"&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

		</codeblock>
			</example>
	
			<example>
				<title>Source XML having <sourcexml>title/nl</sourcexml></title>
				<codeblock>

&lt;title&gt; English-French&lt;nl/&gt;Trade-mark Lexicon&lt;/title&gt;

		</codeblock>
			</example>
		
			<example>
				<title>Target XML </title>
				<codeblock>

&lt;title&gt; English-French Trade-mark Lexicon&lt;/title&gt;

		</codeblock>
			</example>
		
		
			<example>
				<title>Source XML contains word "TITLE: " in <sourcexml>title</sourcexml></title>
				<codeblock>
&lt;docinfo:hierlev role="me"&gt;
    &lt;heading&gt;
        &lt;title&gt;TITLE: Criminal Code French/English consolidation 2010 / Code criminal codification bilingue
            2010. 2010 ed. &lt;/title&gt;
    &lt;/heading&gt;
&lt;/docinfo:hierlev&gt;
		</codeblock>
			</example>
		
			<example>
				<title>Target XML </title>
				<codeblock>
&lt;doc:hierlev&gt;
    &lt;heading&gt;
        &lt;title&gt;Criminal Code French/English consolidation 2010 / Code criminal codification bilingue
            2010. 2010 ed. &lt;/title&gt;
    &lt;/heading&gt;
&lt;/doc:hierlev&gt;
	</codeblock>
			</example>
		
		
			<section>
				<title>Changes</title>
				<p>2011-12-15: <ph id="20111215_xx">Created.</ph></p>
				<p>2013-01-08: <ph id="20130108_xx_1">Removed CR number to allow <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference</targetxml> to the content model of <targetxml class="+ topic/keyword xml-d/targetxml ">title</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">subtitle</targetxml>.</ph></p>
				<p>2013-01-08: <ph id="20130108_xx_2">Added Instruction for <sourcexml>title/@searchtype="DIGEST-SUBJECT"</sourcexml>.</ph></p>
				<p>2013-04-10: <ph id="20130410_xx_3">Added Instruction for <sourcexml>title/nl</sourcexml>.</ph></p>
				<p>2013-07-05: <ph id="change_20130705_PS_1">Added Instruction when <sourcexml>title</sourcexml> contains word <b>"TITLE: "</b>.</ph></p>
				<p>2013-07-30: <ph id="change_20130730_PS_1">Updated Instruction when <sourcexml>title</sourcexml> contains word <b>"TITLE: "</b> or <b>"NAME: "</b>.</ph></p>
				<p>2013-09-03: <ph id="change_20130903_PS_1">Updated Instruction when <sourcexml>title</sourcexml> contains word <b>"TITLE: "</b> or <b>"NAME: "</b> or <b>"SITE: "</b>.</ph></p>
				<p>2014-10-07: <ph id="change_20141007_PS">Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</ph></p>
				<p>2014-12-19: <ph id="20141219_SS">Added <b>CA06-Regs</b> stream name inside the existing
						instruction for handling <sourcexml>title/nl</sourcexml>.</ph></p>
		</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_title-LxAdv-title.dita  -->
	<!-- JD: 2017-07-24: added 'replace()' function to get rid of characters not handled by normalize-space(e.g., nbsp) -->
	<xsl:template match="title[not( normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = '')]">
		<!--<xsl:param name="titleStringsToRemove" as="xs:string*" select="( 'TITLE:' , 'NAME:' , 'SITE:' ,':' )"/>	-->	<!-- these are regular expressions  -->
		<!--pawan:added for CA15-->
		<xsl:param name="titleStringsToRemove" as="xs:string*" select="if ($streamID = 'CA15') then ( 'TITLE: ' , 'TITRE: ' , 'TITLE/TITRE:' , 'TITRE/TITLE:','CITED/CITÉ: ', 'CITÉ/CITED: ', 'CITE/CITED: ', 'CITED: ' )  else  ( 'TITLE:' , 'NAME:' , 'SITE:' ,':' )"/>

		<xsl:variable name="outputText" as="xs:string*">
			<xsl:apply-templates/>
		</xsl:variable>
		
		<xsl:variable name="subtitletext"/>

		<!--  Original Target XPath:  title   -->
		<xsl:choose>
			<!-- Due to jrnl:prelim outputting as nitf:hedline/nitf:h1, which does not have a child title. - See HK02_Articles for example -->
			<xsl:when test="parent::heading/parent::jrnl:prelim">
				<xsl:apply-templates/>
			</xsl:when>
			<!-- do not output empty element title when it only contains refpt and is a child of heading -->
			<xsl:when test="parent::heading and refpt and not(text()) and not(child::*[2])"/>
			<!--SNB 2017-10-17 add title child of transcript for new embedded video content. Note that transcript 
				is a new element, so this cant interfere with any other processing-->
			<xsl:when test="parent::transcript">
				<h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@*"/>
					<!-- refpts can't be output in title elements in target schemas -->
					<xsl:apply-templates select="node() except refpt"/>
				</h>					
			</xsl:when>
			<xsl:otherwise>
				<title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@*"/>

					<xsl:choose>
						<xsl:when test=" $streamID = 'CA11' or $streamID = 'CA15' and parent::heading[parent::docinfo:hierlev] ">

							<!--  remove any occurrence of $titleStringsToRemove strings but assume case sensitive   -->
							<xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $outputText , '' ) , $titleStringsToRemove , false() ) "/>

						</xsl:when>
					<!-- Vikas Rohilla : Added for the streamID CA01	-->
						<xsl:when test="$streamID ='CA01' and ancestor::case:constituents">
							<xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $outputText , '' ) , $titleStringsToRemove , false() ) "/>
						</xsl:when>
						<!-- Awantika: Added for AU20 -->
						<xsl:when test="$streamID='AU20' and following-sibling::subtitle">
							<xsl:value-of select="concat(.,' ','(',following-sibling::subtitle,')')"/>
						</xsl:when>
						<xsl:otherwise>
							<!-- refpts can't be output in title elements in target schemas -->
							<xsl:apply-templates select="node() except refpt"/>
						</xsl:otherwise>
					</xsl:choose>
				</title>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<!--    From Rosetta_Elements-LxAdv-Empty_Elements.dita / .xsl   -->
	<!--<xsl:template match="title[ normalize-space(string-join( . , '') ) = '' ]"/>-->
	
	<!-- JD: 2017-07-24: could probably be combined with above, but shouldn't hurt -->
	<xsl:template match="title[normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = '']"/>

	<xsl:template match="title/@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:copy-of select=" . "/>

	</xsl:template>

	<xsl:template match="title/@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:copy-of select=" . "/>

	</xsl:template>

	<xsl:template match="title/defterm">

		<!--  Original Target XPath:  title   -->
		<xsl:apply-templates select="@* | node()"/>

	</xsl:template>

	<xsl:template match="title/nl[ $streamID = ( 'CA11' ) ]">

		<!--  output a space.  Note that otherwise nl becomes proc:nl which is allowed under title   -->
		<xsl:text> </xsl:text>

	</xsl:template>
	
	<!-- JL suppress searchtype -->
	<xsl:template match="title/@searchtype"/>
	<xsl:template match="title/num[$streamID='CA09']/@searchtype" priority="30"/>

</xsl:stylesheet>