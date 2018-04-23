<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_li_inlineobject-LxAdv-ref.inlineobject">
  <title><sourcexml>inlineobject</sourcexml> child of <sourcexml>li</sourcexml> <lnpid>id-IN06-38022</lnpid></title>
  <body>
    <section>
        <p><sourcexml>l/li/inlineobject</sourcexml> becomes <sourcexml>list/listitem/bodytext/p/text/figure/ref:inlineobject</sourcexml>.
        <note>If any attribute comes with empty value then it should be dropped in target.</note>
        </p>
                    <pre>

&lt;l&gt;
    &lt;li id=""&gt;
        &lt;lilabel&gt;(f)&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Summarized financial position of the company as appearing in the
                    two latest audited balance-sheets&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;inlineobject filename="page_A.1126.jpg" type="image"/&gt;
        ...
    &lt;/li&gt;
&lt;/l&gt;

</pre>
      <p><b>becomes</b></p>
                    <pre>

&lt;list&gt;
    &lt;listitem&gt;
        &lt;label&gt;(f)&lt;/label&gt;
        &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Summarized financial position of the company as appearing in the
                    two latest audited balance-sheets&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;&lt;text&gt;&lt;figure&gt;&lt;ref:inlineobject filename="page_A.1126.jpg" type="image"/&gt;&lt;/figure&gt;&lt;/text&gt;&lt;/p&gt;
        ...
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
&lt;/list&gt;

</pre>
    </section>
    <section>
      <title>Change Log</title>
      <p>2016-07-01: <ph id="change_20160701_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\Rosetta_li_inlineobject-LxAdv-ref.inlineobect.dita  -->
	<xsl:message>Rosetta_li_inlineobject-LxAdv-ref.inlineobect.xsl requires manual development!</xsl:message> 

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="li">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="l/li/inlineobject">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="list/listitem/bodytext/p/text/figure/ref:inlineobject">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>