<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
	
xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg annot">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="levelinfo">
    <title>levelinfo <lnpid>id-UK06-28052</lnpid></title>
    <body>
        <section><p><sourcexml>levelinfo</sourcexml> becomes
                    <targetxml>primlaw:levelinfo</targetxml> and for child element conversion please
                refer below instruction:  </p><ul>
                <li><sourcexml>classification</sourcexml> becomes
                        <targetxml>primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/classify:classification</targetxml>,
                    attribute <sourcexml>@classscheme</sourcexml> becomes
                        <targetxml>@classscheme</targetxml>, <sourcexml>classitem</sourcexml>
                    becomes <targetxml>classify:classitem</targetxml>,
                        <sourcexml>classitem-identifier</sourcexml> becomes
                        <targetxml>classify:classitem-identifier</targetxml>,
                        <sourcexml>classname</sourcexml> becomes
                        <targetxml>classify:classname</targetxml>.</li>
                <li><sourcexml>leg:aboutreference</sourcexml> becomes
                        <targetxml>primlaw:level/primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/@contenttype="legaboutreference"</targetxml>.
                </li>
            </ul><note>If <sourcexml>levelinfo</sourcexml> and <sourcexml>heading</sourcexml>
                elements are sibblings in source data then conversion should generate
                    <targetxml>primlaw:levelinfo</targetxml> markup after
                    <targetxml>heading</targetxml> element. </note><p>For more clarification please
                see below example:</p>
            <b>Example: </b>
            <pre>

&lt;leg:levelinfo&gt;
    &lt;classification classscheme="analysis-type"&gt;
        &lt;classitem&gt;
            &lt;classitem-identifier&gt;
                &lt;classname&gt;non-halsbury&lt;/classname&gt;
            &lt;/classitem-identifier&gt;
        &lt;/classitem&gt;
    &lt;/classification&gt;
    &lt;leg:aboutreference&gt;
        &lt;ci:cite searchtype="LEG-REF" normcite="UK_ACTS 2004 8 Title"/&gt;
    &lt;/leg:aboutreference&gt;
&lt;/leg:levelinfo&gt;


<b>Becomes</b>
           

&lt;primlaw:levelinfo&gt;
    &lt;ref:relatedcontent&gt;
        &lt;ref:relatedcontentitem contenttype="legaboutreference"&gt;
            &lt;classify:classification classscheme="analysis-type"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;non-halsbury&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
            &lt;lnci:cite normcite="UK_ACTS 2004 8 Title"/&gt;
        &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
&lt;/primlaw:levelinfo&gt;

</pre>
        	<note>If <sourcexml>levelinfo</sourcexml> comes as a child of
        		leg:comntry/level[@leveltype="analysis"] then it will become
        		<targetxml>annotinfo:annotinfo</targetxml> as a child of 
        		annot:annotations/annot:annotation-grp[@grptype="analysis"]/annot:annotation/annotinfo:annotinfo.
        		For more clarification please refer the example below.</note></section>
    	<example>Source XML<codeblock>
    &lt;leg:body>
    &lt;leg:level>
        &lt;leg:level-vrnt leveltype="section">
            &lt;leg:levelbody>
                &lt;leg:comntry>
                    &lt;level leveltype="analysis">
                        &lt;levelinfo>
                            &lt;classification classscheme="analysis-type">
                                &lt;classitem>
                                    &lt;classitem-identifier>
                                        &lt;classname>non-halsbury&lt;/classname>
                                    &lt;/classitem-identifier>
                                &lt;/classitem>
                            &lt;/classification>
                            ...
                        &lt;/levelinfo>
                        ...
                    &lt;/level>
                &lt;/leg:comntry>
            &lt;/leg:levelbody>
        &lt;/leg:level-vrnt>
    &lt;/leg:level>
    ...
&lt;/leg:body>  		
    		</codeblock>
            <b>Target XML </b><codeblock>
        &lt;legis:body>
    &lt;primlaw:level>
            &lt;annot:annotations>
                &lt;annot:annotation-grp grptype="analysis">
                    &lt;annot:annotation>
                        &lt;annotinfo:annotinfo>
                            &lt;classify:classification classscheme="analysis-type">
                                &lt;classify:classitem>
                                    &lt;classify:classitem-identifier>
                                        &lt;classify:classname>non-halsbury&lt;/classify:classname>
                                    &lt;/classify:classitem-identifier>
                                &lt;/classify:classitem>
                            &lt;/classify:classification>
                        &lt;/annotinfo:annotinfo>
                    &lt;/annot:annotation>
                &lt;/annot:annotation-grp>
            &lt;/annot:annotations>
            ...
    &lt;/primlaw:level>
        ...
&lt;/legis:body>    	
            	</codeblock></example>
        <section>
            <title>Change Log</title>
            <p>2017-03-06: <ph id="change_20170306_RS">Added instructions for <sourcexml>leg:comntry/level/levelinfo</sourcexml>.[Master webstar #6791375]</ph></p>
            <p>2016-12-16: <ph id="change_20161216_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_Rosetta_levelinfo_LexAdv_primlaw_levelinfo.dita  -->
	
	<!-- Sudhanshu Srivastava 
	     Edited :- 19 June 2017.
	     Comments :- This is content specific module handling levelinfo.
	-->
	<xsl:template match="levelinfo">
		<!--  Original Target XPath:  primlaw:levelinfo   -->
		<xsl:choose>
			<xsl:when test="parent::level/parent::leg:comntry">
				<annotinfo:annotinfo xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/">
					<xsl:apply-templates select="@* | node() except leg:aboutreference"/>
				</annotinfo:annotinfo>
			</xsl:when>
			<xsl:otherwise>
				<primlaw:levelinfo>
					<xsl:apply-templates select="@* | node()"/>
				</primlaw:levelinfo>		
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>

<!--	<xsl:template match="classification">
		<!-\-  Original Target XPath:  primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/classify:classification   -\->
		<primlaw:levelinfo>
			<ref:relatedcontent xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:relatedcontentitem>
					<classify:classification>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classification>
				</ref:relatedcontentitem>
			</ref:relatedcontent>
		</primlaw:levelinfo>

	</xsl:template>-->

<!--	<xsl:template match="@classscheme">

		<!-\-  Original Target XPath:  @classscheme   -\->
		<xsl:attribute name="classscheme">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>-->

	<!--<xsl:template match="classitem">

		<!-\-  Original Target XPath:  classify:classitem   -\->
		<classify:classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem>

	</xsl:template>-->

<!--	<xsl:template match="classitem-identifier">

		<!-\-  Original Target XPath:  classify:classitem-identifier   -\->
		<classify:classitem-identifier>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem-identifier>

	</xsl:template>-->

<!--	<xsl:template match="classname">

		<!-\-  Original Target XPath:  classify:classname   -\->
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>

	</xsl:template>-->

<!--	<xsl:template match="leg:aboutreference">

		<!-\-  Original Target XPath:  primlaw:level/primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/@contenttype="legaboutreference"   -\->
		<primlaw:level>
			<primlaw:levelinfo>
				<ref:relatedcontent xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
					<ref:relatedcontentitem>
						<xsl:attribute name="contenttype">
							<xsl:text>legaboutreference</xsl:text>
						</xsl:attribute>
					</ref:relatedcontentitem>
				</ref:relatedcontent>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>-->

<!--	<xsl:template match="heading">

		<!-\-  Original Target XPath:  primlaw:levelinfo   -\->
		<primlaw:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:levelinfo>

	</xsl:template>-->

</xsl:stylesheet>