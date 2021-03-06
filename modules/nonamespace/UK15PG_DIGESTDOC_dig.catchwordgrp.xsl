<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_DIGESTDOC_catchwordgrp">
  <title>catchwordgrp <lnpid>id-UK15-30435</lnpid></title>
    <body>
      <p>The element <sourcexml>catchwordgrp</sourcexml> is a container and its start-tag and end-tag (but not its content) are dropped.</p>
      <p>The element <sourcexml>catchwordgrp/catchwords</sourcexml> becomes <targetxml>seclaw:prelim/abstract/bodytext</targetxml>: <ol>
        <li>Create the element <targetxml>seclaw:prelim</targetxml> within the <targetxml>seclaw:level</targetxml> created from the conversion of <sourcexml>dig:info</sourcexml>.</li>
        <li>Create the element <targetxml>abstract</targetxml> within <targetxml>seclaw:prelim</targetxml>.</li>
        <li>Create the element <targetxml>bodytext</targetxml> within <targetxml>abstract</targetxml>.</li>
      </ol>
      </p>
      <p>The element <sourcexml>catchwordgrp/catchwords/catchphrase</sourcexml> becomes <targetxml>seclaw:prelim/abstract/bodytext/p/text</targetxml>: <ol>
        <li>Create the element <targetxml>p</targetxml> within the
            <targetxml>abstract/bodytext</targetxml> created from the conversion of
            <sourcexml>catchwords</sourcexml>.</li>
        <li>Create the element <targetxml>text</targetxml> within <targetxml>p</targetxml> to contain the PCDATA and any child elements converted from the source <sourcexml>catchphrase</sourcexml>. Each child element is converted as described in the <i>General Markup</i> section..</li>
      </ol>
      </p>
      <note>Occurs in smart forms, dpsi 0JUM and 0KVS.</note>
      <note>There are two different instructions that map content to
      <targetxml>abstract</targetxml>: this topic and the topic <xref href="UK15PG_DIGESTDOC_abstract.dita"/>. As of February 2014, there is no scenario in the
      source content where both these instructions would be applied for the same file. That is,
      there are currently no source files that have both the element
        <sourcexml>catchwordgrp</sourcexml> and the element <sourcexml>abstract</sourcexml>.
      However, if in the future a file was found that contained both, then the content of both
      source elements should be converted to the same target
        <targetxml>abstract/bodytext</targetxml> by following the instructions given. In this case,
      the element <sourcexml>catchphrase</sourcexml> would map to its own <targetxml>p</targetxml>
      within the target <targetxml>abstract</targetxml> and any source
        <sourcexml>abstract/p</sourcexml> elements would map to their own <targetxml>p</targetxml>
      within the same target <targetxml>abstract</targetxml>.</note>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;dig:info&gt;
  &lt;!--...--&gt;
  &lt;catchwordgrp display-name="Catchwords"&gt;
    &lt;catchwords&gt;
      &lt;catchphrase&gt;Court Service - Divorce - Civil Partnership - Form used for finacial
        statement for a financial order or for financial relief after an overseas divorce or
        dissolution etc&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;
&lt;/dig:info&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:level leveltype="unclassified"&gt;
  &lt;!--...--&gt;
  &lt;seclaw:prelim&gt;
    &lt;abstract&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Court Service - Divorce - Civil Partnership - Form used for finacial
            statement for a financial order or for financial relief after an overseas divorce or
            dissolution etc&lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/abstract&gt;
  &lt;/seclaw:prelim&gt;
  &lt;seclaw:bodytext&gt;
    &lt;!--...--&gt;
  &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
          <p>2014-02-12: <ph id="change_20140212_JCG">Created this instruction to handle a new XPath in the source content that will provide the text for the "Overview" during display. (R4.5 Content Issue List issue #1048)</ph></p>          
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_DIGESTDOC_dig.catchwordgrp.dita  -->
	<!--<xsl:message>UK15PG_DIGESTDOC_dig.catchwordgrp.xsl requires manual development!</xsl:message> -->
	<xsl:template match="catchwordgrp">

		<!--  Original Target XPath:  seclaw:prelim/abstract/bodytext   -->
		
					<xsl:apply-templates select="@* | node()"/>
			
	</xsl:template>

  <xsl:template match="catchwords">

		<!--  Original Target XPath:  seclaw:prelim/abstract/bodytext   -->
		<seclaw:prelim>
			<abstract>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				  <xsl:apply-templates select="parent::catchwordgrp/parent::dig:info/following-sibling::abstract" mode="abstract"/>
				</bodytext>
			</abstract>
		</seclaw:prelim>

	</xsl:template>


	<xsl:template match="catchphrase">

		
					<p>
						<text>
							<xsl:apply-templates select="@* | node()"/>
						</text>
					</p>

	</xsl:template>



	

  <xsl:template match="abstract" mode="abstract">
    
        <xsl:apply-templates select="@* | node()"/>
    
  </xsl:template>
	

</xsl:stylesheet>