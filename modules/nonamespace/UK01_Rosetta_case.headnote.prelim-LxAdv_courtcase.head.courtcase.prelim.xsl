<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.headnote.prelim-LxAdv_courtcase.head.courtcase.prelim">
		<title>prelim <lnpid>id-UK01-27029</lnpid></title>
		<body>
			<section>
				<p>When <sourcexml>prelim</sourcexml> is child of <sourcexml>case:headnote</sourcexml> becomes
						<targetxml>courtcase:head/courtcase:prelim</targetxml>.</p>
				<p>All children of <sourcexml>prelim</sourcexml> should be mapped to children of
						<targetxml>courtcase:prelim/bodytext</targetxml>.</p>
			</section>
			<example>

				<codeblock> &lt;case:headnote&gt; .... &lt;prelim&gt; &lt;p&gt; &lt;text&gt;In Case C-334/99,&lt;/text&gt;
					&lt;/p&gt; &lt;p&gt; &lt;text&gt;Federal Republic of Germany, represented by C.-D. Quassowski, acting as
					Agent, assisted by J. Sedemund, Rechtsanwalt,&lt;/text&gt; &lt;/p&gt; &lt;/prelim&gt; ....
					&lt;/case:headnote&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:head&gt; .... &lt;courtcase:prelim&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;In Case
					C-334/99,&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Federal Republic of Germany, represented by
					C.-D. Quassowski, acting as Agent, assisted by J. Sedemund, Rechtsanwalt,&lt;/text&gt; &lt;/p&gt;
					&lt;/bodytext&gt; &lt;/courtcase:prelim&gt; .... &lt;/courtcase:head&gt; </codeblock>
			</example>
			<section>
				<title>Changes Webteam</title>
				<p>2013-10-23: <ph id="change_20131023_SSX"> Created on 2013-10-23 Webteam # 239816</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.headnote.prelim-LxAdv_courtcase.head.courtcase.prelim.dita  -->

	<xsl:template match="prelim[parent::case:headnote]">
		<!--  Original Target XPath:  courtcase:head/courtcase:prelim   -->
		<courtcase:prelim>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</courtcase:prelim>
	</xsl:template>

</xsl:stylesheet>
