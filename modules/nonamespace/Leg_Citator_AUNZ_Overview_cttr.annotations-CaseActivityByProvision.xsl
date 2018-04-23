<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByProvision">
  <title>cttr:body/cttr:content/cttr:annotations - Case Activity By Provision <lnpid>id-AU20-22239</lnpid></title>
  
  <body>
    
    <section>
      <p>If <sourcexml>cttr:annotations/cttr:annotsummary/[@id="OI21"]</sourcexml> create 
        <targetxml>ref:relatedcontent[@xml:id="refsection-OI21"][@contenttype="case-activity-by-provision"]</targetxml>.</p>
      <p>NOTE EXCEPTION: if <sourcexml>cttr:annotations/cttr:annotsummary</sourcexml> contains no other 
        child elements except for <sourcexml>table</sourcexml>, and the <sourcexml>table</sourcexml> 
        has no <sourcexml>entry</sourcexml> descendant elements containing either text content or 
        <sourcexml>lnlink</sourcexml> children, then suppress all content of this 
        <sourcexml>cttr:annotations/cttr:annotsummary</sourcexml> element (i.e. no target markup is created at 
        all).</p>
      <p>Create <targetxml>ref:anchor[@id="ref-case-activity-by-provision"]</targetxml> within 
        <targetxml>ref:relatedcontent</targetxml>.</p>
      <p>
        <sourcexml>cttr:annotations/heading</sourcexml> is suppressed.</p>
      <p>If <sourcexml>cttr:annotations/cttr:annotsummary/table/title</sourcexml> contains non-whitespace 
        text, use standard mapping to <targetxml>ref:relatedcontent/heading/title</targetxml>. Otherwise map 
        <sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> to 
        <targetxml>ref:relatedcontent/heading/title</targetxml>.</p>
      <p>For the content of <sourcexml>cttr:annotsummary/table</sourcexml>:
        <ul>
          <li>
            <sourcexml>tgroup/colspec</sourcexml> is suppressed.</li>
          <li>For each <sourcexml>tbody/row</sourcexml>:
            <ul>
              <li>Create <targetxml>ref:relatedcontentitem[@contenttype="case-activity-by-provision"]/ref:related-content-link</targetxml>.</li>
              <li>Map the content of <sourcexml>entry[@colname="prov"]</sourcexml> 
                to be the content of the target <targetxml>ref:related-content-link</targetxml> element.</li>
              <li>Map each <sourcexml>entry/lnlink</sourcexml> to <targetxml>ref:related-content-link/ref:lnlink</targetxml>.</li>
              <li>Create <targetxml>ref:relatedcontentdescription</targetxml> as a following sibling of the 
                <targetxml>ref:related-content-link</targetxml> element created by the previous bullets, and map 
                the content of <sourcexml>entry[@colname="prov-count"]</sourcexml> to be the content of 
                <targetxml>ref:relatedcontentdescription/p/text</targetxml>. If the text content of 
                <sourcexml>entry[@colname="prov-count"]</sourcexml> is a single numeric value, append " Cases" 
                to the target text. </li>
            </ul>
          </li>
        </ul>
      </p>
    </section>

    <example>
      <title>Example 1: Source Case Activity - By Provision</title>
      <codeblock>
&lt;cttr:annotations id="activity"&gt;
	&lt;heading&gt;
		&lt;title&gt;Case Activity&lt;/title&gt;
	&lt;/heading&gt;
	...
	&lt;cttr:annotsummary display-name="By Provision (Top 5)" id="OI21"&gt;
		&lt;!-- OI21 Cases Activity by Provision --&gt;
		&lt;table&gt;
			&lt;title&gt;By Provision (Top 5)&lt;/title&gt;
			&lt;tgroup cols="2"&gt;
				&lt;colspec colname="prov"/&gt;
				&lt;colspec colname="prov-count"/&gt;
				&lt;tbody&gt;
					&lt;row&gt;
						&lt;entry colname="prov"&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;s 135&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI "/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1995-2_SEC135-CASES"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
						&lt;entry colname="prov-count"&gt;157&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="prov"&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;s 79&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI "/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1995-2_SEC79-CASES"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
						&lt;entry colname="prov-count"&gt;95&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="prov"&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;s 140&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI "/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1995-2_SEC140-CASES"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
						&lt;entry colname="prov-count"&gt;95&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="prov"&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;s 136&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI "/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1995-2_SEC136-CASES"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
						&lt;entry colname="prov-count"&gt;75&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="prov"&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;s 138&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0QQI "/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="LCIT-CTH_ACT_1995-2_SEC138-CASES"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/entry&gt;
						&lt;entry colname="prov-count"&gt;69&lt;/entry&gt;
					&lt;/row&gt;
				&lt;/tbody&gt;
			&lt;/tgroup&gt;
		&lt;/table&gt;
	&lt;/cttr:annotsummary&gt;
&lt;/cttr:annotations&gt;
        </codeblock>

      <title>Example 1: Target Case Activity - By Provision</title>
      <codeblock>
