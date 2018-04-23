<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17-Webinar_DIGESTDOC_time">
    <title>time <lnpid>id-UK17-36213</lnpid></title>

    <body>
        <p><sourcexml>time</sourcexml> element should be mapped with <targetxml>time</targetxml>
      markup with optional attribute @time-value in target conversion and it's child markup should
      be handled as follows: <ul>
        <li><sourcexml>@hour, @mintues and @second</sourcexml> should be mapped with single
          attribute <targetxml>time-value</targetxml> in target and source @attribute values should
          be placed under target attribute <targetxml>@time-value</targetxml> and values are
          seprated by colon "<b>:</b>". Refer the below source and target markup.</li>
      </ul></p>
        <example>
            <title>Source XML</title>
            <codeblock>

        &lt;p&gt;
          &lt;text&gt;
            &lt;time hour="00" minute="06" second="31"&gt;Duration: 06:31&lt;/time&gt;
          &lt;/text&gt;
        &lt;/p&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

        &lt;p&gt;
          &lt;text&gt;
            &lt;time time-value="00:06:31"&gt;Duration: 06:31&lt;/time&gt;
          &lt;/text&gt;
        &lt;/p&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-08-20: Created</p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17-Webinar_DIGESTDOC_time.dita  -->

	<xsl:template match="time">
	  <time xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	    <xsl:attribute name="time-value" select="concat(@hour , ':', @minute, ':' , @second)"/>
			<xsl:apply-templates/>
		</time>
	</xsl:template>
  
  <xsl:template match="time/@hour | time/@minute | time/@second"/>

</xsl:stylesheet>