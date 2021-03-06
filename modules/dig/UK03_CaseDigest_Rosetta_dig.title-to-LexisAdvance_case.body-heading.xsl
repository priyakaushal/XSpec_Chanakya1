<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.title-to-LexisAdvance_case.body-heading">
  <title>dig:title-to-case:body/heading <lnpid>id-UK03-27450</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>dig:title</sourcexml> becomes <targetxml>casedigest:body/heading/title</targetxml>.
          The child element <sourcexml>dig:title/emph</sourcexml> is omitted and the content is maintained within 
          <targetxml>casedigest:body/heading/title</targetxml>.
          
<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;dig:title&gt;
        &lt;emph typestyle="bf"&gt;Terms of employment&lt;/emph&gt;
      &lt;/dig:title&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;heading&gt;
      &lt;title&gt;Terms of employment&lt;/title&gt;
    &lt;/heading&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>   
          
        </li>
      </ul>
    </p>
    <section>
      <title>Created</title>
      <p>2015-08-12</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.title-to-LexisAdvance_case.body-heading.dita  -->
	 
  <!--Vikas Rohilla : Template to match the dig:title-->
	<xsl:template match="dig:title">
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
	</xsl:template>

</xsl:stylesheet>