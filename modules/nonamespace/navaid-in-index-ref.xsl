<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
    xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
    version="2.0" exclude-result-prefixes="dita docinfo">
    
    <dita:topic id="navaid-in-index-ref">
        <title>in:index-ref <lnpid>id-AU16-21036</lnpid> </title>
        <body>
            <section>
                <p><sourcexml>in:index-ref</sourcexml> become <targetxml>index:locator</targetxml></p>
                <p>: If input xpath is
                    <sourcexml>/INDEXDOC/in:body/in:lev1/in:entry/in:index-ref</sourcexml> then it should be
                    mapped to
                    <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry/index:locator</targetxml>.
                </p>
                
                
                
                <p>Refer source and target examples.</p>
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
                    <![CDATA[
<in:body>
  <heading>
    <title>EF&amp;P Key Document Finder </title>
    <refpt id="02HS_2_EF_PKeyDocumentFinder:HTCOMM-KDF" type="ext" />
  </heading>
  <in:lev1>
    <in:entry>
      <in:entry-text>Company/commercial</in:entry-text>
    </in:entry>
    <in:lev2>
      <in:entry>
        <in:entry-text><emph typestyle="bf">companies</emph>:</in:entry-text>
        <in:index-ref>
          <remotelink service="DOC-ID" remotekey1="REFPTID" refpt="02HS_1_COMPANY_COMMERCIAL_ACQUISITIONS:HTCOMM-EFP" dpsi="02HS">acquisitions -</remotelink>
        </in:index-ref>
      </in:entry>
    </in:lev2>
  </in:lev1>
</in:body>
        ]]>
                </codeblock>
                <lines><b>Target XML 1</b> showing conversion from <sourcexml>in:body/in:lev1/in:entry/in:index-ref</sourcexml> to
                    <targetxml>navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry/index:locator</targetxml></lines>
                <codeblock>
                    <![CDATA[
<navaid:landingpagebody>
    <ref:anchor id="02HS_2_EF_PKeyDocumentFinder:HTCOMM-KDF" anchortype="global"/>
    <heading>
        <title>EF&amp;P Key Document Finder </title>
    </heading>
    <index:index indextype="topical">
        <index:item>
            <index:entry>
                <index:entrytext>Company/commercial</index:entrytext>
            </index:entry>
            <index:item>
                <index:entry>
                    <index:entrytext><emph typestyle="bf">companies</emph>:</index:entrytext>
                    <index:locator>
                        <ref:lnlink>
                            <ref:marker>acquisitions -</ref:marker>
                            <ref:locator anchoridref="02HS_1_COMPANY_COMMERCIAL_ACQUISITIONS:HTCOMM-EFP">
                                <ref:locator-key >
                                    <ref:key-name name="DOC-ID"/>
                                    <ref:key-value value="02HS-MISSING-DOCID"/>
                                </ref:locator-key>
                            </ref:locator>
                        </ref:lnlink>
                    </index:locator>
                </index:entry>
            </index:item>
    </index:index>
</navaid:landingpagebody>
]]>
                </codeblock>
            </example>
            
            <section>
                <title>Changes</title>
                <p>2017-04-27: <ph id="change_20170427_RS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>  
    
    
    <xsl:template match="in:index-ref">
        <index:locator>
            <xsl:apply-templates select="@* | node()"/>
        </index:locator>
    </xsl:template>
</xsl:stylesheet>