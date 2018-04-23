<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_index">
    <title><sourcexml>index</sourcexml> to
        <targetxml>tei:sense/pgrp/section/index:index</targetxml> <lnpid>id-AU21-22411</lnpid></title>
    <body>
        <section>
            <p><sourcexml>index</sourcexml> becomes
                    <targetxml>tei:sense/pgrp/section/index:index</targetxml>.<ul id="ul_pxr_wgf_ci">
                    <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                       <li>Include in mapping of <sourcexml>heading/title</sourcexml> to <targetxml>heading/title</targetxml>: 
                           <ul>
                               <li>Add <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml> around content of <targetxml>title</targetxml>.
                               </li>
                           </ul>
                       </li>  
                    <li><sourcexml>in:lev1</sourcexml>, <sourcexml>in:lev2</sourcexml>,
                            <sourcexml>in:lev3</sourcexml>, <sourcexml>in:lev4</sourcexml>,
                            <sourcexml>in:lev5</sourcexml>, or <sourcexml>in:lev6</sourcexml>
                        becomes <targetxml>index:item</targetxml>.
                        Add <targetxml>ref:anchor[@id="XXXX"]</targetxml> at start of index:item.
                        <ul id="ul_prf_eif_ci">
                            <li><sourcexml>in:entry</sourcexml> becomes
                                    <targetxml>index:entry</targetxml><ul id="ul_hie_iif_ci">
                                    <li><sourcexml>in:entry-text</sourcexml> becomes
                                            <targetxml>index:entrytext</targetxml></li>
                                </ul></li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>
  &lt;index&gt;
       &lt;heading&gt;
          &lt;title&gt;Halsbury&amp;#x2019;s Laws of Australia&lt;/title&gt;
       &lt;/heading&gt;
       &lt;in:lev1&gt;
          &lt;in:entry&gt;
            &lt;in:entry-text&gt;Age discrimination&lt;/in:entry-text&gt;
           &lt;/in:entry&gt;
           &lt;in:lev2&gt;
              &lt;in:entry&gt;
                &lt;in:entry-text&gt;children&lt;/in:entry-text&gt;
               &lt;/in:entry&gt;
               &lt;in:lev3&gt;
                  &lt;in:entry&gt;
                     &lt;in:entry-text&gt;refusal to provide legal aid assistance &lt;remotelink refpt="DUMMYLINK" remotekey1="REFPTID" service="DOC-ID"&gt;[80-380]&lt;/remotelink&gt;
                     &lt;/in:entry-text&gt;
                  &lt;/in:entry&gt;
                  &lt;/in:lev3&gt;
           &lt;/in:lev2&gt;
          ...
      &lt;/index&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>

&lt;tei:sense&gt;
    &lt;pgrp&gt;
        &lt;section&gt;
              &lt;index:index indextype="topical"&gt;
                   &lt;heading&gt;
                      &lt;title&gt;Halsbury&amp;#x2019;s Laws of Australia&lt;/title&gt;
                   &lt;/heading&gt;
                 &lt;index:item&gt;
                   &lt;index:entry&gt;
                     &lt;index:entrytext&gt;Age discrimination&lt;/index:entrytext&gt;
                   &lt;/index:entry&gt;
                      &lt;index:item&gt;
                         &lt;index:entry&gt;
                           &lt;index:entrytext&gt;children&lt;/index:entrytext&gt;
                         &lt;/index:entry&gt;
                       &lt;index:item&gt;
                       &lt;index:item&gt;
                           &lt;index:entry&gt;
                             &lt;index:entrytext&gt;refusal to provide legal aid assistance 
                                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                   &lt;ref:content&gt;[80-380]&lt;/ref:content&gt;
                                   &lt;ref:locator anchoridref="DUMMYLINK"/&gt;
                                &lt;/ref:crossreference&gt;
                              &lt;/index:entrytext&gt;
                           &lt;/index:entry&gt;
                         &lt;/index:item&gt;
                      &lt;/index:item&gt;
                   &lt;/index:item&gt;  
                ...
            &lt;/index:index&gt;
        &lt;/section&gt;
    &lt;/pgrp&gt;
&lt;/tei:sense&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-03-12: <ph id="change_20150312_mlv-2">Removed references to link and anchor from <targetxml>index/heading/title</targetxml></ph>.</p>
            <p>2015-02-03: <ph id="change_20150203_mlv-1">Modified mapping of <sourcexml>index/heading/title</sourcexml>.</ph></p>
            <p>2015-01-12: <ph id="change_20150112_mlv">Added instructions/sample to include pinpoint reference for pop-up within the topic index.</ph></p>
            <p>2013-04-03: <ph id="change_20130403_wl">Created.</ph></p>
            <p>2013-07-12: <ph id="change_20130712_wl">Added the conversion of
                        <sourcexml>remotelink</sourcexml> to<targetxml>
                        ref:crossreference</targetxml> in the Target XML example</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<xsl:template match="index">
		<!--  Original Target XPath:  tei:sense/pgrp/section/index:index   -->
		<tei:sense>
			<pgrp>
				<section>
				    <index:index indextype="topical">
						<xsl:apply-templates select="@* | node()"/>
					</index:index>
				</section>
			</pgrp>
		</tei:sense>
	</xsl:template>

	<xsl:template match="in:lev1|in:lev2|in:lev3|in:lev4|in:lev5|in:lev6">
		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>
	</xsl:template>	

	<xsl:template match="in:entry">
		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>
	</xsl:template>

	<xsl:template match="in:entry-text">
		<!--  Original Target XPath:  index:entrytext   -->
		<index:entrytext>
			<xsl:apply-templates select="@* | node()"/>
		</index:entrytext>
	</xsl:template>
</xsl:stylesheet>