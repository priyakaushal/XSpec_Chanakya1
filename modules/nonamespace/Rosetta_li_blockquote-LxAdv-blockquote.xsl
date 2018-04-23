<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_li_blockquote-LxAdv-blockquote">
  <title><sourcexml>blockquote</sourcexml> child of <sourcexml>li</sourcexml> <lnpid>id-IN06-38021</lnpid></title>
  <body>
    <section>
      <p><sourcexml>l/li/blockquote</sourcexml> becomes <sourcexml>list/listitem/bodytext/blockquote</sourcexml>.</p>
                    <pre>

&lt;l&gt;
    &lt;li&gt;
        &lt;lilabel&gt;&amp;#x0028;&lt;emph typestyle="it"&gt;d&lt;/emph&gt;&amp;#x0029;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;In Halsbury&amp;#x2019;s Law of England.&lt;/text&gt;
        &lt;/p&gt;
        &lt;blockquote&gt;
            &lt;p&gt;
                &lt;text&gt;&amp;#x201C;The general rule is that all statutes, other than those which are merely
                    declaratory or which ...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/blockquote&gt;
    &lt;/li&gt;
&lt;/l&gt;

</pre>
      <p><b>becomes</b></p>
                    <pre>

&lt;list&gt;
    &lt;listitem&gt;
        &lt;label&gt;&amp;#x0028;&lt;emph typestyle="it"&gt;d&lt;/emph&gt;&amp;#x0029;&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;In Halsbury&amp;#x2019;s Law of England.&lt;/text&gt;
            &lt;/p&gt;
            &lt;blockquote&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#x201C;The general rule is that all statutes, other than those which are merely
                        declaratory or which ...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/blockquote&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\Rosetta_li_blockquote-LxAdv-blockquote.dita  -->
	<xsl:message>Rosetta_li_blockquote-LxAdv-blockquote.xsl requires manual development!</xsl:message> 

	<xsl:template match="blockquote">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="li">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="l/li/blockquote">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="list/listitem/bodytext/blockquote">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>