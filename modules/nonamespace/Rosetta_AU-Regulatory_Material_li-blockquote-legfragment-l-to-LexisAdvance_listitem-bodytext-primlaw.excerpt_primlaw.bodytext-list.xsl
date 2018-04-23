<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU-Regulatory_Material_li-blockquote-legfragment-l-to-LexisAdvance_listitem-bodytext-primlaw.excerpt_primlaw.bodytext-list">
  <title>(AU Regulatory Material) <sourcexml>li/blockquote/legfragment/l</sourcexml> to
      <targetxml>listitem/bodytext/primlaw:excerpt/primlaw:bodytext/list</targetxml> <lnpid>id-CCCC-10228</lnpid></title>
  <body>
    <section>
      <p>
        <b>Handling for Regulatory Material: li/blockquote/legfragment/l</b> If
          <sourcexml>legfragment</sourcexml> is the child of <sourcexml>blockquote,</sourcexml>drop
        the blockquote and convert the <b>legfragment </b>to <b>primlaw:excerpt</b>. If the Xpath is
          <b>li/blockquote/legfragment/l</b>, then drop the blockquote and convert to
          '<b>listitem/bodytext/primlaw:excerpt/primlaw:bodytext/list</b>". <note>The above rule
          will be applicable only when the input documents has <b>blockquote</b> within "<b>li</b>"
          and <b>legfragment </b>is the child element of the <b>blockquote</b> and
            <sourcexml>legfragment</sourcexml> is containing <sourcexml>l, deflist</sourcexml> and
            <sourcexml>p</sourcexml>.</note>
        <codeblock>            
        <b>Handling of "li/blockquote/legfragment/l":</b>


&lt;l&gt;
  &lt;li&gt;
    &lt;lilabel&gt;1.&lt;/lilabel&gt;
      &lt;p&gt;&lt;text&gt;subsection 636(1) were modified or varied by inserting the following paragraph after paragraph (b):&lt;/text&gt;&lt;/p&gt;
          &lt;blockquote&gt;
            &lt;legfragment&gt;
              &lt;l&gt;
                &lt;li&gt;
                  &lt;lilabel&gt;"(c)&lt;/lilabel&gt;
                    &lt;p&gt;&lt;text&gt;any differences in the consideration (or an alternative consideration) specified for each share in the offers that are attributable only to the fact that:&lt;/text&gt;&lt;/p&gt;
                    ...
                &lt;/li&gt;
              &lt;/l&gt;
            &lt;/legfragment&gt;
        &lt;/blockquote&gt;
  &lt;/li&gt;
&lt;/l&gt;

      </codeblock>
        <b>Becomes</b>
        <codeblock>

&lt;list&gt;
  &lt;listitem&gt;&lt;label&gt;1.&lt;/label&gt;
    &lt;bodytext&gt;
      &lt;p&gt;&lt;text&gt;subsection 636(1) were modified or varied by inserting the following paragraph after paragraph (b):&lt;/text&gt;&lt;/p&gt;
      &lt;primlaw:excerpt&gt;
        &lt;primlaw:bodytext&gt;
          &lt;list&gt;
            &lt;listitem&gt;&lt;label&gt;"(c)&lt;/label&gt;
              &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;any differences in the consideration (or an alternative consideration) specified for each share in the offers that are attributable only to the fact that:&lt;/text&gt;&lt;/p&gt;
                ...
              &lt;/bodytext&gt;
            &lt;/listitem&gt;
          &lt;/list&gt;
        &lt;/primlaw:bodytext&gt;
      &lt;/primlaw:excerpt&gt;
    &lt;/bodytext&gt;
  &lt;/listitem&gt;
 &lt;/list&gt;
 
</codeblock>
      </p>
    </section>
  </body>
	</dita:topic>

  <!-- Handled in Rosetta_p-blockquote-legfragment-LxAdv-primlaw.excerpt-primlaw.bodytext.xsl -->
	<!--<xsl:template match="blockquote[parent::li][legfragment]">

		<!-\-  Original Target XPath:  listitem/bodytext/primlaw:excerpt/primlaw:bodytext/list   -\->
			<bodytext>
			  <xsl:apply-templates select="@* | node()"/>
			</bodytext>
		

	</xsl:template>

	<xsl:template match="legfragment[parent::blockquote[parent::li]]">

	  <primlaw:excerpt>
	    <primlaw:bodytext>
	      <xsl:apply-templates select="@* | node()"/>
	    </primlaw:bodytext>
	  </primlaw:excerpt>
	</xsl:template>-->


</xsl:stylesheet>