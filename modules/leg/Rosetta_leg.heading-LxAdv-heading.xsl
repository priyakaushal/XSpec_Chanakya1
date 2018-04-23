<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:glp="http://www.lexis-nexis.com/glp" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0"
	exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_leg.heading-LxAdv-heading">
		<title>
			<sourcexml>leg:heading</sourcexml>
			<lnpid>id-IN06-38020</lnpid>
		</title>
		<body>
			<section>
				<p><sourcexml>leg:heading</sourcexml> becomes
						<sourcexml>heading</sourcexml>.</p>
				<pre>

&lt;leg:level id="CRPC_V2.0006.sect.d2e192"&gt;
    &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT"&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;title searchtype="SECT-TITLE"&gt;&lt;refpt id="CRPC_V2.0006.sect" type="ext"/&gt;1. Short title
                and extent...&lt;/title&gt;
        &lt;/leg:heading&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

</pre>
				<p>
					<b>becomes</b>
				</p>
				<pre>

&lt;primlaw:level xml:id="CRPC_V2.0006.sect.d2e192" leveltype="section"&gt;
    &lt;ref:anchor id="CRPC_V2.0006.sect" anchortype="global"/&gt;
    &lt;heading inline="true"&gt;
        &lt;title&gt;1. Short title and extent...&lt;/title&gt;
    &lt;/heading&gt;
&lt;/primlaw:level&gt;

</pre>
			</section>
			<section>
				<title>Change Log</title>
				<p>2016-07-01: <ph id="change_20160701_SS">Created.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\Rosetta_leg.heading-LxAdv-heading.dita  -->

	<xsl:template match="leg:heading">
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<!-- JD: 2017-08-10: moved glp:note to after heading, per id-CCCC-10333 "leg:heading/glp:note becomes primlaw:level/note with note placed after heading." -->
			<!-- JD: 2017-08-08: excluded leg:histnote; this is also handled in /modules/leg/leg.level-LxAdv-primlaw.level.xsl  -->
			<!-- JD: 2017-07-27: excluded leg:empleg ("Note: The primlaw:authority will be sibling of heading."); this is handled in /modules/leg/leg.level-LxAdv-primlaw.level.xsl -->
			<xsl:apply-templates select="@* | node() except (leg:empleg,leg:histnote,glp:note)"/>
		</heading>
		<xsl:apply-templates select="glp:note"/>
	</xsl:template>

	<!-- The below handled in /modules/nonamespace/Rosetta_heading-LxAdv-heading.xsl --> 
	<!--<xsl:template match="heading">
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</heading>
	</xsl:template>-->

</xsl:stylesheet>
