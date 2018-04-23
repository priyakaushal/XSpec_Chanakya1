<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_History_commencement">
  <title>Primlaw History - Commencement Information <lnpid>id-AU20-22280</lnpid></title>
  
  <body>
    <section>
      <p>If <sourcexml>docinfo:doc-id</sourcexml> contains "history" AND 
        <sourcexml>cttr:annotations/cttr:annotsummary[@id="commencement"]</sourcexml> then output 
        <targetxml>cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@xml:id="commencement"][@grptype="commencement"]</targetxml>, 
        within the <targetxml>cttr:history/primlawhist:primlawhist</targetxml> that was created by the 
        "cttr:body/cttr:content" section of this CI.</p>
      <p>If <sourcexml>cttr:annotsummary[@id="commencement"]/table/title</sourcexml> exists, map it to 
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp/heading/title</targetxml> 
        using standard mapping rules. Otherwise create <targetxml>primlawhist:primlawhist/heading/title</targetxml> 
        with text "Commencement Information".</p>
      <p>Create <targetxml>ref:anchor[@id="ref-commencement"]</targetxml> within 
        <targetxml>primlawhist:histgrp</targetxml>.</p>
      <p>Each <sourcexml>table/tgroup/tbody/row</sourcexml> becomes a separate 
        <targetxml>primlawhist:histitem</targetxml> within the new 
        <targetxml>primlawhist:histgrp[@grptype="commencement"]</targetxml> element 
        and is populated as follows:
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
          <li>
            <sourcexml>entry/p-limited</sourcexml>  maps to existing open 
            <targetxml>primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]</targetxml> by adding a separate 
            <targetxml>textitem</targetxml> for each.</li>
        </ul>
      </p>
      <p>Each <sourcexml>table/p-limited</sourcexml> becomes a separate 
        <targetxml>primlawhist:histitem</targetxml> within the new 
        <targetxml>primlawhist:histgrp[@grptype="commencement"]</targetxml> element 
        and the content of <sourcexml>table/p-limited</sourcexml> is mapped to 
        <targetxml>primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]/textitem</targetxml> 
        using standard mapping rules.</p>
    </section>
    
    <example>
      <title>Example 1: Source Primlaw History - Commencement Information</title>
      <codeblock>
&lt;cttr:annotsummary id="commencement"&gt;
	&lt;table&gt;
		&lt;title&gt;Commencement Information&lt;/title&gt;
		&lt;tgroup cols="2"&gt;
			&lt;tbody&gt;
				&lt;row&gt;
					&lt;!-- HI9 start date --&gt;
					&lt;entry&gt;Start Date&lt;/entry&gt;
					&lt;entry&gt;Proclamation 1/3/2012&lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;!-- HI11 Authoritah --&gt;
					&lt;entry&gt;Authority&lt;/entry&gt;
					&lt;entry&gt;
						&lt;p-limited&gt;Gazette No F2012&lt;/p-limited&gt;
						&lt;p-limited&gt;Source: Evidence Act 1995 s 4(6) &lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker&gt;s46&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="005X"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/p-limited&gt;
					&lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;!-- HI12 Provisions --&gt;
					&lt;entry&gt;Provisions&lt;/entry&gt;
					&lt;entry&gt;The day on which the provisions of the Act (other than
                                        sections 185, 186 and 187) cease to apply to proceedings in
                                        an Australian Capital Territory court, except so far as the
                                        provisions apply to proceedings in all Australian courts.” &lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;!-- HI13 Exclusions --&gt;
					&lt;entry&gt;Exclusions&lt;/entry&gt;
					&lt;entry&gt;
						&lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;The Act&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
					&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/tbody&gt;
		&lt;/tgroup&gt;
	&lt;/table&gt;
&lt;/cttr:annotsummary&gt;
        </codeblock>
      <title>Example 1: Target Primlaw History - Commencement Information</title>
      <codeblock>
