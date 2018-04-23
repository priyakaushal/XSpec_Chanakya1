<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:glp="http://www.lexis-nexis.com/glp"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
						xmlns:leg="http://www.lexis-nexis.com/glp/leg"
						exclude-result-prefixes="dita docinfo xs glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_heading-to-LexisAdvance_heading">
		<title><sourcexml>heading</sourcexml> to <targetxml>heading</targetxml> <lnpid>id-CCCC-10349</lnpid></title>
		<body>
			<section>
				<!--   @SBy:  bodytext/heading is added based on the QC XSLT   -->
				<!--p><sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml>. The attributes of <sourcexml>heading</sourcexml> are handled as  -->
				<p><sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml> and <sourcexml>bodytext/heading</sourcexml> becomes <targetxml>h</targetxml>. The attributes of <sourcexml>heading</sourcexml> are handled as
					follows: <ul>
						<li><sourcexml>heading/@inline</sourcexml> is suppressed if target is <targetxml>h</targetxml>.  Otherwise, <sourcexml>heading/@inline</sourcexml> becomes <targetxml>heading/@inline</targetxml>. The valid values for
								<targetxml>@inline</targetxml> are:<ul>
								<li>"true"</li>
								<li>"false"</li>
							</ul></li>
						<li><sourcexml>heading/@align</sourcexml> becomes <targetxml>heading@align</targetxml>. The valid values for
								<targetxml>@align</targetxml> are:<ul>
								<li>"left"</li>
								<li>"right"</li>
								<li>"center"</li>
							</ul>
						</li>
						<li><sourcexml>heading/@searchtype</sourcexml> should be suppressed.</li>
					</ul>
				</p>
				<note>Conversion should not create consecutive <targetxml>heading</targetxml> elements. When 2 or more sibling source elements map to
						<targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would
					interfere with content ordering.</note>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock>

&lt;heading align="center"&gt;
	&lt;title&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;

				</codeblock>
				<title>Target XML</title>
				<codeblock>

&lt;heading align="center"&gt;
  &lt;title&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;

		</codeblock>
			</example>
			<example>
				<title>Source XML</title>
				<codeblock>

&lt;heading inline="false"&gt;
	&lt;title&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

				</codeblock>
				<title>Target XML</title>
				<codeblock>

&lt;heading inline="false"&gt;
	  &lt;title&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

		</codeblock>
			</example>
			<section><title>Changes</title></section>
			<p>2013-03-06: <ph id="change_20130306_raj">Removed instructions/rules for exceptional desig scenario and deprecated
				attribute <targetxml>@followstitle</targetxml>.</ph></p>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_heading-LxAdv-heading.dita  -->

	<xsl:template match="bodytext/heading[not($streamID='CA14' or $streamID='USLPA')]">
		
		<!--   @SBy:  this rule added based on the QC XSLT   -->
		
		<h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:choose>
				<xsl:when test="$streamID=('UK07','AU14','HK07')">
					<xsl:apply-templates select="title | subtitle" mode="bodytext_heading"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="@* | node()"/>
					
					<!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
					<xsl:for-each select="following-sibling::node()[1][ self::heading ]">
						<xsl:call-template name="combineSiblingsOfSameName"/>
					</xsl:for-each>
				</xsl:otherwise>
			</xsl:choose>
		</h>
		
	</xsl:template>
	


	<xsl:template match="heading">

		<!--  Original Target XPath:  heading   -->
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">

	<!-- MDS 2017-05-05 - Added 'except(refpt) due to UK08CA source markup 
	JL added leg:empleg to except list - it's addressed elsewhere and not valid here ever -->
			<xsl:apply-templates select="@* | node() except (refpt | leg:empleg)"/>

			<!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
			<xsl:for-each select="following-sibling::node()[1][ self::heading ]">
				<xsl:call-template name="combineSiblingsOfSameName"/>
			</xsl:for-each>
			<!-- BRT 3/22/18 WS7142635 moified this condition to only move note if it's a child of toc-entry -->
			<xsl:if test="$streamID=('UK06','UK12') and parent::toc-entry">
				<xsl:apply-templates select="following-sibling::note"/>
			</xsl:if>
		</heading>
	</xsl:template>

	<!--		<li><sourcexml>heading/@searchtype</sourcexml> should be suppressed.</li>  -->
	<!--		<li><sourcexml>heading/@inline</sourcexml> is suppressed if target is <targetxml>h</targetxml>.  Otherwise, ...  -->
	<!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
	<xsl:template match="heading/@searchtype | bodytext/heading/@inline | heading[ preceding-sibling::node()[1][ self::heading ] ]"/>

	<xsl:template match="heading[ not( parent::bodytext ) ]/@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:copy-of select=" . "/>

	</xsl:template>

	<xsl:template match="heading/@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:copy-of select=" . "/>

	</xsl:template>
	
	<xsl:template match="title [$streamID=('UK07','AU14','HK07')]" mode="bodytext_heading">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="subtitle [$streamID=('UK07','AU14','HK07')]" mode="bodytext_heading">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	
</xsl:stylesheet>