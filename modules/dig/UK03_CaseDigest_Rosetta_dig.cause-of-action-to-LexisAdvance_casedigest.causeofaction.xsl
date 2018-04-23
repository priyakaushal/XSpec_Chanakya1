<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.cause-of-action-to-LexisAdvance_casedigest.causeofaction">
  <title>dig:cause-of-action-to-casedigest:causeofaction <lnpid>id-UK03-27443</lnpid></title>
  <body>
    <section>
      <p>        
        <sourcexml>dig:cause-of-action</sourcexml> becomes <targetxml>casedigest:causeofaction</targetxml>. 
        The children can be converted as follows:    
      </p>
    </section>
    <section>
      <title>Created</title>
      <p>2015-08-12</p>
    </section>    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.cause-of-action-to-LexisAdvance_casedigest.causeofaction.dita  -->
	 
  <!-- Vikas Rohilla : Template to match the dig:cause-of-action -->
  <xsl:template match="dig:cause-of-action">
        <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

</xsl:stylesheet>