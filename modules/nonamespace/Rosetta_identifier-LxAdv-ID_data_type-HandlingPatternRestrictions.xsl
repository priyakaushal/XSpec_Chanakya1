<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	version="2.0" exclude-result-prefixes="dita xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions">
	<title>Identifiers to ID Data Type - Handling Pattern Restrictions <lnpid>id-CCCC-10353</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Identifiers such as <targetxml>xml:id</targetxml> and
					<targetxml>ref:anchor/@id</targetxml> are ID data typed. Refer to the target
				schema/documentation to determine whether or not the value is ID data typed.  </p>
			<p>ID data types cannot contain colons and may not begin with a number (among other
				restrictions).  To properly map to a node that is ID data typed, conversion
				instructions state to substitute a colon or a space with an underscore. Also, prefix
				values beginning with a number, with an underscore. The xml schema will enforce
				these constraints post conversion.</p>
			<p>Do not convert the following cases:<ul id="ul_hyr_rrg_wk">
					<li>Leading and trailing space(s) (e.g. id=" example_id_value_001 ")</li>
					<li>XML Entities (e.g. id="example_id_value_001&amp;#xA;")</li>
				</ul>      </p>
		</section>
		<example>
			<title>Example Markup - Source</title>
			<codeblock>

&lt;refpt id="&amp;#xA;          0KMN_2_F_FC__S_CLAUSE:HTDICT-TERM&amp;#xA;        " type="ext"/&gt;

	</codeblock>
		</example>
		<example>
			<title>Example Markup - Target</title>
			<codeblock>

&lt;ref:anchor id="_0KMN_2_F_FC__S_CLAUSE_HTDICT-TERM" anchortype="global"/&gt;

	</codeblock>
		</example>
		<section><p>Other identifiers, such as <targetxml>@anchoridref</targetxml> are <i>not</i> ID
				data typed. However, they may link to those that are. For example, an
					<targetxml>@anchoridref</targetxml> may point a
					<targetxml>ref:anchor/@id</targetxml>. Since <targetxml>@anchoridref</targetxml>
				is not ID data typed, the ID constraints will not be enforced by the schema post
				conversion, and will result in broken links. So, to ensure proper link resolution,
				it is imperative that such identifiers also follow the ID data type restrictions
					(<targetxml>@anchoridref</targetxml> in this case).</p></section>


		<section>
			<title>Changes</title>
			<p>2013-07-17: <ph id="change_20130717_raj">Added instructions for handling
					leading/trailing space(s) and XML entities.</ph></p>
			<p>2013-07-10: <ph id="change_20130710_raj">Added instruction to replace space with
					underscore.</ph></p>
		</section>
		<!-- SEP 2015-8-12 added -->
		<!--<xsltinclusion>
			<xsl:stylesheet version="2.0">
				<xsl:template match="*[@id]">
					<!-\- need to better combine with other @id functions-\->
					<!-\- need to handle entities, currently does not -\->
					<xsl:variable name="idval" select="@id"/>
					<xsl:choose>
						<xsl:when test="contains($idval, ':') or contains($idval, ' ') or contains('0123456789', substring($idval, 1, 1)) ">
							<xsl:variable name="idvalNoBegNums">
							   <!-\- need recursive function call here to remove leading numerals , currently only handles one  -\->
							   <xsl:choose>
								   <xsl:when test="contains('0123456789', substring(normalize-space($idval), 1, 1))">                           
									   <xsl:value-of select="normalize-space(substring($idval,2))"/>                           
								   </xsl:when>
								   <xsl:otherwise>
									   <xsl:value-of select="normalize-space($idval)"/>                           
								   </xsl:otherwise>
							   </xsl:choose>
							</xsl:variable>
							<xsl:copy>
								<xsl:attribute name="id" select="translate(normalize-space($idvalNoBegNums), ' :', '__')"/>
								<xsl:apply-templates select="@*[name()!='id'] | node()"/>
							</xsl:copy>               
						</xsl:when>
						<xsl:otherwise>
							<xsl:copy>
								<xsl:apply-templates select="@* | node()"/>
							</xsl:copy>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:template>

				need recursive function to remove leading numerals , currently only handles one 

			</xsl:stylesheet>
		</xsltinclusion>-->		
	</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita  -->

<!-- 
**************************************************************************************
NOTE:
The context node for this template MUST be a string value.
This template returns a string value that has been modified to 
meet the restrictions of the xs:id datatype.

It was originally intended for xml:id, id, and ID attributes, but would
also work for anything else where the xs:id datatype is required.

This template does not handle ALL entities,as 
Saxon will by default, *resolve* entities before this template 
processes the string.  XSLT cannot change this behavior. It will now identify and
replace pointy brackets and ampersands, however, with an underscore as resolving
those would definitely be a problem for the parser.

****************************************************************************************

