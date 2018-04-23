<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_GPL_refpt-Chof-deflist_defitem_defterm-LxAdv-deflist_defitem_defterm">
    <title><sourcexml>deflist/defitem/defterm/refpt </sourcexml> to  <targetxml>deflist/defitem/defterm</targetxml> <lnpid>id-CCCC-10344</lnpid></title>
    <body>
        <p><sourcexml>deflist/defitem/defterm/refpt</sourcexml> becomes <targetxml>deflist/defitem/defterm</targetxml></p>
        <section>
            <p><note>As per the LBU discussion, LBU wants to suppress the <sourcexml>refpt</sourcexml> with it's
                    all attribute value from target, when it's child of
                        <sourcexml>deflist/defitem/defterm</sourcexml> .They might retain it in
                    target in future but till the next instrucation we need to suppress
                        <sourcexml>refpt</sourcexml> from target (here, refpt is being dropped
                    because target dictionary source is not available).</note>
                <note>Since <sourcexml>defitem/@id</sourcexml> and <sourcexml>refpt/@id</sourcexml>
                    both have the same value in the documents. For Now we are mapping
                        <sourcexml>defitem/@id</sourcexml> becomes
                        <targetxml>defitem/@xml:id</targetxml> and suppressing
                        <sourcexml>refpt</sourcexml> from target . But in future when LBU would ask
                    to retain <sourcexml>refpt</sourcexml> in that case <sourcexml>refpt</sourcexml>
                    will be retained in target and <sourcexml>defitem/@id</sourcexml> will become
                        <targetxml>defitem</targetxml></note></p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;deflist&gt;
    &lt;defitem id="MAMA_001"&gt;
           &lt;defterm&gt;
            &lt;refpt type="ext" id="MAMA_001"/&gt;&amp;#x201C;precious metals and stones&amp;#x201D;
           &lt;/defterm&gt;
                &lt;defdesc&gt;
                   &lt;p&gt;
                     &lt;text&gt;means gold, silver, diamond, ruby, sapphire and emerald;&lt;/text&gt;
                   &lt;/p&gt;
                &lt;/defdesc&gt;
     &lt;/defitem&gt;
&lt;/deflist&gt;

            </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;deflist&gt;
    &lt;defitem xml:id="MAMA_001"&gt;
        &lt;defterm&gt;
        &amp;#x201C;precious metals and stones&amp;#x201D;
        &lt;/defterm&gt;
        &lt;defdesc&gt;
            &lt;bodytext&gt;
                   &lt;p&gt;
                     &lt;text&gt;means gold, silver, diamond, ruby, sapphire and emerald;&lt;/text&gt;
                   &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/defdesc&gt;     
    &lt;/defitem&gt;
&lt;/deflist&gt;

            </codeblock>
        </example>
 
         <note>If the source XML have the scenario: <sourcexml>p/text/deflist</sourcexml> there is <b>PCDATA</b> in between <sourcexml>text</sourcexml> and
                    <sourcexml>deflist</sourcexml>, then <b>PCDATA</b> will be handled in
                    <targetxml>text</targetxml>  while conversion, and <sourcexml>p/text/deflist</sourcexml>
                <b>becomes</b>
                <targetxml>p/deflist</targetxml>. Please see the example given below.</note>
        <note>If the source XML have the scenario: <sourcexml>p/text/deflist</sourcexml> and
            there is no <b>PCDATA</b> in between <sourcexml>text</sourcexml> and
            <sourcexml>deflist</sourcexml> then drop the <sourcexml>text</sourcexml> from
            target. i.e., <sourcexml>p/text/deflist</sourcexml>
            <b>becomes</b>
            <targetxml>p/deflist</targetxml>.</note> 
                
      <example>
            <title>Source XML p/text/deflist with PCDATA between <sourcexml>text</sourcexml> and <sourcexml>deflist</sourcexml></title>
            <codeblock>

&lt;p&gt;
   &lt;text&gt;
      &lt;emph typestyle="it"&gt;Explanation&lt;/emph&gt;.&amp;#x2014;In this Act, the word
         &lt;deflist&gt;
             &lt;defitem id="SORE_ACT_000001"&gt;
                &lt;defterm&gt;
                  &lt;refpt type="ext" id="SORE_ACT_000001"/&gt;&amp;#x201C;Registrar&amp;#x201D;
                &lt;/defterm&gt;
                &lt;defdesc&gt;
                    &lt;p&gt;
                     &lt;text&gt;means a person appointed as such.....&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/defdesc&gt;
            &lt;/defitem&gt;
       &lt;/deflist&gt;
  &lt;/text&gt;
&lt;/p&gt;
                
</codeblock>
        </example>
        <example>
            <title>Target XML p/text/deflist with PCDATA between <sourcexml>text</sourcexml> and
                    <sourcexml>deflist</sourcexml></title>
            <codeblock>

