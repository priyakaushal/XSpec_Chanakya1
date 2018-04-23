<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_catchwordgrp">
		<title>catchwordgrp <lnpid>id-CCCC-12023</lnpid></title>
		<body>
			<section>
				<p><sourcexml>catchwordgrp</sourcexml> is a container element that should be omitted, but its content should be
					retained and converted as follows: <ul>
						<li><sourcexml>catchwordgrp/heading</sourcexml> becomes
								<targetxml>caseinfo:caseinfo/classify:classification/heading</targetxml>.</li>
						<li><sourcexml>catchwordgrp/catchwords</sourcexml> becomes
								<targetxml>caseinfo:caseinfo/classify:classification</targetxml> with the value of
								<targetxml>classify:classification/@classscheme</targetxml> set to "catchwords". Each instance of
								<sourcexml>catchwords</sourcexml> should be converted to its own
								<targetxml>classify:classification[@classscheme="catchwords"]</targetxml> element. The children of
								<sourcexml>catchwords</sourcexml> are converted as follows:<ul>
								<li><sourcexml>catchwords/catchphrase</sourcexml> becomes
										<targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</li>
							</ul></li>
					</ul></p>
				<note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more
					consecutive sibling source elements map to <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to
					a single <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content ordering.</note>
				<note><b>Exception for Pacific Content (AU):</b> If <sourcexml>nl</sourcexml> occur within
						<sourcexml>catchwords/catchphrase</sourcexml> then conversion should replace the <sourcexml>nl</sourcexml>
					with a space.</note>
			</section>
			<example>
				<title>Example: CA content</title>
				<codeblock> &lt;catchwordgrp&gt; &lt;catchwords&gt; &lt;catchphrase&gt;Zoning by-laws&lt;/catchphrase&gt;
					&lt;catchphrase&gt;Defendant's commercial greenhouse not permitted under prior by-law and therefore not a
					continuing non-conforming legal use&lt;/catchphrase&gt; &lt;catchphrase&gt;Municipality having right to
					enforce by-law by injunction&lt;/catchphrase&gt; &lt;catchphrase&gt;Planning Act, R.S.P.E.I. 1974, c. P-6, ss.
					46(1)(e), (f), (g), 49, 52, 56&lt;/catchphrase&gt; &lt;catchphrase&gt;Municipalities Act, R.S.P.E.I. 1974, c.
					M-15.1, s. 1(b).&lt;/catchphrase&gt; &lt;/catchwords&gt; &lt;/catchwordgrp&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;classify:classification classscheme="catchwords"&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Zoning by-laws&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Defendant's commercial greenhouse not
					permitted under prior by-law and therefore not a continuing non-conforming legal
					use&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Municipality having
					right to enforce by-law by injunction&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;Planning Act, R.S.P.E.I. 1974, c. P-6, ss. 46(1)(e), (f), (g), 49, 52,
					56&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Municipalities Act,
					R.S.P.E.I. 1974, c. M-15.1, s. 1(b).&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;/classify:classification&gt; </codeblock>
			</example>
			<example>
				<title>Example: CA content <sourcexml>catchwordgrp</sourcexml> with child <sourcexml>heading</sourcexml></title>
				<codeblock> &lt;catchwordgrp&gt; &lt;heading&gt; &lt;title&gt;Indexation :&lt;/title&gt; &lt;/heading&gt;
					&lt;catchwords&gt; &lt;catchphrase&gt;Assurance&lt;/catchphrase&gt; &lt;catchphrase&gt;Assurance
					automobile&lt;/catchphrase&gt; &lt;catchphrase&gt;Régime d'indemnisation sans égard à la
					responsabilité&lt;/catchphrase&gt; ... &lt;/catchwords&gt; &lt;/catchwordgrp&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;classify:classification classscheme="catchwords"&gt; &lt;heading&gt; &lt;title&gt;Indexation
					:&lt;/title&gt; &lt;/heading&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;Assurance&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;Assurance automobile&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Régime d'indemnisation sans égard à la
					responsabilité&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					... &lt;/classify:classification&gt; </codeblock>
			</example>
			<example>
				<title>Example: AU content</title>
				<codeblock> &lt;catchwordgrp&gt; &lt;catchwords&gt; &lt;catchphrase&gt;Practice and
					procedure&lt;/catchphrase&gt; &lt;catchphrase&gt;Applications&lt;/catchphrase&gt; &lt;catchphrase&gt;Applicant
					sought declaration that insurance agents were independent contractors&lt;/catchphrase&gt;
					&lt;catchphrase&gt;Agents had already commenced proceedings in the Chief Industrial Magistrates Court of NSW
					claiming entitlements&lt;/catchphrase&gt; &lt;/catchwords&gt; &lt;/catchwordgrp&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;classify:classification classscheme="catchwords"&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Practice and
					procedure&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;Applications&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;Applicant sought declaration that insurance agents were independent
					contractors&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Agents had already
					commenced proceedings in the Chief Industrial Magistrates Court of NSW claiming
					entitlements&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;/classify:classification&gt; </codeblock>
			</example>
			<example>
				<title>Example: NZ content</title>
				<codeblock> &lt;catchwordgrp&gt; &lt;catchwords&gt; &lt;catchphrase&gt; &lt;emph
					typestyle="it"&gt;Deceit&lt;/emph&gt; &lt;/catchphrase&gt; &lt;catchphrase&gt; &lt;emph
					typestyle="it"&gt;Amendment of Declaration&lt;/emph&gt; &lt;/catchphrase&gt; &lt;catchphrase&gt; &lt;emph
					typestyle="it"&gt;Terms&lt;/emph&gt; &lt;/catchphrase&gt; &lt;catchphrase&gt; &lt;emph
					typestyle="it"&gt;Reservation of leave&lt;/emph&gt; &lt;/catchphrase&gt; &lt;catchphrase&gt; &lt;emph
					typestyle="it"&gt;New Trial&lt;/emph&gt; &lt;/catchphrase&gt; &lt;catchphrase&gt; &lt;emph
					typestyle="it"&gt;Two concurring verdicts&lt;/emph&gt; &lt;/catchphrase&gt; &lt;/catchwords&gt;
					&lt;/catchwordgrp&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;classify:classification classscheme="catchwords"&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt; &lt;emph
					typestyle="it"&gt;Deceit&lt;/emph&gt; &lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt; &lt;emph typestyle="it"&gt;Amendment of Declaration&lt;/emph&gt;
					&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt; &lt;emph
					typestyle="it"&gt;Terms&lt;/emph&gt; &lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt; &lt;emph typestyle="it"&gt;Reservation of leave&lt;/emph&gt;
					&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt; &lt;emph
					typestyle="it"&gt;New Trial&lt;/emph&gt; &lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt; &lt;emph typestyle="it"&gt;Two concurring verdicts&lt;/emph&gt;
					&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;/classify:classification&gt; </codeblock>
			</example>
			<example>
				<title>Example: UK content</title>
				<codeblock> &lt;catchwordgrp&gt; &lt;catchwords&gt; &lt;catchphrase&gt;Copyright &amp;#x2013; Compilation
					&amp;#x2013; No evidence of any specific infringement &amp;#x2013; Declaratory judgment &amp;#x2013; Possible
					infringement by documents not yet in existence &amp;#x2013; RSC Ord XXV, r 5.&lt;/catchphrase&gt;
					&lt;/catchwords&gt; &lt;/catchwordgrp&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;classify:classification classscheme="catchwords"&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Copyright &amp;#x2013; Compilation
					&amp;#x2013; No evidence of any specific infringement &amp;#x2013; Declaratory judgment &amp;#x2013; Possible
					infringement by documents not yet in existence &amp;#x2013; RSC Ord XXV, r 5.&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt; &lt;/classify:classification&gt;
				</codeblock>
			</example>
			<note>If the punctuation marks occuring between <sourcexml>catchwords</sourcexml> and
					<sourcexml>catchphrase</sourcexml> conversion should drop these punctuation in output this will be handle by
				stylesheet.</note>
			<note>If the punctuation marks occuring inside the <sourcexml>catchphrase</sourcexml> then, these will be retain
				in output.</note>
			<example>
				<title>Example: UK content, punctuation marks occuring between <sourcexml>catchwords</sourcexml> and
						<sourcexml>catchphrase</sourcexml></title>
				<codeblock> &lt;catchwordgrp&gt; &lt;catchwords&gt; ( &lt;catchphrase&gt;Comitology&lt;/catchphrase&gt; —
					&lt;catchphrase&gt;Council Decision 1999/468/EC laying down the procedures for the exercise of implementing
					powers conferred on the Commission&lt;/catchphrase&gt; — &lt;catchphrase&gt;Criteria for choosing between the
					different procedures for adopting implementing measures&lt;/catchphrase&gt; —
					&lt;catchphrase&gt;Effects&lt;/catchphrase&gt; — &lt;catchphrase&gt;Obligation to state
					reasons&lt;/catchphrase&gt; — &lt;catchphrase&gt;Annulment in part of Regulation (EC) No 1655/2000 of the
					European Parliament and of the Council concerning the Financial Instrument for the Environment
					(LIFE)&lt;/catchphrase&gt; ) &lt;/catchwords&gt; &lt;/catchwordgrp&gt; <b>becomes</b>
					&lt;classify:classification classscheme="catchwords"&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Comitology&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Council
					Decision 1999/468/EC laying down the procedures for the exercise of implementing powers conferred on the
					Commission&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Criteria for choosing between the different
					procedures for adopting implementing measures&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;Effects&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Obligation to state
					reasons&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Annulment in part of Regulation (EC) No
					1655/2000 of the European Parliament and of the Council concerning the Financial Instrument for the
					Environment (LIFE)&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;/classify:classification&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-05-12: <ph id="change_20150512_PS">Updated note for Pacific Content (AU) to replace
							<sourcexml>nl</sourcexml> with space when occur in <sourcexml>catchwords/catchphrase</sourcexml>, Webstar
						# 5992021, Applicable on AU01.</ph></p>
				<p>2015-01-07: <ph id="change_20150107_PS">Added note for Pacific Content (AU) to drop <sourcexml>nl</sourcexml>
						if occur within <sourcexml>catchwords/catchphrase</sourcexml>, Webteam # 282244, Applicable on
					AU01.</ph></p>
				<p>2013-12-13: <ph id="change_2013_12_13_SSX">Added instruction to drop punctuation occuring between catchwords
						and catchphrase Webteam# 247658</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_catchwordgrp.dita  -->

	<xsl:template match="catchwordgrp">
		<xsl:apply-templates select="node() except heading | @*"/>
	</xsl:template>
	
	<!--<!-\- Vikas Rohilla: added for the streamID CA01	-\->
	<xsl:template match="catchwordgrp[preceding-sibling::*[1][self::case:info]][$streamID='CA01']"/>
	
	<!-\- Vikas Rohilla: added for the streamID CA01	-\->
	<xsl:template match="catchwordgrp[not(preceding-sibling::*[1][self::case:info])][$streamID='CA01']">
		<caseinfo:caseinfo>
			<xsl:apply-templates select="node() except heading | @*"/>
		</caseinfo:caseinfo>
	</xsl:template>
	<!-\- Vikas Rohilla: added for the streamID CA01	-\->
	<xsl:template match="case:headnote/catchwordgrp[$streamID='CA01']" mode="headnote-catchwordgrp">
		<xsl:apply-templates select="node() except heading | @*"/>
	</xsl:template>-->


	<xsl:template match="catchwords">
		<!--  Original Target XPath:  caseinfo:caseinfo/classify:classification/heading   -->
		<!-- Sudhanshu 5 May 2017- implemented for CA01 -->
