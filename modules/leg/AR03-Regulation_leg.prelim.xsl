<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.prelim">
  <title>leg:prelim <lnpid>id-AR03-34820</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:prelim</sourcexml> becomes
          <targetxml>regulation:body/primlaw:level/primlaw:prelim</targetxml> and create
          <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.</p>
      <pre>

&lt;leg:prelim&gt;
    &lt;p&gt;
        &lt;text&gt; VISTO&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:prelim&gt;


<b>Becomes</b>

&lt;regulation:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:prelim&gt;
            &lt;p&gt;
                &lt;text&gt;
                    VISTO 
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:prelim&gt;
    &lt;/primlaw:level&gt;
&lt;/regulation:body&gt;
        </pre>      
    </section>
    <section>
      <title>Changes</title>
      <p>2014-12-05: <ph id="change_20141205_AS">Created</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR03-Regulation\leg.prelim.dita  -->
	<xsl:message>AR03-Regulation_leg.prelim.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:prelim">

		<!--  Original Target XPath:  regulation:body/primlaw:level/primlaw:prelim   -->
		<regulation:body>
			<primlaw:level>
				<primlaw:prelim>
					<xsl:apply-templates select="@* | node()"/>
				</primlaw:prelim>
			</primlaw:level>
		</regulation:body>

	</xsl:template>

</xsl:stylesheet>