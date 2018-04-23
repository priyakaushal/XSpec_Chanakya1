<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita dig glp leg case seclaw">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_bodytext-to-LexisAdvance_bodytext">
		<title><sourcexml>bodytext</sourcexml> to <targetxml>bodytext</targetxml>
			<lnpid>id-CCCC-10249</lnpid></title>
		<body>
			<section>
				<p><sourcexml>bodytext</sourcexml> becomes <targetxml>bodytext</targetxml>
					<ul>
						<li><sourcexml>@searchtype</sourcexml> attribute should be suppressed.</li>
					</ul>
				</p>
			</section>
			<example>
				<title>Source XML 1</title>
				<codeblock> &lt;bodytext&gt; &lt;p&gt;&lt;text&gt;This is a judgment of some significance for daily conveyancing practice.&lt;/text&gt;&lt;/p&gt; &lt;/bodytext&gt; </codeblock>

				<title>Target XML 1</title>
				<codeblock> &lt;bodytext&gt; &lt;p&gt;&lt;text&gt;This is a judgment of some significance for daily conveyancing practice.&lt;/text&gt;&lt;/p&gt; &lt;bodytext&gt; </codeblock>
			</example>
			<example spectitle="Example: bodytext comes with @searchtype attribute">
				<title>Source XML 2</title>
				<codeblock> &lt;bodytext searchtype="COMMENTARY"&gt; &lt;p&gt;&lt;text&gt;Final recommendation 5. Interim recommendations pp 19 and 22.&lt;/text&gt;&lt;/p&gt; &lt;/bodytext&gt; </codeblock>

				<title>Target XML 2</title>
				<codeblock> &lt;bodytext&gt; &lt;p&gt;&lt;text&gt;Final recommendation 5. Interim recommendations pp 19 and 22.&lt;/text&gt;&lt;/p&gt; &lt;bodytext&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2012-09-06: </p>
			</section>
		</body>
	</dita:topic>
	<!--Vikas Rohilla : Updated the template for the streamID CA02DC  -->
	<xsl:template match="bodytext">
		<xsl:choose>
			<!-- JL: added the junk characters to get rid of bodytext elements in AU/NZ when there are nbsp and the junk character in them -->
			<xsl:when test="parent::leg:comntry and not(child::*[not(self::p[not(child::*[not(self::text[normalize-space(string-join(., '')) = ('', '&#194;&#160;', '&#160;')])])] or self::hrule)])"/>

			<!-- BRT 11/29/17  WS7053986 suppress this context for UK15cs -->
			<xsl:when test="references and name(preceding-sibling::*[1]) = 'level' and $streamID = 'UK15'"/>
			
			<xsl:when test="child::glp:note and parent::dig:body and $streamID = 'CA02DC'">
				<xsl:apply-templates select="node() | @*"/>
			</xsl:when>
			<xsl:when test="child::case:embeddedcase and $streamID = 'CA02DS'">
				<xsl:apply-templates select="node() | @*"/>
			</xsl:when>
			<xsl:when test="@searchtype = 'COMMENTARY' and $streamID = ('AU08') and parent::level/@leveltype = 'group'">
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</xsl:when>
			<xsl:when test="@searchtype = 'COMMENTARY' and $streamID = ('AU08') and parent::level">
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<!-- use case AU08 PS2017050402162840900LNIAUCOURTRULES_input_fcr10081327.xml for bodytext
										PS2017042901112352335LNIAUCOURTRULES_input_voff10081099.xml for glp:note as preceding sibling
										-->
					<xsl:apply-templates select="preceding-sibling::glp:note"/>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</xsl:when>
			<xsl:when test="parent::entry">
				<xsl:apply-templates select="@* | node()"/>
			</xsl:when>

			<!-- Added instruction for UK15 by Priya Kaushal -->
			<xsl:when test="$streamID = 'UK15'">
				<xsl:if test="not(./child::references[1]) or ./child::references[1]/preceding-sibling::node()">

					<seclaw:bodytext>
						<xsl:apply-templates select="@* | node()"/>
						<xsl:for-each select="following-sibling::level">
							<xsl:call-template name="bodytext-following-level"/>
						</xsl:for-each>
						<xsl:for-each select="following-sibling::bodytext/references">

							<xsl:call-template name="bodytext-references"/>
						</xsl:for-each>
					</seclaw:bodytext>
				</xsl:if>

				<!--<xsl:choose>
					<xsl:when test="not(./references)">
						<seclaw:bodytext>
							<xsl:apply-templates select="@* | node()"/>
							<xsl:for-each select="following-sibling::level">
								<xsl:call-template name="bodytext-following-level"/>
							</xsl:for-each>
							<xsl:for-each select="following-sibling::bodytext/references">
								
								<xsl:call-template name="bodytext-references"/>
							</xsl:for-each>
						</seclaw:bodytext>
					</xsl:when>
					<xsl:otherwise>
						
						
							<!-\-<xsl:for-each select="following-sibling::level">
								<xsl:call-template name="bodytext-following-level"/>
							</xsl:for-each>-\->
							
						
					</xsl:otherwise>
				</xsl:choose>-->
			</xsl:when>
			<!--Ravikant: 2018-03-09: added the when condition for the stream ID MY02 -->
			<xsl:when test="$streamID ='MY02'">
				<xsl:apply-templates select="node()"/>
			</xsl:when>			
			<xsl:when test="$streamID='UK09'">
				<xsl:choose>
					<xsl:when test="footnotegrp/footnote">
						<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:apply-templates select="preceding-sibling::glp:note[parent::level]"/>
							<xsl:apply-templates select="@* | node()"/>
						</bodytext>
					</xsl:when>
					<xsl:otherwise>
						<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:apply-templates select="preceding-sibling::glp:note[parent::level]"/>
							<xsl:apply-templates select="@* | node() except(footnotegrp)"/>
						</bodytext>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="preceding-sibling::glp:note[parent::level]"/>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="bodytext[ancestor::leg:comntry and (not(parent::level/@leveltype) and not(parent::level/parent::leg:comntry))][$streamID = ('UK06', 'UK07')]">
		<annot:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</annot:bodytext>
	</xsl:template>

	<!-- Added template for UK15 by Priya kaushal -->
	<xsl:template name="bodytext-following-level">
		<xsl:choose>
			<xsl:when test="child::heading/title/refpt">
				<seclaw:level>
					<xsl:attribute name="leveltype">
						<xsl:value-of select="@leveltype"/>
					</xsl:attribute>
					<!--<xsl:apply-templates select="child::heading/title/refpt"/>-->
					<xsl:apply-templates select="@* | node() except (level[preceding-sibling::bodytext])"/>
				</seclaw:level>

			</xsl:when>
			<xsl:when test="child::heading/title and (./child::heading/following-sibling::node())">

				<seclaw:level>
					<xsl:attribute name="leveltype">
						<xsl:value-of select="@leveltype"/>
					</xsl:attribute>
					<!--<xsl:apply-templates select="child::heading/title"/>-->
					<xsl:apply-templates select="@* | node() except (level[preceding-sibling::bodytext])"/>
				</seclaw:level>


			</xsl:when>
			<xsl:when test="child::heading/title and not(./child::heading/following-sibling::node())">

				<seclaw:level>
					<xsl:attribute name="leveltype">
						<xsl:value-of select="@leveltype"/>
					</xsl:attribute>
					<!--<xsl:apply-templates select="child::heading/title"/>-->
					<xsl:apply-templates select="@* | node() except (level[preceding-sibling::bodytext])"/>
					<seclaw:bodytext/>
				</seclaw:level>


			</xsl:when>

		</xsl:choose>
	</xsl:template>

	<!-- Added template for UK15 by Priya kaushal -->
	<xsl:template name="bodytext-references">
		<ref:relatedrefs>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedrefs>

	</xsl:template>

	<!--***********
		
		BRT 11/26/17 the following template causes an ambiguity error with a more generic template - template match="level[1][parent::level]" 
	WS7051206. This template prevents duplicate seclaw:bodytext entries -->
	<xsl:template match="level[preceding-sibling::bodytext[not(./child::references[1]) or ./child::references[1]/preceding-sibling::node()]][$streamID = 'UK15']"/>
	<xsl:template match="bodytext/@searchtype"/>
</xsl:stylesheet>
