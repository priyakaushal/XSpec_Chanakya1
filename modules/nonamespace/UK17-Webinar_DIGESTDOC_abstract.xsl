<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17-Webinar_DIGESTDOC_abstract">
    <title>abstract <lnpid>id-UK17-36208</lnpid></title>

    <body>
        <p>If <sourcexml>abstract</sourcexml> is a sibling of <sourcexml>level</sourcexml> and
      direct child of <sourcexml>dig:body</sourcexml> in source document then it should be mapped in
      target <targetxml>seclaw:digestgrp/seclaw:digest/abstract</targetxml> within
        <targetxml>seclaw:body</targetxml> and other child elements should be handled as follows: <ul>
        <li>Create a required child element <targetxml>bodytext</targetxml> within
            <targetxml>abstract</targetxml> in target conversion.</li>
        <li><sourcexml>p/text</sourcexml> should be mapped with <targetxml>p/text</targetxml> and
          other child elements should be handled according to the common modules.</li>
      </ul>
    </p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;dig:body&gt;
 &lt;level leveltype="division"&gt;
      &lt;heading&gt;
        &lt;title&gt;
          &lt;refpt id="0R7S_244531" type="ext" /&gt;Completion statements calculator tool—user guide video&lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;date day="11" month="11" year="2013"&gt;Date: 11/11/2013&lt;/date&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;time hour="00" minute="04" second="52"&gt;Duration: 04:52&lt;/time&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;role id="multimedia"&gt;Video&lt;/role&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
    &lt;abstract&gt;
      &lt;p&gt;
        &lt;text&gt;Want to remove the hassle and risk of error when doing complex completion statements?&lt;/text&gt;
      &lt;/p&gt;
    &lt;/abstract&gt;
  &lt;/dig:body&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="division"&gt;
        &lt;ref:anchor id="_0R7S_244531"/&gt;
        &lt;heading&gt;
            &lt;title&gt;Completion statements calculator tool—user guide video&lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
            &lt;p&gt;
          &lt;text&gt;
            &lt;date day="11" month="11" year="2013"&gt;Date: 11/11/2013&lt;/date&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;time time-value="04:52"&gt;Duration: 04:52&lt;/time&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;role xml:id="multimedia"&gt;Video&lt;/role&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
    &lt;seclaw:digestgrp&gt;
    &lt;seclaw:digest&gt;
    &lt;abstract&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;Want to remove the hassle and risk of error when doing complex completion statements?&lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;/abstract&gt;
    &lt;/seclaw:digest&gt;
    &lt;/seclaw:digestgrp&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17-Webinar_DIGESTDOC_abstract.dita  -->


	<xsl:template match="dig:body/abstract[following-sibling::level or preceding-sibling::level]">
		<seclaw:digestgrp>
			<seclaw:digest>
			  <abstract xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@*"/>
			    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				    <xsl:apply-templates/>
				  </bodytext>
				</abstract>
			</seclaw:digest>
		</seclaw:digestgrp>

	</xsl:template>

	
</xsl:stylesheet>