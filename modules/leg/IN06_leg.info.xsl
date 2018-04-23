<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita comm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN06_leg.info">
  <title><sourcexml>leg:info</sourcexml> <lnpid>id-IN06-38013</lnpid></title>
  <body>
    <section>
      <p><sourcexml>comm:body/level/bodytext/legfragment/leg:info</sourcexml> becomes
                    <sourcexml>seclaw:body/seclaw:level/seclaw:bodytext/seclaw:level[@leveltype="unclassified"]/seclaw:bodytext/primarysource/legis:legis/legis:head/primlawinfo:primlawinfo</sourcexml>
                and populated as below: <note>If <sourcexml>leg:juris</sourcexml> comes under the
                        '<sourcexml>legfragment/leg:info</sourcexml>' then conversion needs to move
                        <targetxml>jurisinfo:jurisdiction/jurisinfo:system</targetxml> under the
                    wrapper element
                        <targetxml>seclaw:level[@leveltype="unclassified"]/seclaw:levelinfo</targetxml>.
                    Refer the below input and target (NewLexis) example.</note>
                <note>If <sourcexml>leg:officialname</sourcexml>,
                        <sourcexml>leg:officialnum</sourcexml> and <sourcexml>leg:year</sourcexml>
                    comes under the '<sourcexml>legfragment/leg:info</sourcexml>' then conversion
                    needs to create specific wrapper
                        <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo</targetxml>
                    markup under the <targetxml>seclaw:bodytext/primlaw:excerpt</targetxml> for
                    capturing the target converted child elements. Refer the below input and target
                    (NewLexis) example.</note>
                <note>Conversion should not create adjacent
                        <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be merged to
                    single <targetxml>primlawinfo:primlawinfo</targetxml>.</note>
                <pre>

    &lt;comm:body&gt;
        &lt;level&gt;
            &lt;bodytext&gt;
                &lt;legfragment&gt;
                    &lt;leg:info&gt;
			   &lt;leg:officialname searchtype="LEGISLATION" ln.user-displayed="false"&gt;APPENDIX - Relevant Provisions of the Competition Act, 2002 (Act No. 12
                            of 2003)&lt;/leg:officialname&gt;
                        &lt;leg:year searchtype="LEGISLATION" ln.user-displayed="false"&gt;2002&lt;/leg:year&gt;
                        &lt;leg:officialnum searchtype="LEGISLATION" ln.user-displayed="false"&gt;Act No.
                            12,2002&lt;/leg:officialnum&gt;
                        &lt;leg:juris searchtype="LEGISLATION" ln.user-displayed="false"&gt;IN&lt;/leg:juris&gt;
                    &lt;/leg:info&gt;
                    &lt;leg:level id="KKSH_ED14.0002.act.Body"&gt;
                        &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
                            &lt;leg:heading&gt;
                                &lt;title&gt;&lt;refpt type="ext" id="KKSH_ED14.0002.act"/&gt;APPENDIX -
                                    Relevant Provisions of the Competition Act, 2002 (Act No. 12 of
                                    2003)&lt;/title&gt;
                            &lt;/leg:heading&gt;
                            ...
                        &lt;/leg:level-vrnt&gt;
                      &lt;/leg:level&gt;
                &lt;/legfragment&gt;
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/comm:body&gt;

</pre>
                <b>becomes</b>
                <pre>

&lt;seclaw:body&gt;
      &lt;seclaw:level leveltype="unclassified"&gt;
         &lt;seclaw:levelinfo&gt;
            &lt;jurisinfo:jurisdiction&gt;
               &lt;jurisinfo:system&gt;IN&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
         &lt;/seclaw:levelinfo&gt;
         &lt;seclaw:bodytext&gt;
              &lt;primlaw:excerpt&gt;
                    &lt;primlaw:level leveltype="unclassified"&gt;
                        &lt;primlaw:levelinfo&gt;
                            &lt;primlawinfo:primlawinfo&gt;
                                &lt;legisinfo:legisinfo&gt;
                                    &lt;legisinfo:names&gt;
                                        &lt;legisinfo:officialtitle source="editoriallyassigned"&gt;APPENDIX -
                                            Relevant Provisions of the Competition Act, 2002 (Act No. 12 of
                                            2003)&lt;/legisinfo:officialtitle&gt;
                                    &lt;/legisinfo:names&gt;
                                &lt;/legisinfo:legisinfo&gt;
                                &lt;primlawinfo:dates&gt;
                                    &lt;primlawinfo:enactdate year="2002"/&gt;
                                &lt;/primlawinfo:dates&gt;
                                &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"
                                    &gt;Act No. 12,2002&lt;/primlawinfo:identifier&gt;
                            &lt;/primlawinfo:primlawinfo&gt;
                        &lt;/primlaw:levelinfo&gt;
                    &lt;/primlaw:level&gt;
                    &lt;primlaw:level xml:id="KKSH_ED14.0002.act.Body" leveltype="act"&gt;
                        &lt;ref:anchor anchortype="global" id="KKSH_ED14.0002.act"/&gt;
                        &lt;heading&gt;
                            &lt;title&gt;APPENDIX - Relevant Provisions of the Competition Act, 2002 (Act No. 12
                                of 2003)&lt;/title&gt;
                        &lt;/heading&gt;
                        ...
                    &lt;/primlaw:level&gt;
                &lt;/primlaw:excerpt&gt;
          &lt;/seclaw:bodytext&gt;
       &lt;/seclaw:level&gt;      
&lt;/seclaw:body&gt;

</pre>
            </p>
</section>
    <section>
      <title>Change Log</title>
      <p>2016-07-01: <ph id="change_20160701_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\IN06_leg.info.dita  -->
	<xsl:message>IN06_leg.info.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>

	</xsl:template>

	<xsl:template match="comm:body/level/bodytext/legfragment/leg:info">

		<!--  Original Target XPath:  jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>

	</xsl:template>

	<xsl:template match="seclaw:body/seclaw:level/seclaw:bodytext/seclaw:level[@leveltype=&#34;unclassified&#34;]/seclaw:bodytext/primarysource/legis:legis/legis:head/primlawinfo:primlawinfo">

		<!--  Original Target XPath:  jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>

	</xsl:template>

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>

	</xsl:template>

	<xsl:template match="legfragment/leg:info">

		<!--  Original Target XPath:  jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>

	</xsl:template>

	<xsl:template match="leg:officialname">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:officialnum">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:year">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>