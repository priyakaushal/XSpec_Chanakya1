<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"  
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Overview_cttr.annotations-MoreLinks">
  <title>cttr:body/cttr:content/cttr:annotations - More Links <lnpid>id-AU20-22247</lnpid></title>
  
  <body>
    
    <section>
      <p>When <sourcexml>cttr:annotations/heading</sourcexml> contains a descendant
        <sourcexml>lnlink/marker</sourcexml> or <sourcexml>remotelink</sourcexml> 
        that contains the text "List of Provisions", "Defined Terms", or "Government Website", 
        perform the mappings described in this section.</p>
      <note>EXCEPTION: if the source <sourcexml>cttr:annotations/heading</sourcexml> 
        contains no <sourcexml>note/p</sourcexml> children with descendant text nodes 
        with non-whitespace text, do not create any output for this source content at all.</note>
      
      <p>When a <sourcexml>cttr:annotations/heading/note/h</sourcexml> contains the text "More Links", 
        this element is suppressed. The appropriate heading will be created by the mapping rules below.</p>
      <p>The target markup created for this section of the document is not output in sequential document order. 
        It must be inserted into the target document before the target markup for 
        <targetxml>/cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlaw:subordinatelaw</targetxml>. 
        If that target element does not exist in the target document, insert this markup before the 
        target markup for the following sections of the target document:
        <ul>
          <li>
            <targetxml>/cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/ref:relatedcontent[@contenttype="corresponding-form"]</targetxml>
          </li>
          <li>
            <targetxml>/cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/ref:relatedcontent[@contenttype="penalty"]</targetxml>
          </li>
          <li>
            <targetxml>/cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlaw:equivalentlaw</targetxml>
          </li>
          <li>
            <targetxml>/cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/navaid:navigationaid[@type="links"]</targetxml>
          </li>
          <li>
            <targetxml>/cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/ref:relatedcontent[@contenttype="guidance"]</targetxml>
          </li>
        </ul>
      </p>
      <p>When <sourcexml>cttr:annotations/heading</sourcexml> contains a descendant
        <sourcexml>lnlink/marker</sourcexml> or <sourcexml>remotelink</sourcexml> contains the text 
        "List of Provisions", "Defined Terms", or "Government Website",
        create <targetxml>ref:relatedcontent[@xml:id="refsection-links"][@contenttype="more-links"]</targetxml> in 
        the target document location determined above.</p>
      <p>Create <targetxml>ref:anchor[@id="ref-more-links"]</targetxml> inside this 
        <targetxml>ref:relatedcontent</targetxml>.</p>
      <p>Create <targetxml>heading/title[text()="More Links"]</targetxml> inside this 
        <targetxml>ref:relatedcontent</targetxml>.</p>
      <p>
        <sourcexml>lnlink/marker</sourcexml> or 
        <sourcexml>remotelink</sourcexml> containing one of these text strings becomes 
        <targetxml>ref:relatedcontentitem/ref:related-content-link</targetxml>, and its content is 
        mapped to the content of <targetxml>ref:relatedcontentitem/ref:related-content-link</targetxml> as 
        described below.</p>
      <p>
        <sourcexml>lnlink</sourcexml> maps to 
        <targetxml>ref:relatedcontentitem/ref:related-content-link/ref:lnlink</targetxml> using standard mapping rules.
      </p>
      <p>
        <sourcexml>remotelink[@href]</sourcexml> 
        maps to <targetxml>ref:relatedcontentitem/ref:related-content-link/ref:lnlink[@service="URL"]</targetxml>, and 
        <sourcexml>remotelink/text()</sourcexml> becomes <targetxml>ref:lnlink/ref:marker/text()</targetxml>. 
        Create a <targetxml>ref:locator</targetxml> element containing:
        <targetxml>ref:locator/ref:locator-key/ref:key-name[@name="URL"]</targetxml> and 
        <sourcexml>remotelink/@href</sourcexml> becomes  
        <targetxml>ref:locator/ref:locator-key/ref:key-value/@value</targetxml>.</p>
    </section>

    <example>
      <title>Example 1: Source with Related Content Links Containining "List of Provisions", "Defined Terms", or "Government Website"</title>
      <codeblock>
  &lt;cttr:annotations&gt;
    &lt;heading&gt;
      &lt;note&gt;
      	&lt;h id="OP201"&gt;More Links&lt;/h&gt;
      &lt;/note&gt;
      &lt;note id="OP20"&gt;
      	&lt;p&gt;
      		&lt;text&gt;
      			&lt;lnlink service="DOC-ID" status="valid"&gt;
      				&lt;marker&gt;List of Provisions&lt;/marker&gt;
      				&lt;api-params&gt;
      					&lt;param name="remotekey1" value="DOC-ID"/&gt;
      					&lt;param name="remotekey2" value="CTH_ACT_1995-2_LEG_INFO"/&gt;
      					&lt;param name="dpsi" value="005X"/&gt;
      				&lt;/api-params&gt;
      			&lt;/lnlink&gt;
      		&lt;/text&gt;
      	&lt;/p&gt;
      &lt;/note&gt;
      &lt;note id="OP21"&gt;
      	&lt;p&gt;
      		&lt;text&gt;
      			&lt;lnlink service="DOC-ID" status="valid"&gt;
      				&lt;marker&gt;Defined Terms&lt;/marker&gt;
      				&lt;api-params&gt;
      					&lt;param name="remotekey1" value="DOC-ID"/&gt;
      					&lt;param name="remotekey2" value="CTH_ACT_1995-2_DEFLIST"/&gt;
      					&lt;param name="dpsi" value="005X"/&gt;
      					&lt;param name="type" value="pdf"/&gt;
      				&lt;/api-params&gt;
      			&lt;/lnlink&gt;
      		&lt;/text&gt;
      	&lt;/p&gt;
      &lt;/note&gt;
      &lt;note id="OP22"&gt;
      	&lt;p&gt;
      		&lt;text&gt;
      			&lt;remotelink href="http://www.comlaw.gov.au/comlaw/management.nsf/lookupindexpagesbyid/IP200401477?OpenDocument"&gt;Government Website&lt;/remotelink&gt;
      		&lt;/text&gt;
      	&lt;/p&gt;
      &lt;/note&gt;
    &lt;/heading&gt;
  &lt;/cttr:annotations&gt;    
