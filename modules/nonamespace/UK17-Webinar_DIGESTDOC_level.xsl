<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17-Webinar_DIGESTDOC_level">
    <title>level <lnpid>id-UK17-36209</lnpid></title>

    <body>
        <p><sourcexml>level</sourcexml> mapped with <targetxml>seclaw:level</targetxml> in target
            conversion and any other child markup should be handled as follows: <ul>
                <li><sourcexml>refpt</sourcexml> maps to <targetxml>ref:anchor</targetxml> and must
                    be the first child of the <targetxml>seclaw:level</targetxml>.</li>
                <li><sourcexml>bodytext</sourcexml> is a child of <sourcexml>level</sourcexml> then
                    it should be mapped <targetxml>seclaw:level/seclaw:bodytext</targetxml>.</li>
            </ul></p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;dig:body&gt;
    &lt;level leveltype="division"&gt;
      &lt;heading&gt;
        &lt;title&gt;
          &lt;refpt id="0R7W_234429" type="ext" /&gt;The nature of money purchase benefits&lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;date day="01" month="01" year="2013"&gt;Date: 01/01/2013&lt;/date&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;time hour="00" minute="01" second="05"&gt;Duration: 01:05&lt;/time&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;role id="multimedia"&gt;Webinar&lt;/role&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="division"&gt;
        &lt;ref:anchor id="_0R7W_234429"/&gt;
        &lt;heading&gt;
            &lt;title&gt;The nature of money purchase benefits&lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
            &lt;p&gt;
          &lt;text&gt;
            &lt;date day="01" month="01" year="2013"&gt;Date: 01/01/2013&lt;/date&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;time time-value="01:05"&gt;Duration: 01:05&lt;/time&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;role xml:id="multimedia"&gt;Webinar&lt;/role&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-08-20: Created</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17-Webinar_DIGESTDOC_level.dita  -->


	<xsl:template match="level">
		<seclaw:level>
			<xsl:apply-templates select="@*"/>
		  <xsl:apply-templates select="refpt | heading/descendant::refpt"/>
		  <xsl:apply-templates select="node() except refpt"/>
		</seclaw:level>
	</xsl:template>

	<xsl:template match="@leveltype">
	  <xsl:copy-of select="."/>
	</xsl:template>

	
</xsl:stylesheet>