<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
    <title>leg:level <lnpid>id-st07-31414</lnpid></title>
    <body>
        <section>
            <p>
                <ul>
                    <li><sourcexml>leg:level</sourcexml> becomes
                            <targetxml>primlaw:level</targetxml> comes with attributes,
                            <sourcexml>@id</sourcexml> Becomes <targetxml>@xml:id</targetxml>
                        <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml>
                        attributes <sourcexml>@subdoc</sourcexml> becomes
                            <targetxml>@includeintoc</targetxml> and
                            <sourcexml>toc-caption</sourcexml> becomes
                            <targetxml>alternatetoccaption</targetxml>, the values are tokenized, <ul>
                            <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subagency]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
                        </ul> and populated as: <note>If the input files are having
                                <sourcexml>@leveltype</sourcexml> values other than the tokenized
                            list shown above, the value will be set as
                                <targetxml>@leveltype="unclassified"</targetxml>, but in case of
                            below mentioned scenario please follow as: <ul>
                                <li><sourcexml>leg:level-vrnt[@leveltype="treaty-conv"]</sourcexml>
                                    will become
                                        <targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
                                <li><sourcexml>leg:level-vrnt[@leveltype="intro"]</sourcexml> will
                                    become
                                        <targetxml>primlaw:level[@leveltype="introduction"]</targetxml>.</li>
                                <li><sourcexml>leg:level-vrnt[@leveltype="conv.sect"]</sourcexml>
                                    will become
                                        <targetxml>primlaw:level[@leveltype="section"]</targetxml>.</li>
                                <li><sourcexml>leg:level-vrnt[@leveltype="group"]</sourcexml> will
                                    become
                                        <targetxml>primlaw:level[@leveltype="chapter"]</targetxml>.</li>
                            </ul>
                        </note>
                        <pre>
      
       &lt;leg:level id="IPCPY.HACIRID.BODY"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION TREATY-CONV" leveltype="treaty-conv"&gt;
        &lt;leg:heading&gt;
            &lt;title searchtype="CONV-TITLE"&gt;&lt;refpt type="ext" id="IPCPY.HACIRID"/&gt;The Hague Agreement
                concerning the international registration of industrial designs&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level id="IPCPY.HACIRID.ENTRY"&gt;
                &lt;leg:level-vrnt
                    toc-caption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement" subdoc="true" searchtype="LEGISLATION ATTACHMENT" leveltype="attachment"&gt;
                    &lt;leg:heading&gt;
                        &lt;edpnum&gt;&lt;refpt type="ext" id="IPCPY.HACIRID.ENTRY"/&gt;[150,001]&lt;/edpnum&gt;
                        &lt;title searchtype="ATTACH-TITLE"&gt;Entry into force of the 1999 Act and of the Common
                            Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague
                            Agreement&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    .............
                    .............
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
    
    </pre>
                        <b>Becomes</b>
                        <pre>  
    
&lt;funddoc:body&gt;
    &lt;primlaw:level xml:id="IPCPY.HACIRID.BODY" leveltype="treaty"&gt;
        &lt;ref:anchor id="IPCPY.HACIRID" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/title&gt;
        &lt;/heading&gt;
            &lt;primlaw:level alternatetoccaption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement" includeintoc="true" leveltype="attachment"&gt;
                &lt;ref:anchor id="IPCPY.HACIRID.ENTRY" anchortype="global"/&gt;
                &lt;heading&gt;
                    &lt;desig&gt;[150,001]&lt;/desig&gt;
                    &lt;title&gt;Entry into force of the 1999 Act and of the Common
                        Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague
                        Agreement&lt;/title&gt;
                &lt;/heading&gt;
                ............
                ............
            &lt;/primlaw:level&gt;
    &lt;/primlaw:level&gt;
&lt;/funddoc:body&gt;
    
    </pre>
                        <sourcexml>leg:level-vrnt</sourcexml> will be omitted and all its contents
                        will be retained in conversion <note>In New Lexis
                                <targetxml>primlaw:level</targetxml> element is used instead of
                            Rosetta elements <sourcexml>leg:level</sourcexml> and
                                <sourcexml>leg:level-vrnt</sourcexml>. So element
                                <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
                            conversion and attributes
                                <sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will become
                                <targetxml>primlaw:level/@leveltype</targetxml> with its value,
                                <sourcexml>/leg:level-vrnt/@searchtype</sourcexml> will be
                            suppressed, <sourcexml>/leg:level-vrnt/@subdoc</sourcexml> will become
                                <targetxml>primlaw:level/@includeintoc</targetxml> with its value
                            and <sourcexml>/leg:level-vrnt/@toc-caption</sourcexml> will become
                                <targetxml>/primlaw:level/@alternatetoccaption</targetxml> with all
                            its value.</note> See below example: <pre>
&lt;leg:level id="IPCPY.HACIRID.ENTRY"&gt;
    &lt;leg:level-vrnt
        toc-caption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement"
        subdoc="true" searchtype="LEGISLATION ATTACHMENT" leveltype="attachment"&gt;
        ............
        ............
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
</pre>
                        <b>becomes</b>
                        <pre>
&lt;primlaw:level xml:id="IPCPY.HACIRID.ENTRY" alternatetoccaption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement"
    includeintoc="true" leveltype="attachment"&gt;
    .............
    .............
&lt;/primlaw:level&gt;
</pre>
                    </li>
                </ul>
            </p>
        </section>  
        <section>
            <title>Changes</title>
            
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\International_Instruments\leg.level.dita  -->
	<xsl:message>International_Instruments_leg.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="toc-caption">

		<!--  Original Target XPath:  alternatetoccaption   -->
		<alternatetoccaption>
			<xsl:apply-templates select="@* | node()"/>
		</alternatetoccaption>

	</xsl:template>

	<xsl:template match="leg:level-vrnt[@leveltype=&#34;treaty-conv&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="treaty"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt[@leveltype=&#34;intro&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="introduction"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt[@leveltype=&#34;conv.sect&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="section"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt[@leveltype=&#34;group&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="chapter"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@leveltype">

		<!--  Original Target XPath:  primlaw:level/@leveltype   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@searchtype">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@subdoc">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@toc-caption">

		<!--  Original Target XPath:  /primlaw:level/@alternatetoccaption   -->
		<primlaw:level>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>