<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_abstract-to-LexisAdvance_casedigest.abstract">
  <title>abstract-to-casedigest:abstract <lnpid>id-UK03-27409</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>abstract</sourcexml> becomes <targetxml>casedigest:abstract</targetxml>.
          
          <note>CR - will be created to add <targetxml>casedigest:abstract</targetxml> within <targetxml>casedigest:body</targetxml>.</note>
          
          <note>The source attribute <sourcexml>abstract/@display-name</sourcexml> can be ignored. LBU has indicated the
          standardized headings in the UX samples and will be handled in stylesheets.</note>
          
          The children are converted as follows:
          <ul>
            <li>
              <sourcexml>abstract/p</sourcexml> becomes <targetxml>casedigest:body/casedigest:abstract/p</targetxml>.
<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;abstract display-name="Abstract"&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;Supply of services of employees&amp;#x2014;Appellant sole
          corporate trustee of a charity.&lt;/emph&gt; The Appellant is a company limited by
          guarantee, and has been registered for VAT with effect from 21 April 1978. The
          Appellant acts as a consultative body for sport and recreation. In January 2000
          it employed 26 employees under contracts of employment...&lt;/text&gt;
      &lt;/p&gt;
    &lt;/abstract&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;casedigest:abstract&gt;
      &lt;p&gt;
        &lt;text&gt;
          &lt;emph typestyle="it"&gt;Supply of services of employees&amp;#x2014;Appellant sole
          corporate trustee of a charity.&lt;/emph&gt; The Appellant is a company limited by
          guarantee, and has been registered for VAT with effect from 21 April 1978. The
          Appellant acts as a consultative body for sport and recreation. In January 2000
          it employed 26 employees under contracts of employment...
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/casedigest:abstract&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>  
            </li>
            <li>
              <sourcexml>abstract/pgrp</sourcexml> becomes <targetxml>casedigest:body/casedigest:abstract/pgrp</targetxml>.
            </li> 
          </ul>          
        </li>        
      </ul>     
    </p>
    <section>
      <title>Created</title>
      <p>2012-10-08</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_abstract-to-LexisAdvance_casedigest.abstract.dita  -->
	<xsl:message>Rosetta_abstract-to-LexisAdvance_casedigest.abstract.xsl requires manual development!</xsl:message> 

	<xsl:template match="abstract">

		<!--  Original Target XPath:  casedigest:abstract   -->
		<casedigest:abstract>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:abstract>

	</xsl:template>

	<xsl:template match="abstract/@display-name">

		<!--  Original Target XPath:  casedigest:body/casedigest:abstract/p   -->
		<casedigest:body>
			<casedigest:abstract>
				<p>
					<xsl:apply-templates select="@* | node()"/>
				</p>
			</casedigest:abstract>
		</casedigest:body>

	</xsl:template>

	<xsl:template match="abstract/p">

		<!--  Original Target XPath:  casedigest:body/casedigest:abstract/p   -->
		<casedigest:body>
			<casedigest:abstract>
				<p>
					<xsl:apply-templates select="@* | node()"/>
				</p>
			</casedigest:abstract>
		</casedigest:body>

	</xsl:template>

	<xsl:template match="abstract/pgrp">

		<!--  Original Target XPath:  casedigest:body/casedigest:abstract/pgrp   -->
		<casedigest:body>
			<casedigest:abstract>
				<pgrp>
					<xsl:apply-templates select="@* | node()"/>
				</pgrp>
			</casedigest:abstract>
		</casedigest:body>

	</xsl:template>

</xsl:stylesheet>