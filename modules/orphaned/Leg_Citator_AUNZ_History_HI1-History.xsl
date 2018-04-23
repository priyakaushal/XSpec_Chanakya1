<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_History_HI1-History">
  <title>cttr:content/cttr:annotations/heading/title containing History - with cttr:annotsummary/table <lnpid>id-AU20-22283</lnpid></title>
  
  <body>
    <section>
      <p>If <sourcexml>cttr:annotations/heading/title</sourcexml> contains "History", and 
        <sourcexml>cttr:annotations/cttr:annotsummary</sourcexml> contains only a <sourcexml>table</sourcexml> 
        element, create <targetxml>primlawhist:histgrp[@grptype="HI1-History"]</targetxml> inside 
        the <targetxml>cttr:history/primlawhist:primlawhist</targetxml> that was created by the 
        "cttr:body/cttr:content" section of this CI.
      </p>
      <p>Each <sourcexml>table/tgroup/tbody/row</sourcexml> becomes a separate 
        <targetxml>primlawhist:histitem</targetxml> within the new 
        <targetxml>primlawhist:histgrp[@grptype="HI1-History"]</targetxml> element. EXCEPTION: do not 
        create <targetxml>primlawhist:histitem</targetxml> if the <sourcexml>table/tgroup/tbody</sourcexml>
        does not contain any descendant non-whitespace-text content. If created, 
        <targetxml>primlawhist:histitem</targetxml> is populated as follows:
        <ul>
          <li>The first <sourcexml>entry</sourcexml> element in each row (<sourcexml>row/entry[1]</sourcexml>) beomes 
            <targetxml>primlawhist:histitemdiv[@divtype="heading"]/textitem</targetxml>.</li>
          <li>All following sibling <sourcexml>entry</sourcexml> elements in each row are mapped into a  
            second single <targetxml>primlawhist:histitemdiv[@divtype="text"]</targetxml>, with each 
            <sourcexml>entry</sourcexml> mapped to a separate <targetxml>textitem</targetxml> element 
            within that single <targetxml>primlawhist:histitemdiv[@divtype="text"]</targetxml>.</li>
          <li>
            <sourcexml>entry/lnlink</sourcexml> becomes <targetxml>textitem/ref:lnlink</targetxml> 
            using standard mapping rules, with one exception: 
            <sourcexml>entry/lnlink/marker/inlineobject</sourcexml> becomes a sibling of 
            <targetxml>textitem/ref:lnlink</targetxml> (<targetxml>textitem/ref:inlineobject</targetxml>) using 
            standard mapping rules for <sourcexml>inlineobject</sourcexml> in the general markup section 
            of this CI.</li>
        </ul>
      </p>
    </section>
    
    <example>
      <title>Example 1: Source historical data graph</title>
      <codeblock>
&lt;cttr:annotations&gt;
	&lt;!-- HI1 Label History - NOT REALLY IN MOCKUPS --&gt;
	&lt;heading&gt;
		&lt;title&gt;History&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:annotsummary&gt;
		&lt;!-- HI2 graphical representation of history --&gt;
		&lt;table&gt;
			&lt;tgroup cols="5"&gt;
				&lt;tbody&gt;
					&lt;row&gt;
						&lt;entry&gt;1995&lt;/entry&gt;
						&lt;entry&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;
									&lt;inlineobject type="image" key="green-icon" filename="IconStatusGreen.png"/&gt;
								&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1996-43_sch2.1995-2"/&gt;
									&lt;param name="label" value="1995"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry&gt;1997&lt;/entry&gt;
						&lt;entry&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;
									&lt;inlineobject type="image" key="green-icon" filename="IconStatusGreen.png"/&gt;
								&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1997-34_sch6"/&gt;
									&lt;param name="label" value="1997"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry&gt;1999&lt;/entry&gt;
						&lt;entry&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;
									&lt;inlineobject type="image" key="green-icon" filename="IconStatusGreen.png"/&gt;
								&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1999-125_sch6"/&gt;
									&lt;param name="label" value="1999"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
						&lt;entry&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;
									&lt;inlineobject type="image" key="green-icon" filename="IconStatusGreen.png"/&gt;
								&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1999-146_sch1.1995-2"/&gt;
									&lt;param name="label" value="1999"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
					&lt;/row&gt;
				&lt;/tbody&gt;
			&lt;/tgroup&gt;
		&lt;/table&gt;
	&lt;/cttr:annotsummary&gt;
&lt;/cttr:annotations&gt;
</codeblock>

      <title>Example 1: Target historical data graph</title>
      <codeblock>
