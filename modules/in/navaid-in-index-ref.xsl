<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-in-index-ref">
  <title>in:index-ref <lnpid>id-UK18-35213</lnpid></title>
  <body>
    <section>
      <p><sourcexml>in:index-ref</sourcexml> markup containing one or more references to the topics
        of the index and it should be mapped to target on the basis of following scenarios:</p>
      <p><b><u>First Scenario</u></b>: If input xpath is
          <sourcexml>/INDEXDOC/in:body/in:lev1/in:entry/in:index-ref</sourcexml> then it should be
        mapped to
          <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry/index:locator</targetxml>.
      </p>
      
      
      <p><b><u>Second Scenario</u></b>: If input xpath is
        <sourcexml>/INDEXDOC/in:body/in:tabular-index/in:lev1/in:entry/in:index-ref</sourcexml>
        then it should be mapped to
          <targetxml>/navaid:landingpage/navaid:landingpagebody/index:tabularindex/index:tabularentry/index:locator</targetxml>. </p>
      <p>Refer source and target examples in next PDF pages.</p>
      <note>Any <sourcexml>remotelink</sourcexml> element comes with a <b>@service</b> attribute
        with a value '<b>DOC-ID</b>' and <b>@docidref</b> attribute is not present then it should be
        mapped in target <targetxml>ref:lnlink</targetxml>.</note>
      <note>All child elements (i.e. <sourcexml>ci:cite</sourcexml>, <sourcexml>emph</sourcexml> and
        others) of <sourcexml>in:index-ref</sourcexml> markup in source documents then it should be
        mapped in target according to <b>General Markup</b> section.</note>
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML 1</b></lines>
      <codeblock>
        
&lt;in:body&gt;
  &lt;heading&gt;
    &lt;title&gt;EF&amp;amp;P Key Document Finder &lt;/title&gt;
    &lt;refpt id="02HS_2_EF_PKeyDocumentFinder:HTCOMM-KDF" type="ext" /&gt;
  &lt;/heading&gt;
  &lt;in:lev1&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;Company/commercial&lt;/in:entry-text&gt;
    &lt;/in:entry&gt;
    &lt;in:lev2&gt;
      &lt;in:entry&gt;
        &lt;in:entry-text&gt;&lt;emph typestyle="bf"&gt;companies&lt;/emph&gt;:&lt;/in:entry-text&gt;
        &lt;in:index-ref&gt;
          &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="02HS_1_COMPANY_COMMERCIAL_ACQUISITIONS:HTCOMM-EFP" dpsi="02HS"&gt;acquisitions -&lt;/remotelink&gt;
        &lt;/in:index-ref&gt;
      &lt;/in:entry&gt;
    &lt;/in:lev2&gt;
  &lt;/in:lev1&gt;
&lt;/in:body&gt;
        
      </codeblock>
      <lines><b>Target XML 1</b> showing conversion from <sourcexml>in:body/in:lev1/in:entry/in:index-ref</sourcexml> to
      <targetxml>navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry/index:locator</targetxml></lines>
      <codeblock>

&lt;navaid:landingpagebody&gt;
    &lt;ref:anchor id="02HS_2_EF_PKeyDocumentFinder:HTCOMM-KDF" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;EF&amp;amp;P Key Document Finder &lt;/title&gt;
    &lt;/heading&gt;
    &lt;index:index indextype="topical"&gt;
        &lt;index:item&gt;
            &lt;index:entry&gt;
                &lt;index:entrytext&gt;Company/commercial&lt;/index:entrytext&gt;
            &lt;/index:entry&gt;
            &lt;index:item&gt;
                &lt;index:entry&gt;
                    &lt;index:entrytext&gt;&lt;emph typestyle="bf"&gt;companies&lt;/emph&gt;:&lt;/index:entrytext&gt;
                    &lt;index:locator&gt;
                        &lt;ref:lnlink&gt;
                            &lt;ref:marker&gt;acquisitions -&lt;/ref:marker&gt;
                            &lt;ref:locator anchoridref="02HS_1_COMPANY_COMMERCIAL_ACQUISITIONS:HTCOMM-EFP"&gt;
                                &lt;ref:locator-key &gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="02HS-MISSING-DOCID"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/index:locator&gt;
                &lt;/index:entry&gt;
            &lt;/index:item&gt;
    &lt;/index:index&gt;
