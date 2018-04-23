<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
  version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17-Webinar_DIGESTDOC_p_text_role">
    <title>p/text/role <lnpid>id-UK17-36212</lnpid></title>

    <body>
        <p>If <sourcexml>role</sourcexml> is a direct child of <sourcexml>p/text</sourcexml> in
      source document then target conversion should be mapped with
        <targetxml>p/text/person:person/role</targetxml> and its attribute should be handled as follows: <ul>
        <li><sourcexml>@id</sourcexml> attribute should be mapped with
          <targetxml>xml:id</targetxml>.</li>
      </ul>
      <!--<note>CR-1[*]: Need change request for adding <targetxml>role</targetxml> element as a direct
        child of <targetxml>text</targetxml> in current seclaw schema.</note>-->
    </p>
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
        ...
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
        ...
        &lt;p&gt;
          &lt;text&gt;
            &lt;person:person&gt;
              &lt;role xml:id="multimedia"&gt;Webinar&lt;/role&gt;
            &lt;/person:person&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17-Webinar_DIGESTDOC_p_text_role.dita  -->
	 

	<xsl:template match="p/text/role" priority="25">
				<person:person>
				  <role xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates select="@* | node()"/>
					</role>
				</person:person>
	</xsl:template>


</xsl:stylesheet>