&lt;primlawhist:primlawhist&gt;
	&lt;ref:anchor id="ref-history"/&gt;
	&lt;heading&gt;
		&lt;title&gt;History&lt;/title&gt;
	&lt;/heading&gt;
	&lt;primlawhist:histgrp grptype="HI1-History"&gt;
		&lt;primlawhist:histitem&gt;
			&lt;primlawhist:histitemdiv divtype="heading"&gt;
				&lt;textitem&gt;1995&lt;/textitem&gt;
			&lt;/primlawhist:histitemdiv&gt;
			&lt;primlawhist:histitemdiv divtype="text"&gt;
				&lt;textitem&gt;
					&lt;ref:inlineobject&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="object-key"/&gt;
								&lt;ref:key-value value="IconStatusGreen.png"/&gt;
							&lt;/ref:locator-key&gt;
							&lt;ref:locator-params&gt;
								&lt;proc:param name="componentseq" value="1"/&gt;
								&lt;proc:param name="object-type" value="image"/&gt;
								&lt;proc:param name="object-smi" value="insertedByIcceConversion"/&gt;
							&lt;/ref:locator-params&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:inlineobject&gt;
					&lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker/&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1996-43_sch2.1995-2"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/textitem&gt;
			&lt;/primlawhist:histitemdiv&gt;
		&lt;/primlawhist:histitem&gt;
		&lt;primlawhist:histitem&gt;
			&lt;primlawhist:histitemdiv divtype="heading"&gt;
				&lt;textitem&gt;1997&lt;/textitem&gt;
			&lt;/primlawhist:histitemdiv&gt;
			&lt;primlawhist:histitemdiv divtype="text"&gt;
				&lt;textitem&gt;
					&lt;ref:inlineobject&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="object-key"/&gt;
								&lt;ref:key-value value="IconStatusGreen.png"/&gt;
							&lt;/ref:locator-key&gt;
							&lt;ref:locator-params&gt;
								&lt;proc:param name="componentseq" value="1"/&gt;
								&lt;proc:param name="object-type" value="image"/&gt;
								&lt;proc:param name="object-smi" value="insertedByIcceConversion"/&gt;
							&lt;/ref:locator-params&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:inlineobject&gt;
					&lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker/&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1997-34_sch6"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/textitem&gt;
			&lt;/primlawhist:histitemdiv&gt;
		&lt;/primlawhist:histitem&gt;
		&lt;primlawhist:histitem&gt;
			&lt;primlawhist:histitemdiv divtype="heading"&gt;
				&lt;textitem&gt;1999&lt;/textitem&gt;
			&lt;/primlawhist:histitemdiv&gt;
			&lt;primlawhist:histitemdiv divtype="text"&gt;
				&lt;textitem&gt;
					&lt;ref:inlineobject&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="object-key"/&gt;
								&lt;ref:key-value value="IconStatusGreen.png"/&gt;
							&lt;/ref:locator-key&gt;
							&lt;ref:locator-params&gt;
								&lt;proc:param name="componentseq" value="1"/&gt;
								&lt;proc:param name="object-type" value="image"/&gt;
								&lt;proc:param name="object-smi" value="insertedByIcceConversion"/&gt;
							&lt;/ref:locator-params&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:inlineobject&gt;
					&lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker/&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1999-125_sch6"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/textitem&gt;
				&lt;textitem&gt;
					&lt;ref:inlineobject&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="object-key"/&gt;
								&lt;ref:key-value value="IconStatusGreen.png"/&gt;
							&lt;/ref:locator-key&gt;
							&lt;ref:locator-params&gt;
								&lt;proc:param name="componentseq" value="1"/&gt;
								&lt;proc:param name="object-type" value="image"/&gt;
								&lt;proc:param name="object-smi" value="insertedByIcceConversion"/&gt;
							&lt;/ref:locator-params&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:inlineobject&gt;
					&lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker/&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1999-146_sch1.1995-2"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/textitem&gt;
			&lt;/primlawhist:histitemdiv&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
</codeblock>
    </example>
    
    <section>
      <title>
        Changes:
      </title>
      <p>2016-03-22: <ph id="change_20160322b_snb">Added clarification that <targetxml>primlawhist:histitem</targetxml> 
        should not be created when <sourcexml>table/tgroup/tbody</sourcexml> does not contain any descendant 
        non-whitespace-text content.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211b_snb">Added a condition for performing the mappings of 
        this section. Added creation of <sourcexml>primlawhist:histgrp[@grptype="HI1-History"]</sourcexml>. 
        Added instructions for mapping source content that were missing. Changed 
        <targetxml>ref:anchor@id="historical-data-graph"</targetxml> to be 
        <targetxml>ref:anchor[@id=" grptype="HI1-History"]</targetxml>, removed old instruction to map to 
        <targetxml>primlawhist:histitem/bodytext/table</targetxml> (now mapped to 
        <targetxml>primlawhist:histitem/primlawhist:histitemdiv</targetxml>). Replaced examples.</ph>
      </p>
    </section>   
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_History_HI1-History.dita  -->
	<xsl:message>Leg_Citator_AUNZ_History_HI1-History.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp[@grptype="HI1-History"]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp[@grptype="HI1-History"]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="table"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp[@grptype="HI1-History"]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="table/tgroup/tbody/row"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem   -->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="table/tgroup/tbody"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem   -->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="entry"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="heading"]/textitem   -->
		<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="row/entry[1]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="heading"]/textitem   -->
		<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="entry/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  textitem/ref:lnlink   -->
		<textitem>
			<ref:lnlink>
				<xsl:apply-templates select="@* | node()"/>
			</ref:lnlink>
		</textitem>

	</xsl:template>

	<xsl:template match="entry/lnlink/marker/inlineobject"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  textitem/ref:lnlink   -->
		<textitem>
			<ref:lnlink>
				<xsl:apply-templates select="@* | node()"/>
			</ref:lnlink>
		</textitem>

	</xsl:template>

	<xsl:template match="inlineobject"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem   -->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="primlawhist:histgrp[@grptype=&#34;HI1-History&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

</xsl:stylesheet>