&lt;p&gt;
   &lt;text&gt;
      &lt;emph typestyle="it"&gt;Explanation&lt;/emph&gt;.&amp;#x2014;In this Act, the word &lt;/text&gt;
         &lt;deflist&gt;
             &lt;defitem xml:id="SORE_ACT_000001"&gt;
                &lt;defterm&gt;
                  &amp;#x201C;Registrar&amp;#x201D;
                &lt;/defterm&gt;
                &lt;defdesc&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                     &lt;text&gt;means a person appointed as such.....&lt;/text&gt;
                    &lt;/p&gt;
                 &lt;/bodytext&gt;
                &lt;/defdesc&gt;
            &lt;/defitem&gt;
       &lt;/deflist&gt;
&lt;/p&gt;

            </codeblock>
        </example>
        
        <example>
            <title>Source XML p/text/deflist with NO PCDATA between <sourcexml>text</sourcexml> and <sourcexml>deflist</sourcexml></title>
            <codeblock>

&lt;p&gt;
   &lt;text&gt;
     &lt;deflist&gt;
        &lt;defitem id="INDD_ACT_000002"&gt;
             &lt;defterm&gt;&lt;refpt type="ext" id="INDD_ACT_000002"/&gt;&amp;#x2018;arbitration proceeding&amp;#x2019;&lt;/defterm&gt;
             &lt;defdesc&gt;
                 &lt;p&gt;
                    &lt;text&gt;means&amp;#x2014;&lt;/text&gt;
                 &lt;/p&gt;
                 &lt;l&gt;
                    &lt;li&gt;
                    &lt;lilabel&gt;&amp;#x0028;&lt;emph typestyle="it"&gt;i&lt;/emph&gt;&amp;#x0029;&lt;/lilabel&gt;
                    &lt;p&gt;
                       &lt;text&gt;any proceeding under Chapter III-A of this Act before an arbitrator, or&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;/li&gt;
                    &lt;li&gt;
                     &lt;lilabel&gt;&amp;#x0028;&lt;emph typestyle="it"&gt;ii&lt;/emph&gt;&amp;#x0029;&lt;/lilabel&gt;
                     &lt;p&gt;
                        &lt;text&gt;any proceeding before an Industrial Tribunal in arbitration;&lt;/text&gt;
                     &lt;/p&gt;
                    &lt;/li&gt;
                 &lt;/l&gt;
            &lt;/defdesc&gt;
        &lt;/defitem&gt;
       &lt;/deflist&gt;
    &lt;/text&gt;
&lt;/p&gt;
                
</codeblock>
        </example>
        <example>
            <title>Target XML p/text/deflist with NO PCDATA between <sourcexml>text</sourcexml> and
                    <sourcexml>deflist</sourcexml></title>
            <codeblock>

&lt;p&gt;
     &lt;deflist&gt;
         &lt;defitem xml:id="INDD_ACT_000002"&gt;
         &lt;defterm&gt;&amp;#x2018;arbitration proceeding&amp;#x2019;&lt;/defterm&gt;
         &lt;defdesc&gt;
            &lt;bodytext&gt;
               &lt;p&gt;
                  &lt;text&gt;means&amp;#x2014;&lt;/text&gt;
               &lt;/p&gt;
               &lt;list&gt;
                   &lt;listitem&gt;
                   &lt;label&gt;&amp;#x0028;&lt;emph typestyle="it"&gt;i&lt;/emph&gt;&amp;#x0029;&lt;/label&gt;
                      &lt;bodytext&gt;
                         &lt;p&gt;
                           &lt;text&gt;any proceeding under Chapter III-A of this Act before an arbitrator, or&lt;/text&gt;
                         &lt;/p&gt;
                      &lt;/bodytext&gt;
                   &lt;/listitem&gt;
                   &lt;listitem&gt;
                        &lt;label&gt;&amp;#x0028;&lt;emph typestyle="it"&gt;ii&lt;/emph&gt;&amp;#x0029;&lt;/label&gt;
                        &lt;bodytext&gt;
                           &lt;p&gt;
                             &lt;text&gt;any proceeding before an Industrial Tribunal in arbitration;&lt;/text&gt;
                           &lt;/p&gt;
                        &lt;/bodytext&gt;
                   &lt;/listitem&gt;
                &lt;/list&gt;
             &lt;/bodytext&gt;
           &lt;/defdesc&gt;
         &lt;/defitem&gt;
    &lt;/deflist&gt;
