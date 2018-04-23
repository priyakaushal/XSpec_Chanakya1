<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-popname">
  <title>popname <lnpid>id-UK06-28036</lnpid></title>
  <body>
    <section>
      <p><sourcexml>popname</sourcexml> becomes <targetxml>popname</targetxml> and populated as below:</p>
      <note>If attribute <sourcexml>ln.user-displayed="false"</sourcexml> inside <sourcexml>popname</sourcexml> then <sourcexml>ln.user-displayed="false"</sourcexml> will be suppressed from conversion.</note>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-popname.dita  -->
	
<!-- Sudhanshu Srivastava:
	Edited :- 14 June 2017.
	Comments : This is content specific module.
	
	-->

	<xsl:template match="popname">
		<!--  Original Target XPath:  popname   -->
		<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
			<popname>
				<xsl:apply-templates select="@* | node()"/>
			</popname>
		</legisinfo:names>
	</xsl:template>

	<xsl:template match="popname/@ln.user-displayed[.='false']"/>
</xsl:stylesheet>