<!--
		<xsl:choose>
			<xsl:when test="$streamID = 'CA01'">
				<caseinfo:caseinfo>
					<classify:classification>
						<xsl:attribute name="classscheme">
							<xsl:text>catchwords</xsl:text>
						</xsl:attribute>
						<xsl:apply-templates select="preceding-sibling::heading"/>
						<xsl:apply-templates select="@* | node() except page"/>
					</classify:classification>
				</caseinfo:caseinfo>
			</xsl:when>
			<xsl:when test="$streamID = 'HK03'">
					<classify:classification>
						<xsl:attribute name="classscheme">
							<xsl:text>catchwords</xsl:text>
						</xsl:attribute>
						<xsl:apply-templates select="preceding-sibling::heading"/>
						<xsl:apply-templates select="@* | node() | child::page"/>
					</classify:classification>
			</xsl:when>
			<xsl:otherwise>-->
		<!-- Awantika: 2017-10-30- checking for empty catchwords element, As catchwords is coming blank in source for AU01, 
			therefore empty classify:classification is being created and thus resulting in validation -->
		<xsl:if test=".!=''">		
		<classify:classification>
					<xsl:attribute name="classscheme">
						<xsl:text>catchwords</xsl:text>
					</xsl:attribute>
					<xsl:apply-templates select="preceding-sibling::heading"/>
					<xsl:apply-templates select="@* | node() except page"/>
				</classify:classification>
		</xsl:if>
		<!--	</xsl:otherwise>
		</xsl:choose>
