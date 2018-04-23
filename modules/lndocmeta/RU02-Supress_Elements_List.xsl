<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_lndocmeta="http://www.lexis-nexis.com/lndocmeta" xmlns:lnv="http://www.lexis-nexis.com/lnv" xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe" version="2.0" exclude-result-prefixes="dita lndocmeta lnv lnvxe">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-Supress_Elements_List">
    <title>Suppress Elements <lnpid>id-RU02-32053</lnpid> </title>

    <body>        
        <p><b>Suppress empty elements unless:</b></p>
        <ol>
            <li> It results in an invalid document. </li>
            <li> It is expressly exempted. </li>
            <li> It has attributes. </li>
        </ol>
        <note>The intent is to suppress meaningless markup (no semantic, formatting or other
            meaning). Not intended to cause re-evaluation of parent elements, i.e. do not go "up
            the tree".</note>
        <p> Suppress the list of elements and its attributes given below.</p>

        <ul>
            <li>
                <sourcexml>lndocmeta:lneopt</sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnhex12lni </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnhexlni </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnlang </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnlangcountry </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnlastupdaction </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnlasturp3 </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnlngth </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnseqbrowse </sourcexml>
            </li>
            <li>
                <sourcexml>lndocmeta:lnuserlni </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LANGUAGE </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-CITY </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-CO </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-COUNTRY </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-IND </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-ORG </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-PERSON </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-PROD </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-ST </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-SUBJ </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LN-TS </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LSTL1 </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LSTL2 </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LSTL3 </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LSTL4 </sourcexml>
            </li>
            <li>
                <sourcexml>lnv:LSTL5 </sourcexml>
            </li>
            <li>
                <sourcexml>lnvxe:hierannot </sourcexml>
            </li>
        </ul>
        <section>            
            <p>Created.</p>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-07-08<ph id="change_20140708_AS">Instructions to suppress empty and meaningless elements...Db issue #10</ph></p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-Supress_Elements_List.dita  -->
	<xsl:message>RU02-Supress_Elements_List.xsl requires manual development!</xsl:message> 

	<xsl:template match="lndocmeta:lneopt"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnhex12lni "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnhexlni "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnlang "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnlangcountry "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnlastupdaction "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnlasturp3 "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnlngth "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnseqbrowse "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lndocmeta:lnuserlni "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LANGUAGE "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-CITY "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-CO "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-COUNTRY "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-IND "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-ORG "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-PERSON "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-PROD "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-ST "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-SUBJ "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LN-TS "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LSTL1 "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LSTL2 "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LSTL3 "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LSTL4 "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnv:LSTL5 "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnvxe:hierannot "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>