&lt;cttr:history&gt;
	&lt;primlawhist:primlawhist&gt;
		&lt;ref:anchor id="ref-history"/&gt;
		&lt;heading&gt;
			&lt;title&gt;History&lt;/title&gt;
		&lt;/heading&gt;
		...
		&lt;primlawhist:histgrp xml:id="commencement" grptype="commencement"&gt;
			&lt;heading&gt;
				&lt;title&gt;Commencement Information&lt;/title&gt;
			&lt;/heading&gt;
    		&lt;primlawhist:histitem&gt;
    			&lt;primlawhist:histitemdiv divtype="heading"&gt;
    				&lt;textitem&gt;Start Date&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem&gt;Proclamation 1/3/2012&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    		&lt;/primlawhist:histitem&gt;
    		&lt;primlawhist:histitem&gt;
    			&lt;primlawhist:histitemdiv divtype="heading"&gt;
    				&lt;textitem&gt;Authority&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem&gt;Gazette No F2012&lt;/textitem&gt;
    				&lt;textitem&gt;Source: Evidence Act 1995 s 4(6) &lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;s46&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="005X-CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    				&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    		&lt;/primlawhist:histitem&gt;
    		&lt;primlawhist:histitem&gt;
    			&lt;primlawhist:histitemdiv divtype="heading"&gt;
    				&lt;textitem&gt;Provisions&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem&gt;The day on which the provisions of the Act (other than
                                    sections 185, 186 and 187) cease to apply to proceedings in an
                                    Australian Capital Territory court, except so far as the provisions
                                    apply to proceedings in all Australian courts." &lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    		&lt;/primlawhist:histitem&gt;
    		&lt;primlawhist:histitem&gt;
    			&lt;primlawhist:histitemdiv divtype="heading"&gt;
    				&lt;textitem&gt;Exclusions&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;The Act&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="005X-CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    				&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
			&lt;/primlawhist:histitem&gt;
		&lt;/primlawhist:histgrp&gt;
	&lt;/primlawhist:primlawhist&gt;
&lt;/cttr:history&gt;
       </codeblock>
    </example>    

    <section>
      <title>
        Changes:
      </title>
      <p>2016-03-01: <ph id="change_20160301a_snb">Added support for <sourcexml>table/p-limited</sourcexml> in 
        source document to solve an issue with source document variations encountered during conversion testing.</ph>
      </p>
      <p>2016-01-13: <ph id="change_20160113b_snb">Changed mapping to create 
        <targetxml>primlawhist:histgrp[@xml:id="commencement"][@grptype="commencement"]</targetxml> 
        within the already existing <targetxml>cttr:history/primlawhist:primlawhist</targetxml> 
        element instead of creating a new <targetxml>primlawhist:primlawhist</targetxml> element. 
        Changed error in the title mapping; changed to be mapped from 
        <sourcexml>cttr:annotsummary[@id="commencement"]/table/title</sourcexml> instead of 
        <sourcexml>cttr:annotations/heading/title</sourcexml> because sampe source documents show 
        it there, and <sourcexml>cttr:annotations/heading/title</sourcexml> contains other data. 
        If title is not in this new XPATH, a title is created rather than converted. Also               
        moved the target title to be inside <targetxml>primlawhist:histgrp</targetxml> instead of inside the 
        <targetxml>primlawhist:primlawhist</targetxml> parent. Added creation of 
        <targetxml>ref:anchor[@id="ref-commencement"]</targetxml>. Updated target markup example 
        accordingly.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211d_snb">Created new section for Commencement Information.</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_History_commencement.dita  -->
	<xsl:message>Leg_Citator_AUNZ_History_commencement.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:doc-id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@xml:id="commencement"][@grptype="commencement"]   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<primlawhist:histgrp>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histgrp>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary[@id=&#34;commencement&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@xml:id="commencement"][@grptype="commencement"]   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<primlawhist:histgrp>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histgrp>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

	<xsl:template match="cttr:annotsummary[@id=&#34;commencement&#34;]/table/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/heading/title   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="table/tgroup/tbody/row"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

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

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="entry/p-limited"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="table/p-limited"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem   -->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

</xsl:stylesheet>