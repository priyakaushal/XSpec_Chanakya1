<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0"
	exclude-result-prefixes="dita docinfo">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.currencydate">
    <title>docinfo:versioninfo <lnpid>id-CA07-14032</lnpid></title>
  <body>
    <section>
	   <p>Summary: If <sourcexml>docinfo:versioninfo/docinfo:enddate</sourcexml> exists, then target <targetxml>@statuscode="historical"</targetxml>,
	   otherwise <targetxml>@statuscode="consolidated"</targetxml>. Thus documents with no <sourcexml>docinfo:versioninfo</sourcexml>, or empty <sourcexml>docinfo:versioninfo</sourcexml> are considered "consolidated".</p>
   <p>If input document is having the <sourcexml>docinfo:versioninfo/docinfo:startdate</sourcexml> but no
                    <sourcexml>docinfo:enddate</sourcexml> (or no <sourcexml>docinfo:versioninfo</sourcexml>) then create
                    <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="consolidated"]</targetxml>
                (Generate this markup under the first <targetxml>primlaw:level</targetxml> inside
                the <targetxml>*:body</targetxml> of the target document). Refer the below input
                and target example:</p> 
   </section>
    <example>
            <title>Mapping of <sourcexml>docinfo:versioninfo</sourcexml> with
                    <sourcexml>docinfo:startdate</sourcexml> and no
                    <sourcexml>docinfo:enddate</sourcexml></title>
            <codeblock>

&lt;docinfo:versioninfo hasotherversions="true"&gt;
    &lt;docinfo:startdate month="04" day="10" year="2007"/&gt;
    &lt;!-- If document is not having docinfo:enddate markup--&gt;
&lt;/docinfo:versioninfo&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:levelinfo&gt;
      &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                  &lt;legisinfo:statusgroup&gt;
                        &lt;legisinfo:status statuscode="consolidated"&gt;
                              &lt;legisinfo:statustext&gt;Effective from 10-04-2007&lt;/legisinfo:statustext&gt;
                        &lt;/legisinfo:status&gt;
                  &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
      &lt;/primlawinfo:primlawinfo&gt;
&lt;/primlaw:levelinfo&gt;


        </codeblock>
        </example>
      
      <section>
          <p>If input document is having the <sourcexml>docinfo:versioninfo</sourcexml> with both child
              elements <sourcexml>docinfo:startdate</sourcexml> and 
              <sourcexml>docinfo:enddate</sourcexml> then it converted as
              <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="historical"]</targetxml>
              (Generate this markup under the first <targetxml>primlaw:level</targetxml> inside
              the <targetxml>*:body</targetxml> of the target document). Refer the below input
              and target example:</p> 
      </section>
      <example>
          <title>Mapping of <sourcexml>docinfo:versioninfo</sourcexml> with both child
              elements <sourcexml>docinfo:startdate</sourcexml> and 
              <sourcexml>docinfo:enddate</sourcexml></title>
          <codeblock>

&lt;docinfo:versioninfo hasotherversions="true"&gt;
    &lt;docinfo:startdate month="04" day="1" year="2005"/&gt;
    &lt;docinfo:enddate month="02" day="28" year="2007"/&gt;
&lt;/docinfo:versioninfo&gt;

      </codeblock>
          <b>becomes</b>
          <codeblock>

&lt;primlaw:levelinfo&gt;
      &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                  &lt;legisinfo:statusgroup&gt;
                        &lt;legisinfo:status statuscode="historical"&gt;
                              &lt;legisinfo:statustext&gt;Effective from 01-04-2005 to 28-02-2007&lt;/legisinfo:statustext&gt;
                        &lt;/legisinfo:status&gt;
                  &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
      &lt;/primlawinfo:primlawinfo&gt;
&lt;/primlaw:levelinfo&gt;

        </codeblock>
      </example>
   
      <section>
          <title>Changes</title>
          <p>2015-02-13: <ph id="change_20150213_SEP">Create the rule and example for handling of <sourcexml>docinfo:versioninfo</sourcexml></ph>.</p>
      </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\docinfo.versioninfo.dita  -->
	
	<xsl:template match="docinfo:versioninfo">
		<xsl:choose>
			<xsl:when test="child::docinfo:enddate">
				<primlaw:levelinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo>
							<legisinfo:statusgroup>
								<legisinfo:status>
									<xsl:attribute name="statuscode">
										<xsl:text>historical</xsl:text>
									</xsl:attribute>
									<legisinfo:statustext>
										<xsl:text>Effective </xsl:text>
										<xsl:choose>
											<xsl:when
												test="string-length(child::docinfo:startdate/@day) = 1">
												<xsl:text>0</xsl:text>
												<xsl:value-of select="child::docinfo:startdate/@day"
												/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="child::docinfo:startdate/@day"
												/>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:text>-</xsl:text>
										<xsl:choose>
											<xsl:when
												test="string-length(child::docinfo:startdate/@month) = 1">
												<xsl:text>0</xsl:text>
												<xsl:value-of
													select="child::docinfo:startdate/@month"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of
													select="child::docinfo:startdate/@month"/>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:text>-</xsl:text>
										<xsl:value-of select="child::docinfo:startdate/@year"/>
										<xsl:text> to </xsl:text>
										<xsl:choose>
											<xsl:when
												test="string-length(child::docinfo:enddate/@day) = 1">
												<xsl:text>0</xsl:text>
												<xsl:value-of select="child::docinfo:enddate/@day"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="child::docinfo:enddate/@day"/>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:text>-</xsl:text>
										<xsl:choose>
											<xsl:when
												test="string-length(child::docinfo:enddate/@month) = 1">
												<xsl:text>0</xsl:text>
												<xsl:value-of select="child::docinfo:enddate/@month"
												/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="child::docinfo:enddate/@month"
												/>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:text>-</xsl:text>
										<xsl:value-of select="child::docinfo:enddate/@year"/>
									</legisinfo:statustext>
								</legisinfo:status>
							</legisinfo:statusgroup>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</primlaw:levelinfo>
			</xsl:when>
			<xsl:when test="not(descendant::*) or not(descendant::text())"/>
			
			
			<xsl:otherwise>
				<primlaw:levelinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo>
							<legisinfo:statusgroup>
								<legisinfo:status>
									<xsl:attribute name="statuscode">
										<xsl:text>consolidated</xsl:text>
									</xsl:attribute>
									<legisinfo:statustext>
										<xsl:text>Effective </xsl:text>
										<xsl:choose>
											<xsl:when
												test="string-length(child::docinfo:startdate/@day) = 1">
												<xsl:text>0</xsl:text>
												<xsl:value-of select="child::docinfo:startdate/@day"
												/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="child::docinfo:startdate/@day"
												/>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:text>-</xsl:text>
										<xsl:choose>
											<xsl:when
												test="string-length(child::docinfo:startdate/@month) = 1">
												<xsl:text>0</xsl:text>
												<xsl:value-of
													select="child::docinfo:startdate/@month"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of
													select="child::docinfo:startdate/@month"/>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:text>-</xsl:text>
										<xsl:value-of select="child::docinfo:startdate/@year"/>
									</legisinfo:statustext>
								</legisinfo:status>
							</legisinfo:statusgroup>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</primlaw:levelinfo>
			</xsl:otherwise>
		</xsl:choose>
		<!--  Original Target XPath:  @statuscode="historical"   -->
		
		
	</xsl:template>

</xsl:stylesheet>