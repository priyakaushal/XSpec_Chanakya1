<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.summary">
  <title>cttr:summary <lnpid>id-NZ17CC-25829</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:summary</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">casedigest:facts/casedigest:factsummary</targetxml> and create required child
            <targetxml>bodytext</targetxml>
          <pre xml:space="preserve" class="- topic/pre ">

&lt;cttr:summary&gt;
    &lt;p&gt;
        &lt;text&gt;The plaintiff&amp;rsquo;s sought relief against the defendants under s&amp;nbsp;174 of the
            Companies Act (the Act). The first to fourth defendants applied to strike out the claim
            against them. A number of investors, including the plaintiffs agreed to invest in
            various property projects owned and controlled by the fifth defendant. The seventh
            defendant (BCPP) was incorporated as the vehicle for the investments. Two classes of
            shares were created &amp;mdash; the Group&amp;nbsp;B shares were issued to outside investors.
            Two directors from both classes of shares were appointed. A valid resolution of
            directors of BCPP required a vote of the majority of directors. One of the projects
            involved the purchase of a project from the fifth defendant and his interests,
            .....
       &lt;/text&gt;
    &lt;/p&gt;
&lt;/cttr:summary&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>   

&lt;casedigest:facts&gt;
    &lt;casedigest:factsummary&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;The plaintiff&amp;#2019;s sought relief against the defendants under s&amp;#x00A0;174
                    of the Companies Act (the Act). The first to fourth defendants applied to strike
                    out the claim against them. A number of investors, including the plaintiffs
                    agreed to invest in various property projects owned and controlled by the fifth
                    defendant. The seventh defendant (BCPP) was incorporated as the vehicle for the
                    investments. Two classes of shares were created &amp;#2014; the Group&amp;#x00A0;B
                    shares were issued to outside investors. Two directors from both classes of
                    shares were appointed. A valid resolution of directors of BCPP required a vote
                    of the majority of directors. One of the projects involved the purchase of a
                    project from the fifth defendant and his interests, 
                    ....                
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/casedigest:factsummary&gt;
&lt;/casedigest:facts&gt;</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\cttr.summary.dita  -->
	 

	<xsl:template match="source_cttr:summary">
		<casedigest:facts>
			<casedigest:factsummary>
			    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node()"/>
			    </bodytext>
			</casedigest:factsummary>
		</casedigest:facts>
	</xsl:template>

</xsl:stylesheet>