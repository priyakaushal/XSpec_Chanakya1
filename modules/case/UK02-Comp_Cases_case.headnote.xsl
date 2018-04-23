<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" 
	xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.headnote">
		<title>case:headnote <lnpid>id-UK02-27220</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:headnote</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>/compcase:compositecourtcase/compcase:head</targetxml>. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:headnote&gt; &lt;note notetype="commentary"&gt;
					&lt;pgrp&gt; &lt;p&gt; &lt;text&gt; As to Inquiries under the Housing
					Acts, see Halsbury, Supp, Public Health, paras 1034&amp;#x2013;1042,
					and for Cases, see Digest Supp, Public Health, cases
					502l&amp;#x2013;506d. &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/note&gt; &lt;/case:headnote&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;compcase:head&gt; &lt;note notetype="commentary"&gt;
					&lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt; As to Inquiries
					under the Housing Acts, see Halsbury, Supp, Public Health, paras
					1034&amp;#x2013;1042, and for Cases, see Digest Supp, Public Health,
					cases 502l&amp;#x2013;506d. &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/bodytext&gt; &lt;/note&gt; &lt;/compcase:head&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.headnote.dita  -->

	<xsl:template match="case:headnote">
		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head   -->
			<compcase:head xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
				<xsl:apply-templates select="case:info"/>

				<!-- JD: order appears to be "catchwordgrp, case:factsummary, case:decisionsummary, note"	
				so use this as the grouping
				-->
				<xsl:for-each-group select="catchwordgrp | case:factsummary | case:decisionsummary | note[not(preceding-sibling::case:priorhist or preceding-sibling::case:references)]"
					group-starting-with="catchwordgrp">
					
					<!-- Now group the group we just created to get factsummary and decisionsummary together, to wrap within <casesum:summaries> -->
					<xsl:for-each-group select="current-group()"
					 group-adjacent="self::case:factsummary[node()] or self::case:decisionsummary[node()]">
						<xsl:choose>
							<xsl:when test="current-grouping-key()">
								<casesum:summaries>
									<xsl:apply-templates select="current-group()"/>
								</casesum:summaries>
							</xsl:when>
							<xsl:otherwise>
								<xsl:apply-templates select="current-group()"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each-group>
				</xsl:for-each-group>				
				<xsl:apply-templates select="case:references"/>
				<!-- match DT output order -->
				<xsl:apply-templates select="note[preceding-sibling::*[1][self::case:references]]"/>
				<xsl:if test="case:priorhist">
					<casehist:casehist>
						<xsl:apply-templates select="case:priorhist"/>
					</casehist:casehist>
				</xsl:if>
				<!-- match DT output order -->
				<xsl:apply-templates select="note[preceding-sibling::*[1][self::case:priorhist]]"/>
			</compcase:head>
	</xsl:template>

</xsl:stylesheet>