-->
		<!-- MDS 2017-06-21 - The if and all to the named template are not needed.  
			The apply-templates only runs with a page child exists. 
			The named template (located in Rosetta_catchwordgrp_page.xsl) already only functions when page has a parent catchwordgrp or catchwords.
		-->
		<xsl:apply-templates select="page[not($streamID='HK03')]"/>

		<!--<xsl:if test="child::page">
			<xsl:call-template name="page"/>
		</xsl:if>-->
		<!--<xsl:if test="page">
	    <classify:classification>
	      <classify:classitem>
	        <classify:classitem-identifier>
	          <classify:classname>
	            <xsl:apply-templates select="page"/>	          
	          </classify:classname>
	        </classify:classitem-identifier>
	      </classify:classitem>
	    </classify:classification>
	  </xsl:if>-->
	</xsl:template>

	<xsl:template match="catchwordgrp/heading">

		<!--  Original Target XPath:  caseinfo:caseinfo/classify:classification/heading   -->


		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>



	</xsl:template>

	<!--<xsl:template match="catchwordgrp/catchwords">

		<!-\-  Original Target XPath:  caseinfo:caseinfo/classify:classification   -\->
		<caseinfo:caseinfo>
			<classify:classification>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>
		</caseinfo:caseinfo>

	</xsl:template>-->
	<!-- If the punctuation marks occuring between catchwords and catchphrase conversion should drop these punctuation in output this will be
