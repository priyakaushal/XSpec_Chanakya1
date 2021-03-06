<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info_leg.history">
   <title>leg:info/leg:history <lnpid>id-ST04-26827</lnpid></title>
   <body>
      <section>
          <p>If <sourcexml>leg:history</sourcexml> comes within <sourcexml>leg:info</sourcexml> then
                it becomes
                    <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem</targetxml>
                and child elements includes: <sourcexml>leg:history/p/text</sourcexml> becomes
                    <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml>.</p>

           <pre>
               <b><i>Source example based on UK content</i></b>

&lt;leg:history&gt;
    &lt;p&gt;
        &lt;text searchtype="LEGISLATION"&gt;This Order was revoked for certain purposes by
            &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt;
                        &lt;ci:sesslawnum num="s1999_145s"/&gt;
                        &lt;ci:hierpinpoint&gt;
                            &lt;ci:hierlev label="section" num="2"/&gt;
                        &lt;/ci:hierpinpoint&gt;
                    &lt;/ci:sesslawinfo&gt;
                    &lt;ci:sesslawref&gt;
                        &lt;ci:standardname normpubcode="SC_SI"/&gt;
                    &lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;SSI 1999/145, art 2&lt;/ci:content&gt;
            &lt;/ci:cite&gt;, 
            &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt;
                    &lt;ci:sesslawnum num="s1999_145s"/&gt;
                        &lt;ci:hierpinpoint&gt;
                            &lt;ci:hierlev label="schedule" num="SCHEDULE"/&gt;
                        &lt;/ci:hierpinpoint&gt;
                    &lt;/ci:sesslawinfo&gt;
                    &lt;ci:sesslawref&gt;
                        &lt;ci:standardname normpubcode="SC_SI"/&gt;
                    &lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;Schedule&lt;/ci:content&gt;
            &lt;/ci:cite&gt;, as from 16 November 1999 at 1800 hours, and revoked for remaining purposes by 
            &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt;
                        &lt;ci:sesslawnum num="s2000_19s"/&gt;
                        &lt;ci:hierpinpoint&gt;
                            &lt;ci:hierlev label="section" num="2"/&gt;
                        &lt;/ci:hierpinpoint&gt;
                    &lt;/ci:sesslawinfo&gt;
                    &lt;ci:sesslawref&gt;
                        &lt;ci:standardname normpubcode="SC_SI"/&gt;
                    &lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;SSI 2000/19, art2&lt;/ci:content&gt;
            &lt;/ci:cite&gt;, as from 25 January 2000 at 1700 hours.&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:history&gt;

</pre>
<pre>
                         <b><i>Target Example</i></b>


&lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;This Order was revoked for certain purposes by
                        &lt;lnci:cite status="valid"&gt;
                            &lt;lnci:sesslaw&gt;
                                &lt;lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawnum num="s1999_145s"/&gt;
                                    &lt;lnci:hierpinpoint&gt;
                                        &lt;lnci:hierlev label="section" num="2"/&gt;
                                    &lt;/lnci:hierpinpoint&gt;
                                &lt;/lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="SC_SI"/&gt;
                                &lt;/lnci:sesslawref&gt;
                            &lt;/lnci:sesslaw&gt;
                            &lt;lnci:content&gt;SSI 1999/145, art 2&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;, 
                        &lt;lnci:cite status="valid"&gt;
                            &lt;lnci:sesslaw&gt;
                                &lt;lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawnum num="s1999_145s"/&gt;
                                    &lt;lnci:hierpinpoint&gt;
                                        &lt;lnci:hierlev label="schedule" num="SCHEDULE"/&gt;
                                    &lt;/lnci:hierpinpoint&gt;
                                &lt;/lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="SC_SI"/&gt;
                                &lt;/lnci:sesslawref&gt;
                            &lt;/lnci:sesslaw&gt;
                            &lt;lnci:content&gt;Schedule&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;, as from 16 November 1999 at 1800 hours, and revoked for remaining purposes by 
                        &lt;lnci:cite status="valid"&gt;
                            &lt;lnci:sesslaw&gt;
                                &lt;lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawnum num="s2000_19s"/&gt;
                                    &lt;lnci:hierpinpoint&gt;
                                        &lt;lnci:hierlev label="section" num="2"/&gt;
                                    &lt;/lnci:hierpinpoint&gt;
                                &lt;/lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="SC_SI"/&gt;
                                &lt;/lnci:sesslawref&gt;
                            &lt;/lnci:sesslaw&gt;
                            &lt;lnci:content&gt;SSI 2000/19, art2&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;, as from 25 January 2000 at 1700 hours.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

          </pre>
          </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.info_leg.history.dita  -->
	<xsl:message>leg.info_leg.history.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:history">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
				<primlawhist:primlawhist>
					<primlawhist:histgrp>
						<primlawhist:histitem>
							<xsl:apply-templates select="@* | node()"/>
						</primlawhist:histitem>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
				<primlawhist:primlawhist>
					<primlawhist:histgrp>
						<primlawhist:histitem>
							<xsl:apply-templates select="@* | node()"/>
						</primlawhist:histitem>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:history/p/text">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="@* | node()"/>
							</text>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

</xsl:stylesheet>