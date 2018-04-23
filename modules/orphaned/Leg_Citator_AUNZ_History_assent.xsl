<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_History_assent">
  <title>Primlaw History - Assent <lnpid>id-AU20-22279</lnpid></title>
  
  <body>
    <section>
      <p>If <sourcexml>docinfo:doc-id</sourcexml> contains "history" AND (either 
        <sourcexml>cttr:annotations/heading/note[id="HI4"]</sourcexml> or 
        <sourcexml>cttr:annotations/heading/title[text()="Assent"]</sourcexml> (case-insensitive)), then output 
        <targetxml>cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]</targetxml>, 
        within the <targetxml>cttr:history/primlawhist:primlawhist</targetxml> that was created by the 
        "cttr:body/cttr:content" section of this CI.</p>
      <p>
        <sourcexml>cttr:annotations/heading/title</sourcexml> becomes 
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp/heading/title</targetxml> using standard mapping rules.</p>
      <p>Create <targetxml>ref:anchor[@id="ref-assent"]</targetxml> within 
        <targetxml>primlawhist:histgrp</targetxml>.</p>
      <p>Create <targetxml>primlawhist:histitem</targetxml> as a child of <targetxml>primlawhist:histgrp</targetxml>
      </p>
      <p>For <sourcexml>heading/note/[@id="HI4"]/p</sourcexml> create a <targetxml>primlawhist:histitem/textitem</targetxml>
      </p>
      <p>For <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI5"]</sourcexml> map to 
        <targetxml>primlawhist:histitem/primlawhist:histitemdiv[@divtype="heading"][@status="assent"]/textitem</targetxml>
      </p>
      <p>When <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI6"]/lnlink</sourcexml> map to 
        <targetxml>primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]/textitem/ref:lnlink</targetxml>
      </p>
      <p>When <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI6"]/p-limited</sourcexml> map to existing open 
        <targetxml>primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]</targetxml> by adding a separate 
        <targetxml>textitem</targetxml>.</p>
      <p>When <sourcexml>row/entry[text()="Date of assent"</sourcexml> maps to 
        <targetxml>primlawhist:histitem/primlawhist:histitemdiv[@divtype="heading"][@status="assent"]/textitem</targetxml>
      </p>
      <p>When an entry follows <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI7"]</sourcexml> map to 
        <targetxml>primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]/textitem</targetxml>,
        optional date content should appear as <targetxml>textitem/date</targetxml>, with added 
        <targetxml>date/@normdate</targetxml> in the format "YYYY-MM-DD".</p>
    </section>

    <example>
      <title>Example 1: Source Primlaw History - Assent</title>
      <codeblock>
&lt;cttr:content&gt;
    ...
    &lt;cttr:annotations&gt;
        &lt;heading&gt;
            &lt;title&gt;Assent&lt;/title&gt;
            &lt;note id="HI4"&gt;
                &lt;p&gt;
                    &lt;text&gt;This Act history only includes events from 1996. Details of events affecting the Act before 1996 may be found in the
                        Notes at the end of the Act. &lt;/text&gt;
                &lt;/p&gt;
            &lt;/note&gt;
        &lt;/heading&gt;
        &lt;cttr:annotsummary&gt;
            &lt;table&gt;
                &lt;tgroup cols="2"&gt;
                    &lt;tbody&gt;
                        &lt;row&gt;
                            &lt;entry id="HI5"&gt; Created by &lt;/entry&gt;
                            &lt;entry id="HI6"&gt;
                                &lt;lnlink service="DOC-ID" status="valid"&gt;
    
                                    &lt;marker&gt;(CTH) EVIDENCE BILL 1993&lt;/marker&gt;
                                    &lt;api-params&gt;
                                        &lt;param name="dpsi" value="009K" /&gt;
                                        &lt;param name="remotekey1" value="DOC-ID" /&gt;
                                        &lt;param name="remotekey2" value="CTH_BIL_1994-2" /&gt;
                                    &lt;/api-params&gt;
                                &lt;/lnlink&gt;
                                &lt;p-limited&gt;see &lt;lnlink service="DOC-ID" status="valid"&gt;
                                        &lt;marker&gt;Bill information&lt;/marker&gt;
                                        &lt;api-params&gt;
                                            &lt;param name="dpsi" value="009K" /&gt;
                                            &lt;param name="remotekey1" value="DOC-ID" /&gt;
                                            &lt;param name="remotekey2" value="CTH_BIL_2008-93" /&gt;
                                        &lt;/api-params&gt;
                                    &lt;/lnlink&gt; for Bill, EM &amp;amp; 2nd Reading Speech &lt;/p-limited&gt;
                            &lt;/entry&gt;
                        &lt;/row&gt; 
                        &lt;row&gt;
                            &lt;entry&gt;Date of assent &lt;/entry&gt;
                            &lt;entry id="HI7"&gt;23/2/1995&lt;/entry&gt;
                        &lt;/row&gt;       
    				&lt;/tbody&gt;
    			&lt;/tgroup&gt;
    		&lt;/table&gt;
    	&lt;/cttr:annotsummary&gt;
    	...
</codeblock>
      <title>Example 1: Target Primlaw History - Assent</title>
      <codeblock>