handle by stylesheet. -->
	<!-- Awntika-2017-11-15- Updated for webstar 7047020, where text is coming outside catchphrase and it should be taken inside
					classify:classname and text should drop from the caseinfo:caseinfo -->
	<xsl:template match="catchwords/text()[following::catchphrase or preceding::catchphrase]">
		<xsl:choose>
			<xsl:when test="$streamID='AU01'"/>
			<xsl:otherwise>
				<xsl:value-of select="replace(., '[^a-zA-Z0-9]', ' ')"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="catchwords/catchphrase">

		<!--  Original Target XPath:  classify:classification/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<!-- JD: 2017-06-15: I can find no instruction for creating @classscheme='catchphrase' in id-CCCC-12023 -->

		<classify:classitem><!-- classscheme="catchphrase">-->
			<xsl:if test="$streamID=('AU13','UK02','HK09')">
				<xsl:attribute name="classscheme">catchphrase</xsl:attribute>
			</xsl:if>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
					<!-- Awantika: 2017-11-15- Updated for webstar 7047020, where text is coming outside catchphrase and it should be taken inside
					classify:classname and text should drop from the caseinfo:caseinfo-->
					<xsl:if test="$streamID='AU01' and following-sibling::text()[1]">
					<xsl:value-of select="./following-sibling::text()[1]"></xsl:value-of>
					</xsl:if>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>
	</xsl:template>

	<!--	<xsl:template match="nl">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->



	<xsl:template match="catchphrase">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>
