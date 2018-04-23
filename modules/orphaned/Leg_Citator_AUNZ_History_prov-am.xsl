<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_History_prov-am">
  <title>cttr:annotations[@annotgrp="prov-am"] <lnpid>id-AU20-22286</lnpid></title>
  
  <body>
    <section>
      <p>
        <sourcexml>cttr:annotations[@annotgrp="prov-am"]</sourcexml> maps to 
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@xml:id="prov-am"][@grptype="provision-amendments"]</targetxml>.</p>
      <p>Create <targetxml>ref:anchor[@id="ref-provision-amendments"]</targetxml> within 
        <targetxml>primlawhist:histgrp</targetxml>.</p>
      <p>
        <sourcexml>cttr:annotations/heading/title</sourcexml> maps to 
        <targetxml>primlawhist:histgrp/heading/title</targetxml> using standard mapping.</p>
      <p>Each <sourcexml>cttr:annot</sourcexml> becomes a separate <targetxml>primlawhist:histitem</targetxml> child 
        of the new <targetxml>primlawhist:histgrp[@grptype="provision-amendments"]</targetxml>. Perform the 
        following mappings for each <sourcexml>cttr:annot</sourcexml>:
        <ul>
          <li><sourcexml>cttr:annot/heading/title</sourcexml> becomes 
          	<targetxml>primlawhist:histitemdiv[@divtype="heading"]/textitem</targetxml>. If a sibling 
          	<sourcexml>note/p/text</sourcexml> exists within the same <sourcexml>cttr:annot/heading</sourcexml>, 
          	and the <sourcexml>note/p/text</sourcexml> or its descendants contain non-white-space text, 
          	add a space after the text in the created 
          	<targetxml>primlawhist:histitemdiv[@divtype="heading"]/textitem</targetxml>.</li>
          <li>If <sourcexml>cttr:annot/heading/subtitle</sourcexml> exists, its content is appended to the 
            end of text inside the 
            <targetxml>primlawhist:histitemdiv[@divtype="heading"]/textitem</targetxml> 
            that was created from <sourcexml>cttr:annot/heading/title</sourcexml>, adding a space first. Note that 
          	if <sourcexml>cttr:annot/heading/subtitle</sourcexml> exists but <sourcexml>cttr:annot/heading/title</sourcexml> 
          	does not exist or contained no non-whitespace text, the subtitle content should still be mapped to the 
          	<targetxml>primlawhist:histitemdiv[@divtype="heading"]/textitem</targetxml>, but without the added preceding space.
          </li>
          <li>If <sourcexml>cttr:annot/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/subtitle</sourcexml> 
            contains the text "commence" (case insensitive), in any part of the contained text, then create attribute 
            <targetxml>primlawhist:histitemdiv/@status="commencement"</targetxml>.</li>
          <li>If <sourcexml>cttr:annot/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/subtitle</sourcexml> 
          	contains the text "amend" (case insensitive), in any part of the contained text, then create attribute 
            <targetxml>primlawhist:histitemdiv/@status="amending"</targetxml>.</li>
          <li>Each <sourcexml>note/p</sourcexml> child element of <sourcexml>cttr:annot/heading</sourcexml> becomes 
          	<targetxml>primlawhist:histitemdiv</targetxml>, with <targetxml>primlawhist:histitemdiv/@divtype</targetxml> 
          	added as follows:
          	<ul>
          		<li>For the first <sourcexml>p</sourcexml> child of <sourcexml>note</sourcexml>: 
          			if <sourcexml>note</sourcexml> 
          			was the first <sourcexml>note</sourcexml> child of <sourcexml>cttr:annot/heading</sourcexml>, 
          			and either <sourcexml>cttr:annot/heading/title</sourcexml> or 
          			<sourcexml>cttr:annot/heading/subtitle</sourcexml> exists (as a preceding sibling of <sourcexml>note</sourcexml>), 
          			then <targetxml>primlawhist:histitemdiv/@divtype="text"</targetxml>. Otherwise 
          			<targetxml>primlawhist:histitemdiv/@divtype="additionalinfo"</targetxml>. </li>
          		<li>For all following <sourcexml>p</sourcexml> children of <sourcexml>note</sourcexml> after the first 
          			<sourcexml>p</sourcexml>, <targetxml>primlawhist:histitemdiv/@divtype="text"</targetxml>.</li>
          		<li>In terms of  XPATH, the previous 2 mapping instructions are: 
          			<sourcexml>cttr:annot/heading[title or subtitle]/note[1]/p[1]</sourcexml> maps to <targetxml>primlawhist:histitemdiv[@divtype="text"]</targetxml>,
          			<sourcexml>cttr:annot/heading[not(title or subtitle)]/note[1]/p[1]</sourcexml> maps to <targetxml>primlawhist:histitemdiv[@divtype="additionalinfo"]</targetxml>, 
          			<sourcexml>cttr:annot/heading/note[position() gt 1]/p[1]</sourcexml> maps to <targetxml>primlawhist:histitemdiv[@divtype="additionalinfo"]</targetxml>, 
          			<sourcexml>cttr:annot/heading/note/p[position() gt 1]</sourcexml> maps to <targetxml>primlawhist:histitemdiv[@divtype="text"]</targetxml>,          			
          		</li> 
          	</ul>
          </li>  	
          <li>Each <sourcexml>text</sourcexml> child of <sourcexml>p</sourcexml> becomes a separate 
          		<targetxml>textitem</targetxml> child of <targetxml>primlawhist:histitemdiv</targetxml>, 
          		using standard mapping rules.</li>
          <li>Any <sourcexml>lnlink</sourcexml> element maps to <targetxml>ref:lnlink</targetxml> in the 
            corresponding target element using standard mapping rules.</li>
        </ul>
      </p>
    </section>

    <example>
      <title>Example 1: Source cttr:annotations[@annotgrp="prov-am"]</title>
      <codeblock>
