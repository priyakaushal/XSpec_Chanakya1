<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"	
xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita leg jurisinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.govoffice">
    <title>leg:govoffice <lnpid>id-UK06-28038</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:govoffice</sourcexml> becomes <targetxml>legis:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname</targetxml>.</p> 
        </section>
        <section>
            <title>Changes</title>
            <p>2015-08-19 <ph id="change_20150819_AB"> Conversion Instruction Created. (DB #2376).</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.govoffice.dita  -->
	 
<!-- Sudhanshu Srivastava :
	Edited :- 14 june 2017.
	Comments :- This is content specific module handing leg:govoffice under head part.
	-->
	<xsl:template match="leg:govoffice">
		<!--  Original Target XPath:  legis:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname   -->
				<jurisinfo:approvedby>
					<jurisinfo:govbodyname>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:govbodyname>
				</jurisinfo:approvedby>
	</xsl:template>
</xsl:stylesheet>