&lt;cttr:history&gt;
	&lt;primlawhist:primlawhist&gt;
		&lt;ref:anchor id="ref-history"/&gt;
		&lt;heading&gt;
			&lt;title&gt;History&lt;/title&gt;
		&lt;/heading&gt;
		...
		&lt;primlawhist:histgrp grptype="assent" xml:id="assent-HI4"&gt;
			&lt;ref:anchor id="ref-assent"/&gt;
			&lt;heading&gt;
				&lt;title&gt;Assent&lt;/title&gt;
			&lt;/heading&gt;
			&lt;primlawhist:histitem&gt;
				&lt;textitem&gt;This Act history only includes events from 1996. Details of events
                            affecting the Act before 1996 may be found in the Notes at the end of
                            the Act.&lt;/textitem&gt;
			&lt;/primlawhist:histitem&gt;
			&lt;primlawhist:histitem&gt;
				&lt;primlawhist:histitemdiv divtype="heading" status="assent"&gt;
					&lt;textitem&gt;Created by&lt;/textitem&gt;
				&lt;/primlawhist:histitemdiv&gt;
				&lt;primlawhist:histitemdiv divtype="text"&gt;
					&lt;textitem&gt;
						&lt;ref:lnlink service="DOCUMENT" xml:id="HI6"&gt;
							&lt;ref:marker&gt;(CTH) EVIDENCE BILL 1993&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="009K-CTH_BIL_1994-2"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt;
					&lt;/textitem&gt;
					&lt;textitem&gt;see &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker&gt;Bill information&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="009K-CTH_BIL_2008-93"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; for Bill, EM &amp;amp; 2nd Reading Speech &lt;/textitem&gt;
				&lt;/primlawhist:histitemdiv&gt;
			&lt;/primlawhist:histitem&gt;
			&lt;primlawhist:histitem&gt;
				&lt;primlawhist:histitemdiv divtype="heading" status="assent"&gt;
					&lt;textitem&gt;Date of assent&lt;/textitem&gt;
				&lt;/primlawhist:histitemdiv&gt;
				&lt;primlawhist:histitemdiv divtype="text"&gt;
					&lt;textitem&gt;
						&lt;date normdate="1995-02-23"&gt;23/2/1995&lt;/date&gt;
					&lt;/textitem&gt;
				&lt;/primlawhist:histitemdiv&gt;
			&lt;/primlawhist:histitem&gt;
		&lt;/primlawhist:histgrp&gt;
		...
	&lt;/primlawhist:primlawhist&gt;
&lt;/cttr:history&gt;
</codeblock>
    </example>

    <section>
      <title>
        Changes:
      </title>
      <p>2016-03-22: <ph id="change_20160322a_snb">Changed mapping such that this section applies 
        when <sourcexml>cttr:annotations/heading/title/text()</sourcexml> = "Assent". Previously 
        the entry condition for this section required <sourcexml>cttr:annotations/heading/note[id="HI4"]</sourcexml>, 
        but at least some LBU source documents do not contain this <sourcexml>note[id="HI4"]</sourcexml> 
        for this assent content.</ph>
      </p>
      <p>2016-01-13: <ph id="change_20160113a_snb">Changed mapping to create 
        <targetxml>primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]</targetxml> 
        within the already existing <targetxml>cttr:history/primlawhist:primlawhist</targetxml> 
        element instead of creating a new <targetxml>primlawhist:primlawhist</targetxml> element. 
        Moved the target of <sourcexml>cttr:annotations/heading/title</sourcexml> to be inside 
        <targetxml>primlawhist:histgrp</targetxml> instead of inside the 
        <targetxml>primlawhist:primlawhist</targetxml> parent. Added creation of 
        <targetxml>ref:anchor[@id="ref-assent"]</targetxml>. Updated target markup example 
        accordingly.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211c_snb">Changed 
        <sourcexml>cttr:annotations/heading/title/note/[id="HI4"]</sourcexml>. to be 
        <sourcexml>cttr:annotations/heading/note[id="HI4"]</sourcexml>. Added clarification that 
        target was a new <targetxml>primlawhist:primlawhist</targetxml> element within the existing 
        <targetxml>cttr:history</targetxml>. Added mapping of 
        <sourcexml>cttr:annotations/heading/title</sourcexml>. Changed mapping of 
        <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI6"]</sourcexml> to 
        instead be <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI6"]/lnlink</sourcexml> 
        to adjust for changes the LBU has stated will be coming in source data. Changed Date of assent date
        content target from <targetxml>textitem/date@normdate="YYYY-MM-DD"</targetxml> to 
        explicitly describe target mapping. Modified target markup example to include 
        <targetxml>@normdate</targetxml>.</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_History_assent.dita  -->
	<xsl:message>Leg_Citator_AUNZ_History_assent.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:doc-id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<primlawhist:histgrp>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histgrp>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note[id=&#34;HI4&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<primlawhist:histgrp>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histgrp>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title[text()=&#34;Assent&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<primlawhist:histgrp>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histgrp>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

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

	<xsl:template match="heading/note/[@id=&#34;HI4&#34;]/p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/textitem   -->
		<primlawhist:histitem>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table/tgroup/tbody/row/entry[@id=&#34;HI5&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv[@divtype="heading"][@status="assent"]/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table/tgroup/tbody/row/entry[@id=&#34;HI6&#34;]/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]/textitem/ref:lnlink   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<ref:lnlink>
						<xsl:apply-templates select="@* | node()"/>
					</ref:lnlink>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table/tgroup/tbody/row/entry[@id=&#34;HI6&#34;]/p-limited"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="row/entry[text()=&#34;Date of assent&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv[@divtype="heading"][@status="assent"]/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table/tgroup/tbody/row/entry[@id=&#34;HI7&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv[@divtype="text"]/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title/text()"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="note[id=&#34;HI4&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title/note/[id=&#34;HI4&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table/tgroup/tbody/row/entry[@id=&#34;HI6&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  textitem/date@normdate="YYYY-MM-DD"   -->
		<textitem>
			<date>
				<xsl:apply-templates select="@* | node()"/>
			</date>
		</textitem>

	</xsl:template>

</xsl:stylesheet>