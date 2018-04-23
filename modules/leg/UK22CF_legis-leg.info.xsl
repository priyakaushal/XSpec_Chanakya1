<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.info">
  <title><sourcexml>leg:info</sourcexml>
        <lnpid>id-UK22CF-39014</lnpid>
    </title>
  <body>
    <section>
        <p><sourcexml>leg:info</sourcexml> becomes
                    <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>. Attributes
                    <sourcexml>@id</sourcexml>
                <sourcexml>@subseqdoc</sourcexml> will be suppressed from conversion.
                    <note>Conversion should not create adjacent
                        <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be merged into a
                    single instance of <targetxml>primlawinfo:primlawinfo</targetxml>.</note>
                <note>For <sourcexml>leg:info/note</sourcexml></note> becomes
            <targetxml>/primlaw:bodytext/primlaw:excerpt/primlaw:level[@leveltype="unclassified"]/note</targetxml>
            </p>
    </section>
    <example>
            <b>For <sourcexml>leg:info</sourcexml></b>
            <codeblock>
&lt;leg:info&gt;
        &lt;leg:officialname&gt;Double Taxation Relief (Surrender of Relievable Tax Within a Group)
            Regulations&lt;/leg:officialname&gt;
        &lt;leg:officialnum&gt;SI
            2001/1163&lt;leg:year&gt;2001&lt;/leg:year&gt;&lt;leg:seriesnum&gt;1163&lt;/leg:seriesnum&gt;&lt;/leg:officialnum&gt;
        &lt;leg:dates&gt;
            &lt;leg:enactdate&gt;Made &lt;date day="26" month="03" year="2001"&gt;26 March
                2001&lt;/date&gt;&lt;/leg:enactdate&gt;
            &lt;leg:laidline&gt;Laid before the House of Commons &lt;date day="26" month="03" year="2001"&gt;26
                    March 2001&lt;/date&gt;&lt;/leg:laidline&gt;
            &lt;leg:effdate&gt;Coming into force &lt;date day="31" month="03" year="2001"&gt;31 March
                    2001&lt;/date&gt;&lt;/leg:effdate&gt;
        &lt;/leg:dates&gt;
    &lt;/leg:info&gt;

      </codeblock>
            <b>Becomes</b>
            <codeblock>&lt;primlawinfo:primlawinfo&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:names&gt;
                &lt;legisinfo:officialtitle source="editoriallyassigned"&gt;Double Taxation Relief (Surrender of Relievable Tax Within a Group)
                    Regulations&lt;/legisinfo:officialtitle&gt;
            &lt;/legisinfo:names&gt;
        &lt;/legisinfo:legisinfo&gt;
        &lt;primlawinfo:identifier idtype="officialnum"&gt;SI 2001/1163
            &lt;primlawinfo:identifier-component type="seriesnum"&gt;1163&lt;/primlawinfo:identifier-component&gt;
            &lt;primlawinfo:identifier-component type="year"&gt;2001&lt;/primlawinfo:identifier-component&gt;
        &lt;/primlawinfo:identifier&gt;
        &lt;primlawinfo:dates&gt;
            &lt;primlawinfo:enactdate day="26" month="03" year="2001" normdate="2001-03-26"&gt;Made
                &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
            &lt;/primlawinfo:enactdate&gt;
            &lt;primlawinfo:presenteddate day="26" month="03" year="2001" normdate="2001-03-26"&gt;Laid before the House of Commons 
                &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
            &lt;/primlawinfo:presenteddate&gt;
            &lt;primlawinfo:effdate day="31" month="03" year="2001" normdate="2001-03-31"&gt;Coming into force 
                &lt;date-text&gt;31 March 2001&lt;/date-text&gt;
            &lt;/primlawinfo:effdate&gt;
        &lt;/primlawinfo:dates&gt;
    &lt;/primlawinfo:primlawinfo&gt;
     </codeblock>
            <b>For <sourcexml>leg:info/note</sourcexml></b>
            <codeblock>
&lt;bodytext&gt;
    &lt;legfragment&gt;
        &lt;leg:info&gt;
            &lt;leg:officialname&gt;of 19 October 2009 on the common system of...&lt;/leg:officialname&gt;
            .............
            &lt;note notetype="other"&gt;
                &lt;p&gt;
                    &lt;text&gt;(&lt;emph typestyle="bf"&gt;codified version&lt;/emph&gt;)&lt;/text&gt;
                &lt;/p&gt;
            &lt;/note&gt;
        &lt;/leg:info&gt;
    &lt;/legfragment&gt;
&lt;/bodytext&gt;         
         
        </codeblock>
            <b>becomes:</b>
            <codeblock>
&lt;primlaw:bodytext&gt;
    &lt;primlaw:excerpt&gt;
        &lt;primlaw:level leveltype="unclassified"&gt;
            &lt;primlaw:levelinfo&gt;
                &lt;primlawinfo:primlawinfo&gt;
                    &lt;legisinfo:legisinfo&gt;
                        &lt;legisinfo:names&gt;
                            &lt;legisinfo:officialtitle source="editoriallyassigned"&gt;of 19 October 2009
                                on the common system of...&lt;/legisinfo:officialtitle&gt;
                        &lt;/legisinfo:names&gt; ........ &lt;/legisinfo:legisinfo&gt;
                &lt;/primlawinfo:primlawinfo&gt;
            &lt;/primlaw:levelinfo&gt;
            &lt;note notetype="other"&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;(&lt;emph typestyle="bf"&gt;codified version&lt;/emph&gt;)&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;
        &lt;/primlaw:level&gt;
    &lt;/primlaw:excerpt&gt;
&lt;/primlaw:bodytext&gt;           
 </codeblock>
        </example>
    <section>
      <title>Changes</title>
       
      <p>2015-09-19: <ph id="change_20160919_RS">Created</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CF\legis-leg.info.dita  -->
    

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo   -->
		<primlawinfo:primlawinfo>
		    <xsl:choose>
		        <xsl:when test="child::leg:officialnum | child::leg:officialname">
		            <xsl:apply-templates select="@* |node()"/>
		        </xsl:when>
		        <xsl:otherwise>
		            <legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
		                <xsl:if test="child::leg:status">
		                    <xsl:for-each-group select="*" group-adjacent="if(leg:status) then 1 else 0">			           
		                        <xsl:choose>
		                            <xsl:when test="current-grouping-key()=1">
		                                <legisinfo:statusgroup>
		                                    <legisinfo:status>
		                                        <xsl:for-each select="current-group()">
		                                            <xsl:apply-templates select="."/>
		                                        </xsl:for-each>
		                                    </legisinfo:status>
		                                </legisinfo:statusgroup>
		                            </xsl:when>
		                        </xsl:choose>
		                    </xsl:for-each-group>
		                </xsl:if>
		                <xsl:apply-templates select="@* | node()"/>
		            </legisinfo:legisinfo>
		        </xsl:otherwise>
		    </xsl:choose>
		</primlawinfo:primlawinfo>

	</xsl:template>

    <xsl:template match="leg:info/@id"/>
	<xsl:template match="@subseqdoc"/>

	

	<xsl:template match="leg:info/note">

		<!--  Original Target XPath:  /primlaw:bodytext/primlaw:excerpt/primlaw:level[@leveltype="unclassified"]/note   -->
		<primlaw:bodytext xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
			<primlaw:excerpt>
				<primlaw:level>
				    <xsl:attribute name="leveltype">
				        <xsl:text>unclassified</xsl:text>
				    </xsl:attribute>
					<note>
						<xsl:apply-templates select="@* | node()"/>
					</note>
				</primlaw:level>
			</primlaw:excerpt>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>