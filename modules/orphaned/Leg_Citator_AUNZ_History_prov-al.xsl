<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_History_prov-al">
  <title>cttr:annotations[@annotgrp="prov-al"] <lnpid>id-AU20-22285</lnpid></title>
  
  <body>
    <section>
      <p>
        <sourcexml>cttr:annotations[@annotgrp="prov-al"]</sourcexml> maps to 
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@xml:id="prov-al"][@grptype="amending-legislation"]&gt;</targetxml>.</p>
      <p>Create <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml> within 
        <targetxml>primlawhist:histgrp</targetxml>.</p>
      <p>
        <sourcexml>cttr:annotations/heading/title</sourcexml> maps to 
        <targetxml>primlawhist:histgrp/heading/title</targetxml> using standard mapping.</p>
      
      
      
      <p>Create <targetxml>primlawhist:histitem</targetxml> inside 
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp</targetxml>.</p>
      
      
      <p>Each <sourcexml>note</sourcexml> element inside <targetxml>primlawhist:histgrp/heading</targetxml> 
        becomes a separate <targetxml>primlawhist:histitem</targetxml> inside 
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp</targetxml>, and it content is 
        mapped as follows:
        <ul>
          <li><sourcexml>note/lnlink</sourcexml> maps to 
            <targetxml>primlawhist:histitemdiv[@divtype="act"][@status="amending]/textitem/ref:lnlink</targetxml>.</li>
          <li>Each <sourcexml>p</sourcexml> 
            element child of <sourcexml>note</sourcexml> becomes a separate <targetxml>primlawhist:histitemdiv</targetxml> 
            within the same <targetxml>primlawhist:histitem</targetxml> element and is populated as follows:
              <ul>
                <li>If <sourcexml>p/@class="act"</sourcexml>, add 
                  <targetxml>primlawhist:histitemdiv/@divtype="act"</targetxml> and  
                  <targetxml>primlawhist:histitemdiv/@status="amending"</targetxml></li>
                <li>Otherwise, add 
                  <targetxml>primlawhist:histitemdiv/@divtype="additionalinfo"</targetxml>
                </li>
                <li>Each <sourcexml>text</sourcexml> child maps to a separate 
                  <targetxml>textitem</targetxml> element inside the same <targetxml>primlawhist:histitemdiv</targetxml>, 
                  using standard mapping rules. Exception: if <sourcexml>note/p/text</sourcexml> immediately follows 
                  a preceding <sourcexml>note/lnlink</sourcexml> map its content to the content of the 
                  existing previous <targetxml>textitem[ref:lnlink]</targetxml> that was created, adding it 
                  after the <targetxml>ref:lnlink</targetxml> element.</li>
              </ul>
          </li>
          
        </ul>
      </p>
    </section>

    <example>
      <title>Example 1: Source cttr:annotations[@annotgrp="prov-al"] containing <sourcexml>note/lnlink</sourcexml></title>
      <codeblock>
&lt;cttr:annotations annotgroup="prov-al"&gt;
	&lt;heading&gt;
		&lt;title&gt;Amending Legislation&lt;/title&gt;
		&lt;!-- HP1 List of Amending Acts --&gt;
		&lt;note&gt;
			&lt;lnlink service="DOC-ID" status="valid"&gt;
				&lt;marker&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
				&lt;api-params&gt;
					&lt;param name="dpsi" value="005X"/&gt;
					&lt;param name="remotekey1" value="DOC-ID"/&gt;
					&lt;param name="remotekey2" value="CTH_ACT_2008-135_LEG_INFO"/&gt;
				&lt;/api-params&gt;
			&lt;/lnlink&gt;
			&lt;p&gt;
				&lt;text&gt;see &lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker&gt;Bill information&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="dpsi" value="009K"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_BIL_2008-93"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt; for EM &amp;amp; 2nd Reading Speech &lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
    </codeblock>
      <title>Example 1: Target primlawhist:primlawhist/primlawhist:histgrp from <sourcexml>note/lnlink</sourcexml></title>
      <codeblock>   
&lt;primlawhist:primlawhist&gt;
	&lt;ref:anchor id="ref-history"/&gt;
	&lt;heading&gt;
		&lt;title&gt;History&lt;/title&gt;
	&lt;/heading&gt;
    &lt;primlawhist:histgrp xml:id="prov-al" grptype="amending-legislation"&gt;
    	&lt;ref:anchor id="ref-amendinglegislation"/&gt;
    	&lt;heading&gt;
    		&lt;title&gt;Amending Legislation&lt;/title&gt;
    	&lt;/heading&gt;
    	&lt;primlawhist:histitem&gt;
    		&lt;primlawhist:histitemdiv divtype="act" status="amending"&gt;
    			&lt;textitem&gt;
    				&lt;ref:lnlink service="DOCUMENT"&gt;
    					&lt;ref:marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
    					&lt;ref:locator&gt;
    						&lt;ref:locator-key&gt;
    							&lt;ref:key-name name="DOC-ID"/&gt;
    							&lt;ref:key-value value="005X-CTH_ACT_2008-135_LEG_INFO"/&gt;
    						&lt;/ref:locator-key&gt;
    					&lt;/ref:locator&gt;
    				&lt;/ref:lnlink&gt; see &lt;ref:lnlink service="DOCUMENT"&gt;
    					&lt;ref:marker role="content"&gt;Bill information&lt;/ref:marker&gt;
    					&lt;ref:locator&gt;
    						&lt;ref:locator-key&gt;
    							&lt;ref:key-name name="DOC-ID"/&gt;
    							&lt;ref:key-value value="009K-CTH_BIL_2008-93"/&gt;
    						&lt;/ref:locator-key&gt;
    					&lt;/ref:locator&gt;
    				&lt;/ref:lnlink&gt; for EM &amp;amp; 2nd Reading Speech &lt;/textitem&gt;
    		&lt;/primlawhist:histitemdiv&gt;
    	&lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
    ...
&lt;/primlawhist:primlawhist&gt;
      </codeblock>
    </example>

    <example>
      <title>Example 2: Source cttr:annotations[@annotgrp="prov-al"] containing <sourcexml>note/p/text</sourcexml></title>
      <codeblock>
&lt;cttr:annotations annotgroup="prov-al"&gt;
	&lt;heading&gt;
		&lt;title&gt;Amending Legislation&lt;/title&gt;
		&lt;!--HP1 List of Amending Acts--&gt;
		&lt;note&gt;
			&lt;p class="act"&gt;
				&lt;text&gt;
					&lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker role="content"&gt;(CTH) LAW AND JUSTICE LEGISLATION AMENDMENT ACT 1999&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="dpsi" value="005X"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_1999-125_LEG_INFO"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt;
					&lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker role="content"&gt;(CTH) &lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="dpsi" value="005X"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_1999-125_SCH6"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt;
				&lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
		&lt;note&gt;
			&lt;p class="act"&gt;
				&lt;text&gt;
					&lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="dpsi" value="005X"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_2008-135_LEG_INFO"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt;
					&lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker role="content"&gt;(CTH) &lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="dpsi" value="005X"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_2008-135_SCH1PT1"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;see &lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker role="content"&gt;Bill information&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="dpsi" value="009K"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_BIL_1994-2"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt; for Bill, EM &amp;amp; 2nd Reading Speech&lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
    </codeblock>
      <title>Example 2: Target primlawhist:primlawhist/primlawhist:histgrp from <sourcexml>note/p/text</sourcexml></title>
      <codeblock>   
&lt;primlawhist:histgrp grptype="amending-legislation" xml:id="prov-al"&gt;
	&lt;ref:anchor id="ref-amendinglegislation"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Amending Legislation&lt;/title&gt;
	&lt;/heading&gt;
	&lt;primlawhist:histitem&gt;
		&lt;primlawhist:histitemdiv divtype="act" status="amending"&gt;
			&lt;textitem&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;(CTH) LAW AND JUSTICE LEGISLATION AMENDMENT ACT 1999&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="005X-CTH_ACT_1999-125_LEG_INFO"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt; &lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;(CTH) &lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="005X-CTH_ACT_1999-125_SCH6"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/textitem&gt;
		&lt;/primlawhist:histitemdiv&gt;
	&lt;/primlawhist:histitem&gt;
	&lt;primlawhist:histitem&gt;
		&lt;primlawhist:histitemdiv divtype="act" status="amending"&gt;
			&lt;textitem&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="005X-CTH_ACT_2008-135_LEG_INFO"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt; &lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;(CTH) &lt;/ref:marker&gt;
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
			&lt;textitem&gt;see &lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;Bill information&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="009K-CTH_BIL_1994-2"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt; for Bill, EM &amp;amp; 2nd Reading Speech&lt;/textitem&gt;
		&lt;/primlawhist:histitemdiv&gt;
	&lt;/primlawhist:histitem&gt;
&lt;/primlawhist:histgrp&gt;
</codeblock>
    </example>

    <section>
      <title>
        Changes:
      </title>
      <p>2016-06-07: <ph id="change_20160607_snb">Significant restructuring of conversion mappings to support new LBU 
        source Rosetta XML markup structure. Changes to support new lines and groupings of act information with new 
        structures. Added a new markup example to show the mappings, and made minor change to the existing example and 
        renamed it.</ph></p>
      <p>2016-01-13: <ph id="change_20160113e_snb">Added creation of 
        <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml>. Updated target markup example 
        accordingly. Corrected type in target markup example: changed <targetxml>@status="commencement"</targetxml> 
        to <targetxml>@status="amending"</targetxml>.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211g_snb">Added <targetxml>@grptype="amending-legislation"</targetxml> 
        to <targetxml>primlawhist:primlawhist/primlawhist:histgrp</targetxml>. Added 
        mapping for <sourcexml>cttr:annotations/heading/title</sourcexml>. Added instructions for mapping 
        the content of <sourcexml>cttr:annotations[@annotgrp="prov-al"]</sourcexml>. Replaced 
        example markup.</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_History_prov-al.dita  -->
	<xsl:message>Leg_Citator_AUNZ_History_prov-al.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations[@annotgrp=&#34;prov-al&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[@xml:id="prov-al"][@grptype="amending-legislation"]   -->
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

	<xsl:template match="note"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp/heading   -->
		<primlawhist:histgrp>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="note/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv[@divtype="act"][@status="amending]/textitem/ref:lnlink   -->
		<primlawhist:histitemdiv>
			<textitem>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv   -->
		<primlawhist:histitemdiv>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="p/@class=&#34;act&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv/@divtype="act"   -->
		<primlawhist:histitemdiv>
			<xsl:attribute name="divtype">
				<xsl:text>act</xsl:text>
			</xsl:attribute>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  textitem   -->
		<textitem>
			<xsl:apply-templates select="@* | node()"/>
		</textitem>

	</xsl:template>

	<xsl:template match="note/p/text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  textitem[ref:lnlink]   -->
		<textitem>
			<xsl:apply-templates select="@* | node()"/>
		</textitem>

	</xsl:template>

</xsl:stylesheet>