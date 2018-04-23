<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_insert-line-to-LexisAdvance_proc.nl">
		<title><sourcexml>insert-line</sourcexml> to <targetxml>proc:nl</targetxml>
			<lnpid>id-CCCC-10370</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>insert-line[@character]</sourcexml> becomes
						<targetxml>proc:nl</targetxml>.</p>
				<!-- Moved to Rosetta_blockquote-LxAdv-blockquote.xsl -->
				<!--<p><b>If <sourcexml>insert-line</sourcexml> occurs as the only child within <sourcexml>blockquote</sourcexml> then drop outer <sourcexml>blockquote</sourcexml> in NewLexis conversion.</b></p>-->
			</section>
			<example>
				<title>Source XML : If <sourcexml>insert-line/@character=" "</sourcexml>
					comes in XPATH
					<sourcexml>bodytext/blockquote/insert-line</sourcexml></title>
				<codeblock> &lt;blockquote&gt; &lt;insert-line character=" "/&gt;
					&lt;/blockquote&gt; </codeblock>
			</example>

			<example>
				<title>Target XML : If <sourcexml>insert-line/@character=" "</sourcexml>
					comes in XPATH
					<sourcexml>bodytext/blockquote/insert-line</sourcexml></title>
				<codeblock> &lt;p/&gt; </codeblock>
			</example>
			<example>
				<title>Source XML : If <sourcexml>insert-line/@character=""</sourcexml>
					comes in XPATH
					<sourcexml>bodytext/blockquote/insert-line</sourcexml></title>
				<codeblock> &lt;blockquote&gt; &lt;insert-line character=""/&gt;
					&lt;/blockquote&gt; </codeblock>
			</example>

			<example>
				<title>Target XML : If <sourcexml>insert-line/@character=""</sourcexml>
					comes in XPATH
					<sourcexml>bodytext/blockquote/insert-line</sourcexml></title>
				<codeblock> &lt;p/&gt; </codeblock>
			</example>


			<note>When <sourcexml>insert-line</sourcexml> occurs as a child of a
					<sourcexml>blockquote</sourcexml> and the character type is <b>space,
					nbsp, or thinsp,</b> then the result is mapped to an empty
					<targetxml>p</targetxml> tag.</note>
			<example>
				<title>Source XML</title>
				<codeblock> &lt;leg:bodytext&gt; &lt;p&gt; &lt;blockquote&gt;
					&lt;insert-line character=" "/&gt; &lt;p
					indent="none"&gt;&lt;text&gt;Tape reference: &lt;form-chars
					character="." num-char="16"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p
					indent="none"&gt;&lt;text&gt;&lt;form-chars character="."
					num-char="16"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p
					indent="none"&gt;&lt;text&gt;Name of complainant: &lt;form-chars
					character="." num-char="16"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p
					indent="none"&gt;&lt;text&gt;Cross reference to other interviews with
					complainant: &lt;form-chars character="."
					num-char="16"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;insert-line character="
					"/&gt; &lt;p indent="none"&gt;&lt;text&gt;I certify that the contents
					of this certificate are correct.&lt;/text&gt;&lt;/p&gt;
					&lt;insert-line character=" "/&gt; &lt;p
					indent="none"&gt;&lt;text&gt;&lt;form-chars character="."
					num-char="12"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p
					indent="none"&gt;&lt;text align="center"&gt;Signature of
					Interviewer&lt;form-chars character=" "
					num-char="16"/&gt;&lt;form-chars character=" "
					num-char="2"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;insert-line character="
					"/&gt; &lt;p indent="none"&gt;&lt;text align="center"&gt;Date of
					Certificate&lt;form-chars character=" "
					num-char="16"/&gt;&lt;form-chars character=" "
					num-char="2"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;/blockquote&gt;
					&lt;/p&gt; &lt;/leg:bodytext&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;blockquote&gt;
					&lt;p/&gt; &lt;p indent="none"&gt;&lt;text&gt;Tape reference:
					&lt;proc:formchars formchar="dot"
					formcharuse="longname"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p
					indent="none"&gt;&lt;text&gt;&lt;proc:formchars formchar="dot"
					formcharuse="longname"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p
					indent="none"&gt;&lt;text&gt;Name of complainant: &lt;proc:formchars
					formchar="dot" formcharuse="longname"/&gt;&lt;/text&gt;&lt;/p&gt;
					&lt;p indent="none"&gt;&lt;text&gt;Cross reference to other interviews
					with complainant: &lt;proc:formchars formchar="dot"
					formcharuse="longname"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p/&gt; &lt;p
					indent="none"&gt;&lt;text&gt;I certify that the contents of this
					certificate are correct.&lt;/text&gt;&lt;/p&gt; &lt;p/&gt; &lt;p
					indent="none"&gt;&lt;text&gt;&lt;proc:formchars formchar="dot"
					formcharuse="address"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p
					indent="none"&gt;&lt;text align="center"&gt;Signature of
					Interviewer&lt;proc:formchars formchar="dot"
					formcharuse="longname"/&gt;&lt;proc:formchars formchar="dot"
					formcharuse="day"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;p/&gt; &lt;p
					indent="none"&gt;&lt;text align="center"&gt;Date of
					Certificate&lt;proc:formchars formchar="dot"
					formcharuse="longname"/&gt;&lt;proc:formchars formchar="dot"
					formcharuse="day"/&gt;&lt;/text&gt;&lt;/p&gt; &lt;/blockquote&gt;
					&lt;/p&gt; &lt;/primlaw:bodytext&gt; </codeblock>
			</example>

			<section>
				<title>Changes</title>
				<p>2012-01-16: Created.</p>
				<p>2012-02-28: Instruction and Example added if
						<sourcexml>insert-line</sourcexml> comes in XPATH
						<sourcexml>bodytext/blockquote/insert-line</sourcexml></p>
				<p>2012-05-15: Instruction and Example added when
						<sourcexml>insert-line[@character]</sourcexml> is space, nbsp, or
					thinsp in the source.</p>
				<p>2012-05-15: Remove rest of note to handling
						<sourcexml>insert-line</sourcexml>.</p>
				<p>2012-10-25: Instruction and example added when
						<sourcexml>insert-line</sourcexml> occurs as a child of a
						<sourcexml>blockquote</sourcexml>.</p>
			</section>
		</body>
	</dita:topic>


    <!-- MCJ:  2017-08-01: updated predicate to test for not(parent::blockquote) in order to remove ambiguity with other template.
    	                   this introduces new holes that will need to be refactored if/when relevant data appears.  My guess is that
    	                   these templates need to be consolidated so that the transform to proc:nl is the default and the test on
    	                   parent::blockquote (and testing @character) becomes exceptions. -->
	<!-- JD: 2017-07-25: modified per instruction "insert-line[@character] becomes proc:nl." -->
	<!--xsl:template match="insert-line"-->
	<xsl:template match="insert-line[@character and not(parent::blockquote)]">
		<!--  Original Target XPath:  proc:nl   -->
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>
	</xsl:template>

	<!-- JD: 2017-07-25: modified below to test unicode value of character, as contains() won't work on character entities -->
	<!--xsl:template match="insert-line[parent::blockquote and (@character=' ' or contains(@character,'nbsp') or contains(@character, 'thinsp'))]"-->
	<xsl:template
		match="insert-line[parent::blockquote and @character = ('&#x2009;', '&#xa0;', '&#x20;')]">
		<xsl:choose>
			<xsl:when test="parent::blockquote[parent::p][not(child::*[2])]">
				<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<proc:nl/>
				</text>
			</xsl:when>
			<xsl:otherwise>
				<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"/>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>

	<xsl:template
		match="insert-line[parent::blockquote[parent::bodytext[parent::level[@leveltype=('prec.grp' , 'precgrp' , 'precgrp1' , 'precgrp2' , 'prec' , 'form')]]] and @character = ('&#x2009;', '&#xa0;', '&#x20;')][$streamID=('AU05', 'NZ09')]" priority="2">
		<form:p/>
	</xsl:template>
</xsl:stylesheet>