&lt;cttr:annotations annotgroup="prov-am"&gt;
	&lt;!-- HP2 Provision Label --&gt;
	&lt;heading&gt;
		&lt;title&gt;s 59&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:annot id="commencement"&gt;
		&lt;heading&gt;
			&lt;title id="HP3"&gt;Commenced 18 April 1995&lt;/title&gt;
			&lt;note id="HP5"&gt;
				&lt;p&gt;
					&lt;text&gt;— &lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;View Whole Instrument History&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="0QQI"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="LCIT-CTH_ACT_1995-2-HISTORY"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
			&lt;/note&gt;
		&lt;/heading&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
	&lt;!-- HP4 Provision Amendments --&gt;
	&lt;cttr:annot&gt;
		&lt;heading&gt;
			&lt;title&gt;s 59&lt;/title&gt;
			&lt;subtitle&gt;Amended&lt;/subtitle&gt;
			&lt;note&gt;
				&lt;p&gt;
					&lt;text&gt;by &lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_LEG_INFO"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt; Commenced: 1/1/2009 · see &lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;Schedule 1 &amp;amp; 2&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_SCH1PT1"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
			&lt;/note&gt;
			&lt;note&gt;
				&lt;p&gt;
					&lt;text&gt;Note: heading was 'Exceptions to the hearsay rule dependent on
									competency'&lt;/text&gt;
				&lt;/p&gt;
			&lt;/note&gt;
		&lt;/heading&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot&gt;
		&lt;heading&gt;
			&lt;title&gt;(1)&lt;/title&gt;
			&lt;subtitle&gt;Amended&lt;/subtitle&gt;
			&lt;note&gt;
				&lt;p&gt;
					&lt;text&gt;by &lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_LEG_INFO"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt; Commenced: 1/1/2009 · see &lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;Schedule 1 &amp;amp; 2&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_SCH1PT1"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
			&lt;/note&gt;
		&lt;/heading&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;        
    </codeblock>
      <title>Example 1: Target primlawhist:primlawhist/primlawhist:histgrp</title>
      <codeblock>   
