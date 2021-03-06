<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelstatus">
  <title>leg:levelstatus <lnpid>id-ST04-26835</lnpid></title>
  <body>
    <section>
		
<p>The conversion for <sourcexml>leg:levelstatus</sourcexml> is based on the following scenarios:
			  
                <ol>
                  <li>If the
							<sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
						with text in that then <b>becomes</b>
						<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/
							legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]</targetxml>
						<note>For handling <b>@ln.user-displayed</b> attribute, refer the general
							markup <xref href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
						<note>Include the <targetxml>@statuscode</targetxml> in element
								<targetxml>legisinfo:status</targetxml> to represent repealed
							legislation.</note>
						<pre>
             <b><i>Source example based on NZ content</i></b>


&lt;leg:level id="1958R38S15H"&gt;
	&lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION REG" subdoc="true" 
	toc-caption="reg 15H Examination of applicant for extension of time"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true" ln.user-displayed="false"&gt;(Repealed)&lt;/leg:levelstatus&gt;
		&lt;/leg:levelinfo&gt;
		....
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

</pre>
						<pre>

              <b><i>Target Example</i></b>
            

&lt;primlaw:level xml:id="1958R38S15H" leveltype="regulation" includeintoc="true" 
	alternatetoccaption="reg 15H Examination of applicant for extension of time"&gt;
		&lt;primlaw:levelinfo&gt;
			&lt;primlawinfo:primlawinfo&gt;
				&lt;legisinfo:legisinfo&gt;
					&lt;legisinfo:statusgroup&gt;
						&lt;legisinfo:status statuscode="repealed"/&gt;
					&lt;/legisinfo:statusgroup&gt;
				&lt;/legisinfo:legisinfo&gt;
			&lt;/primlawinfo:primlawinfo&gt;
		&lt;/primlaw:levelinfo&gt;
		....
&lt;/primlaw:level&gt;

            </pre>
					</li>
              <li>If the
							<sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
						with no text in that then <b>becomes</b>
						<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
							legisinfo:status[@statuscode="repealed"]</targetxml>. <pre>
             <b><i>Source example based on NZ content</i></b>

  
&lt;leg:level id="1996R174-PIII-D1-SD11"&gt;
	&lt;leg:level-vrnt leveltype="subdivision" searchtype="LEGISLATION SUBDIVISION" 
	subdoc="false" toc-caption="Renewal of approvals"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true"&gt;&lt;/leg:levelstatus&gt;
		&lt;/leg:levelinfo&gt;
		....
&lt;/leg:level&gt;

 </pre><pre>
              <b><i>Target Example</i></b>


&lt;primlaw:level xml:id="1996R174-PIII-D1-SD11" leveltype="subdivision" includeintoc="false" 
	alternatetoccaption="Renewal of approvals"&gt;
	&lt;primlaw:levelinfo&gt;
		&lt;primlawinfo:primlawinfo&gt;
			&lt;legisinfo:legisinfo&gt;
				&lt;legisinfo:statusgroup&gt;
				&lt;legisinfo:status statuscode="repealed"/&gt;
				&lt;/legisinfo:statusgroup&gt;
			&lt;/legisinfo:legisinfo&gt;
		&lt;/primlawinfo:primlawinfo&gt;
	&lt;/primlaw:levelinfo&gt;
    ....
&lt;/primlaw:level&gt;

            </pre>
					</li>
                	<li>If the <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml> then suppress the element.</li>
			</ol>
              </p>
    </section> 
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.levelstatus.dita  -->
	<xsl:message>Regulation_leg.levelstatus.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelstatus">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed=&#34;true&#34;]">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:levelinfo/leg:levelstatus[@isrepealed=&#34;true&#34;]">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:levelstatus[@isrepealed=&#34;false&#34;]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>