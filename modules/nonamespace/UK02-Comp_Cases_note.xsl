<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"	
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
	exclude-result-prefixes="case dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="note">
		<title>note <lnpid>id-UK02-27237</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml ">note</sourcexml>
					becomes <targetxml class="+ topic/keyword xml-d/targetxml "
						>note</targetxml> comes with optional attribute
						<sourcexml>@notetype</sourcexml> becomes
						<targetxml>@notetype</targetxml>. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;note notetype="commentary"&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Notes&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt;
					&lt;text&gt; This case is distinguishable from &lt;emph
					typestyle="it"&gt;Errington's&lt;/emph&gt; case in that the meeting or
					discussion subsequent to the inquiry, but before the actual
					confirmation of the order, was not concerned with the compulsory
					purchase of the land comprised in the order. In the lower court it was
					assumed that it was an occasion upon which reference might
					inadvertently have been made to it and that the proprietor or his
					representatives should have been there, but the Court of Appeal
					accepted the evidence of members of the deputation that the matter was
					not referred to. Further, the Minister was not then acting in a
					&lt;emph typestyle="it"&gt;quasi&lt;/emph&gt;-judicial capacity, but
					in an administrative one, and it would become impossible for him in
					practice to carry out all his duties if a proper distinction were not
					drawn between &lt;emph typestyle="it"&gt;quasi&lt;/emph&gt;-judicial
					and administrative functions. &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/note&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;note notetype="commentary"&gt; &lt;bodytext&gt;
					&lt;h&gt; &lt;emph typestyle="bf"&gt;Notes&lt;/emph&gt; &lt;/h&gt;
					&lt;pgrp&gt; &lt;p&gt; &lt;text&gt; This case is distinguishable from
					&lt;emph typestyle="it"&gt;Errington's&lt;/emph&gt; case in that the
					meeting or discussion subsequent to the inquiry, but before the actual
					confirmation of the order, was not concerned with the compulsory
					purchase of the land comprised in the order. In the lower court it was
					assumed that it was an occasion upon which reference might
					inadvertently have been made to it and that the proprietor or his
					representatives should have been there, but the Court of Appeal
					accepted the evidence of members of the deputation that the matter was
					not referred to. Further, the Minister was not then acting in a
					&lt;emph typestyle="it"&gt;quasi&lt;/emph&gt;-judicial capacity, but
					in an administrative one, and it would become impossible for him in
					practice to carry out all his duties if a proper distinction were not
					drawn between &lt;emph typestyle="it"&gt;quasi&lt;/emph&gt;-judicial
					and administrative functions. &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/bodytext&gt; &lt;/note&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\note.dita  -->

	<xsl:template match="note">
		<!--  Original Target XPath:  note   -->
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | refpt | heading"/>
			<bodytext>
				<xsl:apply-templates select="node() except (refpt, heading)"/>
			</bodytext>
		</note>
	</xsl:template>

	<!-- JD: match DT output; <note>s meeting these conditions are wrapped in <courtcase:opinions>, although there is no specific mention in the CI -->
  <!-- NOTE: elements mapping to courtcase:opinions are:
  case:judgments
  -->
	<!--xsl:template match="note[preceding-sibling::*[1][self::case:disposition] and not(ancestor::case:headnote)]"-->
	<!-- JD: 2017-11-28: removing 'and not(ancestor::case:judgments)' in attempt to match DT (and regression) output. -->
	<xsl:template match="note[preceding-sibling::*[1][self::case:disposition]]"><!--  and not(ancestor::case:judgments) -->
		<courtcase:opinions>
			<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | refpt | heading"/>
				<bodytext>
					<xsl:apply-templates select="node() except (refpt, heading)"/>
				</bodytext>
			</note>
		</courtcase:opinions>
	</xsl:template>

	<xsl:template match="@notetype">
		<!--  Original Target XPath:  @notetype   -->
		<xsl:attribute name="notetype">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>