&lt;/p&gt;

            </codeblock>
        </example>
        
        
        
        
        
        
        <p> If the <sourcexml>defitem</sourcexml> is having bullet numbering list for example:-
            (a),(b),(c)...... or (i),(ii)..... etc. Which can occure after
                <sourcexml>defitem</sourcexml> and before <sourcexml>defterm</sourcexml> element in
            the source documents, then that will be mapped with <targetxml>defitem/label</targetxml>
            in target.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;deflist&gt;
    &lt;defitem&gt;
        &lt;fnr fnrtoken="FN004-R" fntoken="FN004"&gt;1&lt;/fnr&gt;&amp;#x005B;&amp;#x0028;a&amp;#x0029;
        &lt;defterm&gt;&amp;#x201C;Board&amp;#x201D; means&amp;#x2014;&lt;/defterm&gt;
        &lt;defdesc&gt;
            &lt;p&gt;
                &lt;text&gt; .......&lt;/text&gt;
            &lt;/p&gt;
        &lt;/defdesc&gt;
    &lt;/defitem&gt;
    &lt;defitem&gt;&amp;#x0028;b&amp;#x0029;
        &lt;defterm&gt;&amp;#x201C;newspaper&amp;#x201D;&lt;/defterm&gt;
        &lt;defdesc&gt;
            &lt;p&gt;
                &lt;text&gt;........&lt;/text&gt;
            &lt;/p&gt;
        &lt;/defdesc&gt;
    &lt;/defitem&gt;
&lt;/deflist&gt;
                
            </codeblock>
            </example>
                <p>becames</p>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;deflist&gt;
    &lt;defitem&gt;
        &lt;label&gt;
            &lt;footnote-ref anchoridref="FN004"&gt;
                &lt;ref:anchor id="FN004-R"/&gt;
                &lt;label&gt;1&lt;/label&gt;
            &lt;/footnote-ref&gt;
        &amp;#x005B;&amp;#x0028;a&amp;#x0029;
        &lt;/label&gt;
        &lt;defterm&gt;&amp;#x201C;Board&amp;#x201D; means&amp;#x2014;&lt;/defterm&gt;
        &lt;defdesc&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt; .......&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/defdesc&gt;
    &lt;/defitem&gt;
    &lt;defitem&gt;
        &lt;label&gt;&amp;#x0028;b&amp;#x0029;&lt;/label&gt;
        &lt;defterm&gt;&amp;#x201C;newspaper&amp;#x201D;&lt;/defterm&gt;
        &lt;defdesc&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;........&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/defdesc&gt;
    &lt;/defitem&gt;
&lt;/deflist&gt;
                
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-05-23: <ph id="change_2014_05_23">Updated instruction to handle <sourcexml>p/text/deflist</sourcexml>.</ph></p>
        </section>
        
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_GPL_IN_refpt-Chof-deflist_defitem_defterm-LxAdv-deflist_defitem_defterm.dita  -->
	<xsl:message>Rosetta_GPL_IN_refpt-Chof-deflist_defitem_defterm-LxAdv-deflist_defitem_defterm.xsl requires manual development!</xsl:message> 

	<xsl:template match="deflist/defitem/defterm/refpt ">

		<!--  Original Target XPath:  deflist/defitem/defterm   -->
		<deflist>
			<defitem>
				<defterm>
					<xsl:apply-templates select="@* | node()"/>
				</defterm>
			</defitem>
		</deflist>

	</xsl:template>

	<xsl:template match="deflist/defitem/defterm/refpt">

		<!--  Original Target XPath:  deflist/defitem/defterm   -->
		<deflist>
			<defitem>
				<defterm>
					<xsl:apply-templates select="@* | node()"/>
				</defterm>
			</defitem>
		</deflist>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  defitem/@xml:id   -->
		<defitem>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</defitem>

	</xsl:template>

	<xsl:template match="deflist/defitem/defterm">

		<!--  Original Target XPath:  deflist/defitem/defterm   -->
		<deflist>
			<defitem>
				<defterm>
					<xsl:apply-templates select="@* | node()"/>
				</defterm>
			</defitem>
		</deflist>

	</xsl:template>

	<xsl:template match="defitem/@id">

		<!--  Original Target XPath:  defitem/@xml:id   -->
		<defitem>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</defitem>

	</xsl:template>

	<xsl:template match="refpt/@id">

		<!--  Original Target XPath:  defitem/@xml:id   -->
		<defitem>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</defitem>

	</xsl:template>

	<xsl:template match="p/text/deflist">

		<!--  Original Target XPath:  text   -->
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:  text   -->
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>

	</xsl:template>

	<xsl:template match="deflist">

		<!--  Original Target XPath:  text   -->
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>

	</xsl:template>

	<xsl:template match="defitem">

		<!--  Original Target XPath:  text   -->
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>

	</xsl:template>

	<xsl:template match="defterm">

		<!--  Original Target XPath:  defitem/label   -->
		<defitem>
			<label>
				<xsl:apply-templates select="@* | node()"/>
			</label>
		</defitem>

	</xsl:template>

</xsl:stylesheet>