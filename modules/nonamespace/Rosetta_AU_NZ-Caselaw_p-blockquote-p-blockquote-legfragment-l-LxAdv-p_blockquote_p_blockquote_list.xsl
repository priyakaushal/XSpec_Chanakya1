<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU-Caselaw_p-blockquote-p-blockquote-legfragment-l-to-LexisAdvance_p_blockquote_p_blockquote_list">
  <title>(AU/NZ Caselaw) <sourcexml>p/blockquote/p/blockquote/legfragment/l</sourcexml> to
      <targetxml>p/blockquote/p/blockquote/list</targetxml> <lnpid>id-CCCC-10240</lnpid></title>
  <body>
    <section>
      <p>
        <b>Handling for Case Law: p/blockquote/p/blockquote/legfragment/l</b> If
        <sourcexml>legfragment</sourcexml> is the child of <sourcexml>blockquote</sourcexml> and
        input Xpath has nested blockquotes i.e.,
        <sourcexml>p/blockquote/p/blockquote/legfragment/l</sourcexml> then conversion need to
        omit <sourcexml>legfragment</sourcexml> and convert <sourcexml>l</sourcexml> as an
        immediate child of <targetxml>blockquote</targetxml> i.e.,
        <sourcexml>p/blockquote/p/blockquote/legfragment/l</sourcexml> will become
        <targetxml>p/blockquote/p/blockquote/list</targetxml>. 
        <note>The above rule will be
          applicable only when the input documents has nested blockquotes and if legfragment is
          the child element of one of the blockquote and <sourcexml>legfragment</sourcexml> is
          followed by <sourcexml>p</sourcexml>.</note>
        <codeblock>            
        <b>Handling of p/blockquote/p/blockquote/legfragment/l:</b>

&lt;p&gt;
  &lt;blockquote&gt;
    &lt;p indent="none"&gt;
      &lt;text&gt;There is nothing contrary to the values embodied in our legal system in recognising that a person exercising the right to use a public highway by driving a motor vehicle does so on condition. He or she may fairly be required to submit to occasional checks to ensure that unlawful danger to other road users is not being created. Section 66 imposes certain duties on users of vehicles:&lt;/text&gt;
      &lt;blockquote&gt;
        &lt;legfragment&gt;
          &lt;l&gt;
            &lt;li&gt;
              &lt;lilabel&gt;
                &lt;emph typestyle="bf"&gt;&amp;#x201c;66.&lt;/emph&gt;
              &lt;/lilabel&gt;                
              &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="bf"&gt;On demand by constable or traffic officer, user of vehicle to stop and give name and address&lt;/emph&gt; &amp;#x2014; (1) The user of a vehicle shall stop at the request or signal of a constable or traffic officer in uniform or of a traffic officer who is wearing a cap, hat, or helmet which identifies him as a traffic officer, and on demand give him his name and address and state whether or not he is the owner of the vehicle, and, if he is not the owner of the vehicle, shall also give the name and address of the owner.&lt;/text&gt;
              &lt;/p&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;lilabel&gt;(2)&lt;/lilabel&gt;
              &lt;p&gt;
                &lt;text&gt;Any person commits an offence who fails to comply with any provision of subsection (1) of this section, and may be arrested by any constable without warrant.&amp;#x201d;&lt;/text&gt;
              &lt;/p&gt;
            &lt;/li&gt;
          &lt;/l&gt;
        &lt;/legfragment&gt;
      &lt;/blockquote&gt;
    &lt;/p&gt;
    ...
  &lt;/blockquote&gt;
  ...
&lt;/p&gt;

      </codeblock>
        <b>Becomes</b>
        <codeblock>

&lt;p&gt;
  &lt;blockquote&gt;
    &lt;p indent="none"&gt;
      &lt;text&gt;There is nothing contrary to the values embodied in our legal system in recognising that a person exercising the right to use a public highway by driving a motor vehicle does so on condition. He or she may fairly be required to submit to occasional checks to ensure that unlawful danger to other road users is not being created. Section 66 imposes certain duties on users of vehicles:&lt;/text&gt;
      &lt;blockquote&gt;
        &lt;list&gt;
          &lt;listitem&gt;
            &lt;label&gt;
              &lt;emph typestyle="bf"&gt;&amp;#x201c;66.&lt;/emph&gt;
                          &lt;/label&gt;
            &lt;bodytext&gt;
              &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="bf"&gt;On demand by constable or traffic officer, user of vehicle to stop and give name and address&lt;/emph&gt; &amp;#x2014; (1) The user of a vehicle shall stop at the request or signal of a constable or traffic officer in uniform or of a traffic officer who is wearing a cap, hat, or helmet which identifies him as a traffic officer, and on demand give him his name and address and state whether or not he is the owner of the vehicle, and, if he is not the owner of the vehicle, shall also give the name and address of the owner.&lt;/text&gt;
              &lt;/p&gt;
            &lt;/bodytext&gt;
          &lt;/listitem&gt;
          &lt;listitem&gt;
            &lt;label&gt;(2)&lt;/label&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;Any person commits an offence who fails to comply with any provision of subsection (1) of this section, and may be arrested by any constable without warrant.&amp;#x201d;&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
          &lt;/listitem&gt;
        &lt;/list&gt;
      &lt;/blockquote&gt;
    &lt;/p&gt;
    ...
  &lt;/blockquote&gt;
  ...
&lt;/p&gt;
 
</codeblock>
      </p>
    </section>
    
    <section>
      <title>Changes</title>
      <p>2013-10-24: <ph id="change_20131024_PS">Rename this DITA as this rule is applicable for NZ Cases also. Webteam #: 242964.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_AU_NZ-Caselaw_p-blockquote-p-blockquote-legfragment-l-LxAdv-p_blockquote_p_blockquote_list.dita  -->
	<xsl:message>Rosetta_AU_NZ-Caselaw_p-blockquote-p-blockquote-legfragment-l-LxAdv-p_blockquote_p_blockquote_list.xsl requires manual development!</xsl:message> 

	<xsl:template match="p/blockquote/p/blockquote/legfragment/l">

		<!--  Original Target XPath:  p/blockquote/p/blockquote/list   -->
	  <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<blockquote>
				<p>
					<blockquote>
						<list>
							<xsl:apply-templates select="@* | node()"/>
						</list>
					</blockquote>
				</p>
			</blockquote>
		</p>

	</xsl:template>

	<xsl:template match="legfragment">

		<!--  Original Target XPath:  blockquote   -->
		<blockquote>
			<xsl:apply-templates select="@* | node()"/>
		</blockquote>

	</xsl:template>

	<xsl:template match="blockquote">

		<!--  Original Target XPath:  blockquote   -->
	  <blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</blockquote>

	</xsl:template>

	<xsl:template match="l">

		<!--  Original Target XPath:  blockquote   -->
		<blockquote>
			<xsl:apply-templates select="@* | node()"/>
		</blockquote>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>