&lt;ref:relatedcontent xml:id="refsection-OI21" contenttype="case-activity-by-provision"&gt;
	&lt;ref:anchor id="ref-case-activity-by-provision"/&gt;
	&lt;heading&gt;
		&lt;title&gt;By Provision (Top 5)&lt;/title&gt;
	&lt;/heading&gt;
	&lt;ref:relatedcontentitem contenttype="case-activity-by-provision"&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;s 135&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1995-2_SEC135-CASES"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;157 Cases&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem contenttype="case-activity-by-provision"&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;s 79&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1995-2_SEC79-CASES"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;95 Cases&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem contenttype="case-activity-by-provision"&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;s 140&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1995-2_SEC140-CASES"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;95 Cases&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem contenttype="case-activity-by-provision"&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;s 136&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1995-2_SEC136-CASES"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;75 Cases&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem contenttype="case-activity-by-provision"&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;s 138&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1995-2_SEC138-CASES"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;69 Cases&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
&lt;/ref:relatedcontent&gt;
</codeblock>
    </example>

    <section>
      <title>
        Changes:
      </title>
      <p>2016-02-20: <ph id="change_20160220a_snb">Changed target markup for source document 
        <sourcexml>entry[@colname="prov-count"]</sourcexml> to be <targetxml>ref:relatedcontentdescription/p/text</targetxml> 
        instead of being inserted into the <targetxml>ref:related-content-link</targetxml> element, and removed all 
        non-breaking spaces from the target markup. Updated target markup exampls accordingly. Note that in addition to 
        the change in target markup XPATH/structure, the target example 
        <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value/@value</targetxml> values were incorrect, 
        and are now corrected.</ph>
      </p>
      <p>2016-01-13: <ph id="change_20160113c_snb">Changed separating spaces between the provision label and 
        number of cases to be non-breaking space XML character entities so that they would be preserved by 
        stylesheets. Updated target example markup accordingly.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211m_snb">Created new section for Case Activity "By Provision" and moved 
        mapping instructions here from Case Activity By Court to here (with some modifications). Changed from a single space 
        between the first and second components of each <targetxml>ref:related-content-link</targetxml> element to instead 
        be 20-number of chars in the first component to result in output lining up in columns (assuming fixed width 
        font in output). This change was made to support a request from presentation team.</ph>
      </p>
    </section>
 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByProvision.dita  -->
	

	<xsl:template match="source_cttr:annotations/source_cttr:annotsummary[@id='OI21']">
		<ref:relatedcontent>
			<xsl:attribute name="xml:id">
				<xsl:text>refsection-OI21</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="contenttype">
				<xsl:text>case-activity-by-provision</xsl:text>
			</xsl:attribute>
			<ref:anchor>
				<xsl:attribute name="id">
					<xsl:text>ref-case-activity-by-provision</xsl:text>
				</xsl:attribute>
			</ref:anchor>
			<xsl:choose>
				<xsl:when test="table/title">
					<heading>						
						<xsl:apply-templates select="table/title"/>						
					</heading>
				</xsl:when>
				<xsl:when test="@display-name">
					<heading>
						<title>
							<xsl:apply-templates/>
						</title>
					</heading>
				</xsl:when>
				<xsl:otherwise>
					<heading>
						<title>
							<xsl:apply-templates/>
						</title>
					</heading>
				</xsl:otherwise>
			</xsl:choose>	
			<xsl:for-each select="table/tgroup/tbody/row">
				<ref:relatedcontentitem>
					<xsl:attribute name="contenttype">
						<xsl:text>case-activity-by-provision</xsl:text>
					</xsl:attribute>
					<xsl:if test="entry[@colname='prov']">
						<ref:related-content-link>							
							<xsl:apply-templates select="@* | node()"/>
						</ref:related-content-link>
					</xsl:if>	
					<ref:relatedcontentdescription>
						<p>
							<text>
								<xsl:value-of select="concat(entry[@colname='prov-count']/text(),'Cases')"/>
							</text>
						</p>
					</ref:relatedcontentdescription>
				</ref:relatedcontentitem>
			</xsl:for-each>
		</ref:relatedcontent>
	</xsl:template>
	
	

	<!--<xsl:template match="cttr:annotations/cttr:annotsummary"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-provision"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="table"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-provision"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="entry"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-provision"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-provision"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent/heading/title   -\->
		<ref:relatedcontent>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/table/title"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent/heading/title   -\->
		<ref:relatedcontent>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/@display-name"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent/heading/title   -\->
		<ref:relatedcontent>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem[@contenttype="case-activity-by-provision"]/ref:related-content-link   -\->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="tgroup/colspec"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem[@contenttype="case-activity-by-provision"]/ref:related-content-link   -\->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="tbody/row"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem[@contenttype="case-activity-by-provision"]/ref:related-content-link   -\->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="entry[@colname=&#34;prov&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:related-content-link   -\->
		<ref:related-content-link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:related-content-link>

	</xsl:template>

	<xsl:template match="entry/lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:related-content-link/ref:lnlink   -\->
		<ref:related-content-link>
			<ref:lnlink>
				<xsl:apply-templates select="@* | node()"/>
			</ref:lnlink>
		</ref:related-content-link>

	</xsl:template>

	<xsl:template match="entry[@colname=&#34;prov-count&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentdescription/p/text   -\->
		<ref:relatedcontentdescription>
			<p>
				<text>
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
		</ref:relatedcontentdescription>

	</xsl:template>
-->
</xsl:stylesheet>