&lt;/navaid:landingpagebody&gt;

      </codeblock>
    </example>
    <example>
      <lines><b>Source XML 2</b></lines>
      <codeblock>
        
&lt;in:tabular-index&gt;
  &lt;in:column-headings&gt;
    &lt;in:entry-text-heading&gt;CASE NAME&lt;/in:entry-text-heading&gt;
    &lt;in:index-ref-heading&gt;SCD REFERENCES&lt;/in:index-ref-heading&gt;
    &lt;in:index-ref-heading&gt;SpC NUMBER&lt;/in:index-ref-heading&gt;
  &lt;/in:column-headings&gt;
  &lt;in:lev1&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;Camas plc v Atkinson (Inspector of Taxes) &lt;/in:entry-text&gt;
      &lt;in:index-ref&gt;
        &lt;remotelink service="QUERY" remotekey1="REPORTER-CITE(1999 w/3 STC SCD w/3 1)"
         remotekey2="All Subscribed Cases Sources" cmd="f:exp" alttext="References to"&gt;
        [1999] STC (SCD) 1&lt;/remotelink&gt;&lt;/in:index-ref&gt;
      &lt;in:index-ref&gt;&lt;emph typestyle="un"&gt;SpC000175&lt;/emph&gt;&lt;/in:index-ref&gt;
    &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
&lt;/in:tabular-index&gt;
        
      </codeblock>
      <lines><b>Target XML 2</b> showing conversion from <sourcexml>in:tabular-index/in:lev1/in:entry/in:index-ref</sourcexml> to
      <targetxml>index:tabularindex/index:tabularentry/index:locator</targetxml></lines>
      <codeblock>

&lt;index:tabularindex&gt;
  &lt;index:columnheadings&gt;
    &lt;index:entrytextheading&gt;CASE NAME&lt;/index:entrytextheading&gt;
    &lt;index:locatorheading&gt;SCD REFERENCES&lt;/index:locatorheading&gt;
    &lt;index:locatorheading&gt;SpC NUMBER&lt;/index:locatorheading&gt;
  &lt;/index:columnheadings&gt;
  &lt;index:tabularentry&gt;
    &lt;index:entrytext&gt;Camas plc v Atkinson (Inspector of Taxes) &lt;/index:entrytext&gt;
     &lt;index:locator&gt;[1999] STC (SCD) 1&lt;/index:locator&gt;
     &lt;index:locator&gt;&lt;emph typestyle="un"&gt;SpC000175&lt;/emph&gt;&lt;/index:locator&gt;
  &lt;/index:tabularentry&gt;
&lt;/index:tabularindex&gt;

      </codeblock>
    </example>
    <note>If <sourcexml>remotelink</sourcexml> markup having a "<sourcexml>@service</sourcexml>"
      attribute with a value "<b>Query</b>" then convert the pcdata in target and suppress the
      remotelink markup with its attributes.</note>
    <section>
      <title>Changes</title>
      <p>2015-02-16: <ph id="change_20150516_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

  <xsl:template match="in:index-ref">
    
    <!--  Original Target XPath:  index:locator   -->
    <!-- MDS 2017-05-02 - refpt is moved to the ancestor::index:item output. -->
      <xsl:if test="not(refpt)">
        <index:locator>
          <xsl:apply-templates select="@* | node()"/>
        </index:locator>
      </xsl:if>
    
    
  </xsl:template>

</xsl:stylesheet>