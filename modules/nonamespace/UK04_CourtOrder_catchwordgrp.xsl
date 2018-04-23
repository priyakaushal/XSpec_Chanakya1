<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita case ci courtorder">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-catchwordgrp">
  <title>catchwordgrp <lnpid>id-UK04-27628</lnpid></title>
  <body>
    <p>The element <sourcexml>case:headnote/catchwordgrp</sourcexml> becomes <targetxml>courtorder:head/courtorder:descriptor</targetxml>.
    </p>
    <p>Then, for each child <sourcexml>case:headnote/catchwordgrp/catchwords</sourcexml> element
      create a separate
        <targetxml>courtorder:head/courtorder:descriptor/classify:classification</targetxml> element
      with attribute <targetxml>classify:classification/@classscheme</targetxml> set to
      "catchwords".</p>
   <p>The element <sourcexml>case:headnote/catchwordgrp/catchwords/catchphrase</sourcexml> becomes
        <targetxml>courtorder:head/courtorder:descriptor/classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>. <ul>
          <li>Each and every <sourcexml>catchphrase</sourcexml> element causes a new and separate
            <targetxml>classify:classitem</targetxml> element to be created within
            <targetxml>classify:classification</targetxml>. The
            <targetxml>classify:classitem</targetxml> element must have a child
            <targetxml>classify:classitem-identifier</targetxml> element and a grand-child
            <targetxml>classify:classname</targetxml> element.</li>
          <li>Convert all child elements of <sourcexml>catchphrase</sourcexml> (such as
            <sourcexml>ci:cite</sourcexml>) to children of <targetxml>classify:classname</targetxml>
            using the conversion instructions for any such child elements found in the <b>"General
              Markup"</b> section.</li>
        </ul>
     </p>
    <p>Any text occurring outside of (between) <sourcexml>catchphrase</sourcexml> elements (as
      direct PCDATA of <sourcexml>catchwords</sourcexml>), <b><u>and</u></b> consisting entirely of
      punctuation or separator characters that are not letters or numbers, is dropped and not
      output. If there is text outside of  <sourcexml>catchphrase</sourcexml> (as direct PCDATA of
        <sourcexml>catchwords</sourcexml>) that <b><u>does</u></b> contain letters or numbers, this
      is to be considered a data error so this text can be either corrected at source or a new
      conversion instruction specified (it should <b><u>never</u></b> be silently dropped).</p>
    <section>
      <title>Source XML </title>
      <codeblock>

&lt;case:headnote&gt;
  &lt;!--...--&gt;
  &lt;catchwordgrp&gt;
    &lt;catchwords&gt;
      &lt;catchphrase&gt;Practice &amp;#x2013; Queen's Bench Division &amp;#x2013; Lists &amp;#x2013; Mercantile
      lists &amp;#x2013; Cardiff and Chester.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
    &lt;catchwords&gt;
      &lt;catchphrase&gt;Practice &amp;#x2013; Chancery Division &amp;#x2013; Order and Accounts Section
            &amp;#x2013; Merger of Accounts Section and Drafting Section.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;

      </codeblock>
    </section>
      <section>
        <title>Target XML </title>
        <codeblock>

&lt;courtorder:head&gt;
  &lt;!--...--&gt;
  &lt;courtorder:descriptor&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Practice &amp;#x2013; Queen's Bench Division &amp;#x2013; Lists &amp;#x2013; Mercantile
      lists &amp;#x2013; Cardiff and Chester.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Practice &amp;#x2013; Chancery Division &amp;#x2013; Order and Accounts Section
            &amp;#x2013; Merger of Accounts Section and Drafting Section.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/courtorder:descriptor&gt;

        </codeblock>
      </section>
    <section>
      <title>Source XML showing punctuation/seperator characters occurring outside of (between)
          <sourcexml>catchphrase</sourcexml> element (as direct PCDATA of
          <sourcexml>catchwords</sourcexml>), as well as mulitple <sourcexml>catchphrase</sourcexml>
        elements within the same <sourcexml>catchwords</sourcexml> element</title>
      <codeblock>

&lt;case:headnote&gt;
  &lt;!--...--&gt;
  &lt;catchwordgrp&gt;
    &lt;catchwords&gt;&lt;catchphrase&gt;Anti-social behaviour order&lt;/catchphrase&gt;—&lt;catchphrase&gt;practice&lt;/catchphrase&gt;—&lt;catchphrase&gt;constitution of bench whenever subject of order under 18 years old&lt;/catchphrase&gt;—&lt;catchphrase&gt;Crime and Disorder Act 1998, ss.1 and 1D.&lt;/catchphrase&gt;&lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;courtorder:head&gt;
  &lt;!--...--&gt;
  &lt;courtorder:descriptor&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Anti-social behaviour order&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;practice&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;constitution of bench whenever subject of order under 18 years old&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Crime and Disorder Act 1998, ss.1 and 1D.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/courtorder:descriptor&gt;

      </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-02-16: <ph id="change_20160216_JCG">Modified existing instructions to clearly explain
          how to handle multiple <sourcexml>catchphrase</sourcexml> elements occuring within the
          same <sourcexml>catchwords</sourcexml> element. Then, added an instruction to handle
          punctuation/seperator characters occurring outside of (between)
            <sourcexml>catchphrase</sourcexml> elements (as direct PCDATA of
            <sourcexml>catchwords</sourcexml>). Finally, added an example to illustrate this
          senario. (International Content RFA List, issue #2768)</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\catchwordgrp.dita  -->
<!--	<xsl:message>UK04_CourtOrder_catchwordgrp.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:headnote/catchwordgrp">

			<courtorder:descriptor>
				<xsl:apply-templates select="@* | node()"/>
			</courtorder:descriptor>

	</xsl:template>

	<xsl:template match="case:headnote/catchwordgrp/catchwords">

		
	  <classify:classification classscheme='catchwords'>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classification>

	</xsl:template>

	<xsl:template match="case:headnote/catchwordgrp/catchwords/catchphrase">
					<classify:classitem>
						<classify:classitem-identifier>
							<classify:classname>
								<xsl:apply-templates select="@* | node()"/>
							</classify:classname>
						</classify:classitem-identifier>
					</classify:classitem>

	</xsl:template>

	
</xsl:stylesheet>