&lt;cttr:history&gt;
	&lt;primlawhist:primlawhist&gt;
		&lt;ref:anchor id="ref-history"/&gt;
		&lt;heading&gt;
			&lt;title&gt;History&lt;/title&gt;
		&lt;/heading&gt;
		...
        &lt;primlawhist:histgrp xml:id="prov-am" grptype="provision-amendments"&gt;
            &lt;ref:anchor id="ref-provision-amendments"/&gt;
            &lt;heading&gt;
            	&lt;title&gt;s 59&lt;/title&gt;
            &lt;/heading&gt;
            &lt;primlawhist:histitem&gt;
            	&lt;primlawhist:histitemdiv divtype="heading" status="commencement"&gt;
            		&lt;textitem&gt;Commenced 18 April 1995&lt;/textitem&gt;
            	&lt;/primlawhist:histitemdiv&gt;
            	&lt;primlawhist:histitemdiv divtype="text"&gt;
            		&lt;textitem&gt;— &lt;ref:lnlink service="DOCUMENT"&gt;
            				&lt;ref:marker role="content"&gt;View Whole Instrument History&lt;/ref:marker&gt;
            				&lt;ref:locator&gt;
            					&lt;ref:locator-key&gt;
            						&lt;ref:key-name name="DOC-ID"/&gt;
            						&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1995-2-HISTORY"/&gt;
            					&lt;/ref:locator-key&gt;
            				&lt;/ref:locator&gt;
            			&lt;/ref:lnlink&gt;
            		&lt;/textitem&gt;
            	&lt;/primlawhist:histitemdiv&gt;
            &lt;/primlawhist:histitem&gt;
            &lt;primlawhist:histitem&gt;
            	&lt;primlawhist:histitemdiv divtype="heading" status="amending"&gt;
            		&lt;textitem&gt;s 59 (Amended)&lt;/textitem&gt;
            	&lt;/primlawhist:histitemdiv&gt;
            	&lt;primlawhist:histitemdiv divtype="text"&gt;
            		&lt;textitem&gt;by&lt;ref:lnlink service="DOCUMENT"&gt;
            				&lt;ref:marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
            				&lt;ref:locator&gt;
            					&lt;ref:locator-key&gt;
            						&lt;ref:key-name name="DOC-ID"/&gt;
            						&lt;ref:key-value value="005X-CTH_ACT_2008-135_LEG_INFO"/&gt;
            					&lt;/ref:locator-key&gt;
            				&lt;/ref:locator&gt;
            			&lt;/ref:lnlink&gt; Commenced: 1/1/2009 · see &lt;ref:lnlink service="DOCUMENT"&gt;
            				&lt;ref:marker role="content"&gt;Schedule 1 &amp;amp; 2&lt;/ref:marker&gt;
            				&lt;ref:locator&gt;
            					&lt;ref:locator-key&gt;
            						&lt;ref:key-name name="DOC-ID"/&gt;
            						&lt;ref:key-value value="005X-CTH_ACT_2008-135_SCH1PT1"/&gt;
            					&lt;/ref:locator-key&gt;
            				&lt;/ref:locator&gt;
            			&lt;/ref:lnlink&gt;
            		&lt;/textitem&gt;
            	&lt;/primlawhist:histitemdiv&gt;
            	&lt;primlawhist:histitemdiv divtype="additionalinfo"&gt;
            		&lt;textitem&gt;Note: heading was 'Exceptions to the hearsay rule dependent on
                                            competency'&lt;/textitem&gt;
            	&lt;/primlawhist:histitemdiv&gt;
            &lt;/primlawhist:histitem&gt;
            &lt;primlawhist:histitem&gt;
            	&lt;primlawhist:histitemdiv divtype="heading" status="amending"&gt;
            		&lt;textitem&gt;(1) (Amended)&lt;/textitem&gt;
            	&lt;/primlawhist:histitemdiv&gt;
            	&lt;primlawhist:histitemdiv divtype="text"&gt;
            		&lt;textitem&gt;by&lt;ref:lnlink service="DOCUMENT"&gt;
            				&lt;ref:marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
            				&lt;ref:locator&gt;
            					&lt;ref:locator-key&gt;
            						&lt;ref:key-name name="DOC-ID"/&gt;
            						&lt;ref:key-value value="005X-CTH_ACT_2008-135_LEG_INFO"/&gt;
            					&lt;/ref:locator-key&gt;
            				&lt;/ref:locator&gt;
            			&lt;/ref:lnlink&gt; Commenced: 1/1/2009 · see &lt;ref:lnlink service="DOCUMENT"&gt;
            				&lt;ref:marker role="content"&gt;Schedule 1 &amp;amp; 2&lt;/ref:marker&gt;
            				&lt;ref:locator&gt;
            					&lt;ref:locator-key&gt;
            						&lt;ref:key-name name="DOC-ID"/&gt;
            						&lt;ref:key-value value="005X-CTH_ACT_2008-135_SCH1PT1"/&gt;
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
    	<p>2016-06-07: <ph id="change_20160607_snb">Significant restructuring of conversion mappings for changes 
    		to support new lines and groupings information through use of new 
    		<targetxml>primlawhist:histitemdiv/@divtype="additionalinfo"</targetxml>. 
    		Modified markup example to show the new mapping (only difference is the 
    		<targetxml>primlawhist:histitemdiv/@divtype="additionalinfo"</targetxml> inside the 2nd 
    		<targetxml>primlawhist:histitem</targetxml>).</ph></p>
    	<p>2016-05-25: <ph id="change_20160525a_snb">Clarified test for the text "commence" and "amend" in  
    		<sourcexml>cttr:annot/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/subtitle</sourcexml> 
    		to make it clear that the text can be any part of the source text. Added a space at the end of 
    		the text in the created <targetxml>primlawhist:histitemdiv[@divtype="heading"]/textitem</targetxml> when 
    		the source <sourcexml>cttr:annot/heading/title</sourcexml> is followed by a sibling 
    		<sourcexml>note/p/text</sourcexml>.</ph>
    	</p>
      <p>2016-01-13: <ph id="change_20160113d_snb">Added creation of 
        <targetxml>ref:anchor[@id="ref-provision-amendments"]</targetxml>. Changed determination of 
        <targetxml>primlawhist:histitemdiv/@status</targetxml> to be dependent upon the text inside 
        <sourcexml>cttr:annot/heading/title</sourcexml> and <sourcexml>cttr:annot/heading/subtitle</sourcexml>. 
        Updated target markup example accordingly.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211f_snb">Added <targetxml>@grptype="provision-amendments"</targetxml> 
        to <targetxml>primlawhist:primlawhist/primlawhist:histgrp</targetxml>. Added 
        mapping for <sourcexml>cttr:annotations/heading/title</sourcexml>. Added instructions for mapping 
        the content of <sourcexml>cttr:annotations[@annotgrp="prov-am"]</sourcexml>. Replaced 
        example markup.</ph>
      </p>
    </section>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_History_prov-am.dita  -->
	<xsl:message>Leg_Citator_AUNZ_History_prov-am.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations[@annotgrp=&#34;prov-am&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[@xml:id="prov-am"][@grptype="provision-amendments"]   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp/heading/title   -->
		<primlawhist:histgrp>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem   -->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annot/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="heading"]/textitem   -->
		<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="note/p/text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="heading"]/textitem   -->
		<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="cttr:annot/heading"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="heading"]/textitem   -->
		<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="cttr:annot/heading/subtitle"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="heading"]/textitem   -->
		<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="note/p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv   -->
		<primlawhist:histitemdiv>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv/@divtype="text"   -->
		<primlawhist:histitemdiv>
			<xsl:attribute name="divtype">
				<xsl:text>text</xsl:text>
			</xsl:attribute>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="note"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv/@divtype="text"   -->
		<primlawhist:histitemdiv>
			<xsl:attribute name="divtype">
				<xsl:text>text</xsl:text>
			</xsl:attribute>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="cttr:annot/heading[title or subtitle]/note[1]/p[1]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="text"]   -->
		<primlawhist:histitemdiv>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="cttr:annot/heading[not(title or subtitle)]/note[1]/p[1]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="additionalinfo"]   -->
		<primlawhist:histitemdiv>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="cttr:annot/heading/note[position() gt 1]/p[1]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="additionalinfo"]   -->
		<primlawhist:histitemdiv>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="cttr:annot/heading/note/p[position() gt 1]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="text"]   -->
		<primlawhist:histitemdiv>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  textitem   -->
		<textitem>
			<xsl:apply-templates select="@* | node()"/>
		</textitem>

	</xsl:template>

	<xsl:template match="lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:lnlink   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

</xsl:stylesheet>