</codeblock>

      <title>Example 1: Target of Related Content Links Containining "List of Provisions", "Defined Terms", or "Government Website"</title>
      <codeblock>
&lt;ref:relatedcontent xml:id="refsection-links" contenttype="more-links"&gt;
  &lt;ref:anchor id="ref-more-links"/&gt;
	&lt;heading&gt;
		&lt;title&gt;More Links&lt;/title&gt;
	&lt;/heading&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;List of Provisions&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="005X-CTH_ACT_1995-2_LEG_INFO"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;Defined Terms&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="005X-CTH_ACT_1995-2_DEFLIST"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="URL"&gt;
				&lt;ref:marker&gt;Government Website&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="URL"/&gt;
						&lt;ref:key-value value="http://www.comlaw.gov.au/comlaw/management.nsf/lookupindexpagesbyid/IP200401477?OpenDocument"/&gt;
					&lt;/ref:locator-key&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
	&lt;/ref:relatedcontentitem&gt;
&lt;/ref:relatedcontent&gt; 
  </codeblock>
    </example>

    <section>
      <title>
        Changes:
      </title>
      <p>2016-07-06: <ph id="change_20160706_snb">Changes for NZ Legislation Citator: added note 
        to indicate that entire section output is suppressed if no non-whitespace content exists in data 
        other than section and titles.</ph></p>
      <p>2016-06-03: <ph id="change_20160603a_snb">Removed <targetxml>[@service="DOCUMENT"]</targetxml> from 
        <sourcexml>lnlink</sourcexml> mapping, and changed to indicate that standard mapping rules should 
        be used.</ph></p>
      <p>2016-02-16: <ph id="change_20160216_snb">Modified More Links conversion to support broader variations 
        in source document markup to solve webteam issue. Changed from specific XPATHs for location 
        of text containing "List of Provisions", "Defined Terms", or "Government Website" to instead 
        convert any descendent of <sourcexml>cttr:annotations/heading</sourcexml> containing a descendant
        <sourcexml>lnlink/marker</sourcexml> or <sourcexml>remotelink</sourcexml> with one of those text 
        strings.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211j_snb">Added source XPATHs and logic to support Instrument/Act 
        documents. Added intro paragraph with test condition for entire section.</ph>
      </p>
      <p>2015-12-04: <ph id="change_20151204d_snb">Created new section for 
        "cttr:body/cttr:content/cttr:annotations - More Links". This section contains 
        modified/clarified instructions for the mapping instructions that were inside 
        the Non-standard cttr:annotations: Instrument Info section of the CI, including 
        mapping for "List of Provisions", "Defined Terms", and "Government Website".</ph>
      </p>
    </section>
 
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-MoreLinks.dita  -->
	<!--
	<xsl:template match="source_cttr:annotations/heading/descendant::lnlink/marker[.='List of Provisions']]">
		<!-\-<xsl:if test=".='List of Provisions' or .= 'Defined Terms' or .='Government Website'">-\->
		<ref:relatedcontent>
			<xsl:attribute name="xml:id">
				<xsl:text>refsection-links</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="contenttype">
				<xsl:text>more-links</xsl:text>
			</xsl:attribute>
			<xsl:element name="ref:anchor">
				<xsl:attribute name="id">
					<xsl:text>ref-more-links</xsl:text>
				</xsl:attribute>
			</xsl:element>
			<xsl:element name="heading">
				<xsl:element name="title">
					<xsl:text>More Links</xsl:text>
				</xsl:element>
			</xsl:element>
			<xsl:element name="ref:relatedcontentitem">
				<xsl:element name="ref:related-content-link">
					<xsl:apply-templates select="@* | node()"/>
				</xsl:element>
			</xsl:element>
		</ref:relatedcontent>
		<!-\-</xsl:if>-\->
	</xsl:template>
	-->

	<!--<xsl:template match="cttr:annotations/heading"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  /cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlaw:subordinatelaw   -\->
		<cttr:citator xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1">
			<cttr:head>
				<cttr:citedstatlaw>
					<cttr:legisinfo>
						<primlaw:subordinatelaw xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<xsl:apply-templates select="@* | node()"/>
						</primlaw:subordinatelaw>
					</cttr:legisinfo>
				</cttr:citedstatlaw>
			</cttr:head>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="lnlink/marker"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  /cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlaw:subordinatelaw   -\->
		<cttr:citator xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1">
			<cttr:head>
				<cttr:citedstatlaw>
					<cttr:legisinfo>
						<primlaw:subordinatelaw xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<xsl:apply-templates select="@* | node()"/>
						</primlaw:subordinatelaw>
					</cttr:legisinfo>
				</cttr:citedstatlaw>
			</cttr:head>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="remotelink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  /cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlaw:subordinatelaw   -\->
		<cttr:citator xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1">
			<cttr:head>
				<cttr:citedstatlaw>
					<cttr:legisinfo>
						<primlaw:subordinatelaw xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<xsl:apply-templates select="@* | node()"/>
						</primlaw:subordinatelaw>
					</cttr:legisinfo>
				</cttr:citedstatlaw>
			</cttr:head>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="note/p"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  /cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlaw:subordinatelaw   -\->
		<cttr:citator xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1">
			<cttr:head>
				<cttr:citedstatlaw>
					<cttr:legisinfo>
						<primlaw:subordinatelaw xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<xsl:apply-templates select="@* | node()"/>
						</primlaw:subordinatelaw>
					</cttr:legisinfo>
				</cttr:citedstatlaw>
			</cttr:head>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note/h"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  /cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlaw:subordinatelaw   -\->
		<cttr:citator xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1">
			<cttr:head>
				<cttr:citedstatlaw>
					<cttr:legisinfo>
						<primlaw:subordinatelaw xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<xsl:apply-templates select="@* | node()"/>
						</primlaw:subordinatelaw>
					</cttr:legisinfo>
				</cttr:citedstatlaw>
			</cttr:head>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:related-content-link/ref:lnlink   -\->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="remotelink[@href]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:related-content-link/ref:lnlink[@service="URL"]   -\->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="remotelink/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/ref:marker/text()   -\->
		<ref:lnlink>
			<ref:marker>
				<!-\-  Could not determine target element or attribute name:  <text()>  -\->					<xsl:apply-templates select="@* | node()"/>
				<!-\-  Could not determine target element or attribute name:  </text()>  -\->
			</ref:marker>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="remotelink/@href"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:locator/ref:locator-key/ref:key-value/@value   -\->
		<ref:locator>
			<ref:locator-key>
				<ref:key-value>
					<xsl:attribute name="value">
						<xsl:apply-templates select="node()"/>
					</xsl:attribute>
				</ref:key-value>
			</ref:locator-key>
		</ref:locator>

	</xsl:template>-->

	
</xsl:stylesheet>





















