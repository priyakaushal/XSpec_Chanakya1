<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_abstract">
  <title>abstract <lnpid>id-UK11DA-29407</lnpid></title>
  <body>
    <section>
      <p><sourcexml>abstract</sourcexml> becomes
          <targetxml>abstract:body/abstract/bodytext</targetxml>.</p><p>Optional attribute,
          <sourcexml>abstract[@display-name]</sourcexml>, is suppressed.</p></section>
    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;abstract display-name="Abstract"&gt;
    &lt;p&gt;
      &lt;text&gt;This Act amends the...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/abstract&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;abstract&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;This Act amends the...&lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/abstract&gt;
&lt;/abstract:body&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2013-07-01: <ph id="change_20130701_jm">Added rule to suppress
            <sourcexml>@display-name</sourcexml></ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_abstract.dita  -->
<!--	<xsl:message>UK11_DA_abstract.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="abstract">
			<abstract>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</abstract>

	</xsl:template>


  <xsl:template match="abstract/@display-name"/>

</xsl:stylesheet>