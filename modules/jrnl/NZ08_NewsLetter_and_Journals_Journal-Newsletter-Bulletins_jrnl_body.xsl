<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
	xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Caselaw_Body">
		<title>jrnl:body <lnpid>id-NZ08-24012</lnpid></title>

		<body>
			<p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:body</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">nitf:body</targetxml></p>

			<p><targetxml class="+ topic/keyword xml-d/targetxml ">nitf:body.head</targetxml>, and <targetxml class="+ topic/keyword xml-d/targetxml ">nitf:body.content</targetxml> are created as children of <targetxml
					class="+ topic/keyword xml-d/targetxml ">nitf:body</targetxml></p>

			<pre xml:space="preserve" class="- topic/pre ">
&lt;jrnl:body&gt;
	&lt;jrnl:info&gt;
	...
	&lt;/jrnl:info&gt;
&lt;/jrnl:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
   &lt;nitf:body.head&gt;
    ...
   &lt;/nitf:body.head&gt;
   &lt;nitf:body.content&gt;
    ...
   &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;</pre>

		</body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ08_NewsLetter_and_Journals\Journal-Newsletter-Bulletins_jrnl_body.dita  -->
	<!-- NZ08_NewsLetter_and_Journals_Journal-Newsletter-Bulletins_jrnl_body.xsl requires manual development!</xsl:message> -->

	<xsl:template match="jrnl:body">
		<!-- all possible children are:  scope(abstract), jrnl:prelim(nitf:hedline,nitf:byline) -->
		<xsl:if test="scope | jrnl:prelim">
			<nitf:body.head>
				<xsl:apply-templates select="node() except (jrnl:bodytext,jrnl:info)"/>
			</nitf:body.head>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