-->
<xsl:template name="normalizeIdString">
	<!-- first step: replace illegal characters with an underscore -->
	<!-- WPK 2017-10-19.  Added mdash to list of disallowed chars. 
		 WPK 2017-10-24.  	
				added   (left double quote #x93;)
				added   (non printable control character #x80;)
				added Â
				added Ã
				added ¢
				added –   (en dash &#x2013;) 
				
			Background.  These are likely encoding issues.  This allows for valid IDs to be created because they are invalid characters nevertheless.
			AU10 PS2017050503412620096LNIAULNPG_input_BUS_GUID_74731000.xml	
			in		Ã¢ÂÂ
			out		Ã¢Â&#x80;Â&#x93;
			
			Ã¢    becomes Ã¢
			Â    becomes Â&#x80;  (control character displays as blank)
			Â    becomes Â&#x93;  (back slanted double quote)
			
			http://www.i18nqa.com/debug/utf8-debug.html
			(expected is not what LN expects but what the website indicates as expected in its context)
			Unicode...Windows1252...Expected...Actual...UTF-8 Bytes
			U+00A2    0xA2          ¢          Â¢       %C2 %A2     (not tilde, but carrot - not exactly what is in data)
			U+201C    0x93          “          â€œ      %E2 %80 %9C   
			U+00E2    0xE2          â          Ã¢       %C3 %A2     (carrot as found in data)
			
			AU10 PS2017050812233824638LNIAULNPG_input_BUS_GUID_93431000.xml
			–   (en dash &#x2013;) 
	-->		
	<xsl:variable name="idWithoutDisallowedChars">
		<xsl:value-of select="translate(. , ',!#$%()*+/:;=?@![]\^`|{}~’‘—ÂÃ¢–', '__________________________________')"/>
	</xsl:variable>
	<!-- get rid of stubborn entities-->
	<xsl:variable name="idWithoutDisallowedEnts">
		<xsl:analyze-string select="$idWithoutDisallowedChars" regex="&lt;|&gt;|&amp;|&#39;">
			<xsl:matching-substring><xsl:text>_</xsl:text></xsl:matching-substring>
			<xsl:non-matching-substring><xsl:value-of select="."/></xsl:non-matching-substring>
		</xsl:analyze-string>
	</xsl:variable> 	
	<!-- remove leading and trailing spaces and entities -->
	<xsl:variable name="idWoLeadingSpaces">
		<xsl:value-of select="replace($idWithoutDisallowedEnts, '^\s+', '')"/>
	</xsl:variable>
	<xsl:variable name="idWoTrailingSpaces">
		<!-- this should also handle resolved whitespace and ampersand entities -->
		<xsl:value-of select="replace($idWoLeadingSpaces, '\s+$', '')"/>
	</xsl:variable>
	<xsl:variable name="idWoInternalSpaces">
		<xsl:value-of select="replace($idWoTrailingSpaces, '\s+', '_')"/>
	</xsl:variable>	
	<!--  prepend underscore with leading values of period, hyphen, or numeral -->
	<xsl:choose>
		<xsl:when test="matches($idWoInternalSpaces , '^[0-9]|^\.|^\-')">
			<xsl:value-of select="concat('_', $idWoInternalSpaces)"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$idWoInternalSpaces"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>
	
	<!-- named template normalizeIdString_dropchars receives the same input (string) as 
	normalizeIdString, but replaces all illegal characters and spaces with nothing. It still
	prepends an underscore if the string begins with a number or illegal starting character. 
	The output should still be a valid id datatype and NMTOKEN.  This is less commonly used
	for IDs than the normalizeIdString template but may be useful for some other attributes-->
	
	<xsl:template name="normalizeIdString_dropchars">
		<!-- first step: replace illegal characters with an underscore -->
		<xsl:variable name="idWithoutDisallowedChars">
			<xsl:value-of select="translate(. , ',!#$%()*+/:;=?@![]\^`|{}~’‘', '')"/>
		</xsl:variable>
		<!-- get rid of stubborn entities-->
		<xsl:variable name="idWithoutDisallowedEnts">
			<xsl:analyze-string select="$idWithoutDisallowedChars" regex="&lt;|&gt;|&amp;|&#39;">
				<xsl:matching-substring/>
				<xsl:non-matching-substring><xsl:value-of select="."/></xsl:non-matching-substring>
			</xsl:analyze-string>
		</xsl:variable> 	
		<!-- remove leading and trailing spaces and entities -->
		<xsl:variable name="idWoLeadingSpaces">
			<xsl:value-of select="replace($idWithoutDisallowedEnts, '^\s+', '')"/>
		</xsl:variable>
		<xsl:variable name="idWoTrailingSpaces">
			<!-- this should also handle resolved whitespace and ampersand entities -->
			<xsl:value-of select="replace($idWoLeadingSpaces, '\s+$', '')"/>
		</xsl:variable>
		<xsl:variable name="idWoInternalSpaces">
			<xsl:value-of select="replace($idWoTrailingSpaces, '\s+', '')"/>
		</xsl:variable>	
		<!--  prepend underscore with leading values of period, hyphen, or numeral -->
		<xsl:choose>
			<xsl:when test="matches($idWoInternalSpaces , '^[0-9]|^\.|^\-')">
				<xsl:value-of select="concat('_', $idWoInternalSpaces)"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$idWoInternalSpaces"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>	
	
<!--
stolen from the web, and for reference: id datatypes must follow NCName restrictions		
		
Practical restrictions of an NCName

The practical restrictions of NCName are that it cannot contain several symbol characters like :, @,  $, %, &, /, +, ,, ;, 
whitespace characters or different parenthesis. Furthermore an NCName cannot begin with a number, dot or minus character 
although they can appear later in an NCName.

Allowed characters: -, ., 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, _, 
a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z

Also, - and . cannot be used as the first character of the value.

Disallowed characters: , !, ", #, $, %, &, ', (, ), *, +, ,, /, :, ;, <, =, >, ?, @, [, \, ], ^, `, {, |, }, ~ -->
			
</xsl:stylesheet>