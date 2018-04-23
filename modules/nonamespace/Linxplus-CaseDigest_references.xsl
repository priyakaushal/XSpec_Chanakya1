<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita casedigest proc ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-CaseDigest_references">
  <title>references <lnpid>id-NZ07DC-23629</lnpid></title>

  <body>
    <p><sourcexml>references</sourcexml> becomes <targetxml>casedigest:body/ref:relatedrefs</targetxml></p>

    <p><sourcexml>@referencetype</sourcexml> becomes
        <targetxml>@referencetype</targetxml></p>

    <p>Create <targetxml>bodytext</targetxml> as a child of
                <targetxml>ref:relatedrefs</targetxml>
            element and wrap <targetxml>p</targetxml>
            element in it.</p>
      
        <pre>
&lt;dig:body&gt;
    &lt;references referencetype="statutes"&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;process-ignore process="kwd"&gt;
                    &lt;emph typestyle="bf"&gt;References to Legislation:&lt;/emph&gt;
                &lt;/process-ignore&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/references&gt;
&lt;/dig:body&gt;

<b>Becomes</b>

&lt;casedigest:body&gt;
    &lt;ref:relatedrefs referencetype="statutes"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="bf"&gt;References to Legislation:&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/bodytext&gt;
    &lt;/ref:relatedrefs&gt;
&lt;/casedigest:body&gt;
        </pre>
      <section>
          <title>Changes</title>
          <p>2013-12-10 <ph id="change_20131210_PS">Updated target example, removed <targetxml>proc:process-ignore</targetxml> element, this change directly affects NZ07-Casedigest.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ07_Linxplus\NZ07DC_Linxplus-CaseDigest\Linxplus-CaseDigest_references.dita  -->
	<!--<xsl:message>Linxplus-CaseDigest_references.xsl requires manual development!</xsl:message> -->

    <xsl:template match="references">
			<ref:relatedrefs>
			    <xsl:if test="./@referencetype">
			    <xsl:attribute name="referencetype">
			        <xsl:value-of select="./@referencetype"/>
			    </xsl:attribute>
			    </xsl:if>
			    <bodytext>
				<xsl:apply-templates select="@* | node()"/>
			    </bodytext>
			</ref:relatedrefs>
    </xsl:template>

	<xsl:template match="@referencetype"/>

</xsl:stylesheet>