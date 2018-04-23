<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.miscdate">
  <title>leg:miscdate <lnpid>id-CA06-13824</lnpid></title>
  <body>
    <section>
		<ul>
			<li>
                    <sourcexml>leg:info/leg:dates/leg:miscdate</sourcexml>
                    <b>Becomes</b>
                    <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/miscdate</targetxml> and
                    required attribute <targetxml>@datetype</targetxml> should be set to "miscdate". <pre>
            
              <b><i>Example: Source Markup</i></b>

&lt;leg:info subseqdoc="true"&gt;
    &lt;leg:dates&gt;
        &lt;leg:miscdate&gt;REPEALED by Alta. Reg. 64/2003 s2 effective March 27, 2003 (Alta. Gaz. April 15, 2003).&lt;/leg:miscdate&gt;
    &lt;/leg:dates&gt;
&lt;/leg:info&gt;

		</pre>
                    <pre>
             <b><i>Example: Target Markup</i></b>
            

&lt;primlawinfo:primlawinfo&gt;
      &lt;primlawinfo:dates&gt;
           &lt;miscdate datetype="miscdate"&gt;REPEALED by Alta. Reg. 64/2003 s2 effective March 27, 2003 (Alta. Gaz. April 15, 2003).&lt;/miscdate&gt;
      &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;

          </pre>
                    <note>Attribute <sourcexml>@subseqdoc</sourcexml> should be suppressed from
                        conversion.</note>
                </li>
		</ul>
    </section>
      <section>
          <title>Changes</title>
          <p>2014-09-05: <ph id="change_20140905_SS">Instruction and example updated for added
                    attribute <targetxml>@datetype="miscdate"</targetxml> inside the
                        <targetxml>miscdate</targetxml> markup.</ph></p>
      </section>
      
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\leg.miscdate.dita  -->
	<!--<xsl:message>leg.miscdate.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:miscdate">		
				<miscdate>
				    <xsl:attribute name="datetype">
				        <xsl:text>miscdate</xsl:text>
				    </xsl:attribute>
					<xsl:apply-templates select="@* | node()"/>
				</miscdate>
	</xsl:template>
</xsl:stylesheet>