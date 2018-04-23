<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:comm="http://www.lexis-nexis.com/glp/comm"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_form_bodytext_p-to-LexisAdvance_form.p">
 <title><sourcexml>form/bodytext/p</sourcexml> to <targetxml>form:p</targetxml> <lnpid>id-CCCC-10325</lnpid></title>
 <body>
  <section>
      <p>If <sourcexml>p</sourcexml> comes within <sourcexml>/COMMENTARYDOC/comm:body/level/level/bodytext/form/bodytext/p</sourcexml> then
                <sourcexml>p</sourcexml> becomes <targetxml>form:p</targetxml>. And if <sourcexml>@indent</sourcexml> occurred into the <sourcexml>p</sourcexml>
                then <sourcexml>@indent</sourcexml> becomes <targetxml>@indent</targetxml> and populated as follows:</p>
                </section>
    <example>
        <title>Source XML</title>
                <codeblock>
                    
                    &lt;form&gt;
                    &lt;bodytext searchtype="FORM"&gt;
                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;THIS AGREEMENT&lt;/emph&gt; is made on&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; 2010&lt;/text&gt;&lt;/p&gt;
                    .......
                    .......
                    &lt;h align="center"&gt;1.&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; The Independent Expert has been appointed by the parties under clause .. of the Agreement to assist in resolving the dispute or to resolve the dispute by determining the meaning of clause &amp;hellip;&amp;#160; of
                    the Agreement and also to determine which party or parties should pay the costs of and incidental to the resolution of the dispute.&lt;/h&gt;
                    &lt;h align="center"&gt;2.&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; The Independent Expert has accepted the appointment, and will assist in determining or will determine the dispute in accordance with the terms of this agreement.&lt;/h&gt;
                    ........
                    ........
                    &lt;h align="center"&gt;&amp;#160;&lt;/h&gt;
                    &lt;/bodytext&gt;
                    &lt;/form&gt;
                    
                </codeblock>
                <b>Becomes</b>
                <codeblock>
                    
                    &lt;form:form&gt;
                    &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                    &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                    &lt;form:text&gt;&lt;emph typestyle="bf"&gt;THIS AGREEMENT&lt;/emph&gt; is made on&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0; 2010&lt;/form:text&gt;&lt;/form:p&gt;
                    ......
                    ......
                    &lt;form:h align="center"&gt;1.&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;The Independent Expert has been appointed by the parties under clause .. of the Agreement to assist in resolving the
                    dispute or to resolve the dispute by determining the meaning of clause &amp;#x2026;&amp;#x00A0;� of the Agreement and also to determine which party or parties should pay the costs of and
                    incidental to the resolution of the dispute.&lt;/form:h&gt;
                    &lt;form:h align="center"&gt;2.&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;The Independent Expert has accepted the appointment, and will assist in determining or will determine the dispute in accordance with the terms of this agreement.&lt;/form:h&gt;
                    ......
                    ......
                    &lt;form:h align="center"&gt;&amp;#x00A0;&lt;/form:h&gt;
                    &lt;/form:bodytext&gt;
                    &lt;/form:document&gt;
                    &lt;/form:form&gt;
                    
                </codeblock>
      </example>
  <section>
   <title>Changes</title>
  </section>
 </body>
	</dita:topic>

    <xsl:template match="p[(parent::blockquote|parent::bodytext)[not(ancestor::fnbody)][ancestor::form[ancestor::COMMENTARYDOC]]]">
		<!--  Original Target XPath:  form:p   -->
		<form:p>
			<xsl:apply-templates select="@* | node()"/>
		</form:p>

	</xsl:template>

    <xsl:template match="p[$streamID=('UK14', 'UK12')][(parent::blockquote)[ancestor::form[ancestor::COMMENTARYDOC]]]" priority="2">
        <!-- WPK: form:p is not schema valid within blockquote -->
        <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </p>
        
    </xsl:template>
    
	
	<xsl:template match="@indent">

		<!--  Original Target XPath:  @indent   -->
		<xsl:attribute name="indent">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>