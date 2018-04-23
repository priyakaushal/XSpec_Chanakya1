<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
  <title>leg:bodytext <lnpid>id-ST04-26812</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>. <pre>
             <b><i>Source example based on CA content</i></b>

&lt;leg:bodytext&gt;
    &lt;p&gt;&lt;text&gt;The Commissioner in Executive Council, under section 7 of the Aboriginal Custom Adoption Recognition
     Act and every enabling power, makes the Aboriginal Custom Adoption Recognition Regulations.&lt;/text&gt;&lt;/p&gt;
&lt;/leg:bodytext&gt;

                
           </pre>
          <pre>
            <b><i>Target Example</i></b>

&lt;primlaw:bodytext&gt;
       &lt;p&gt;&lt;text&gt;The Commissioner in Executive Council, under section 7 of the Aboriginal Custom Adoption Recognition
     Act and every enabling power, makes the Aboriginal Custom Adoption Recognition Regulations.&lt;/text&gt;&lt;/p&gt;
&lt;/primlaw:bodytext&gt;

           </pre></li>
        <li>
          <p>If the input documents are having scenario
              <sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml> then it will becomes
              <targetxml>primlaw:bodytext/h</targetxml>.</p>
          <pre>
             <b><i>Source example based on AU content</i></b>

&lt;leg:levelbody&gt;
  &lt;leg:bodytext&gt;
    &lt;leg:heading&gt;
      &lt;subtitle&gt;Extracts&lt;/subtitle&gt;
    &lt;/leg:heading&gt;
  ....
  &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                
           </pre>
          <pre>
            <b><i>Target Example</i></b>

&lt;primlaw:bodytext&gt;
    &lt;h&gt;Extracts&lt;/h&gt;
&lt;/primlaw:bodytext&gt;

           </pre>
        </li>
        <li><p>The first occurence of <sourcexml>leg:bodytext</sourcexml> becomes
              <targetxml>primlaw:bodytext</targetxml> and after if
              <sourcexml>leg:bodytext</sourcexml> has other <sourcexml>leg:bodytext</sourcexml> or
              <sourcexml>leg:level</sourcexml> as siblings then wrap each of them
              <targetxml>primlaw:level</targetxml> with
              <targetxml>@leveltype="unclassified"</targetxml>.</p>
          <pre>
             <b><i>Source example based on AU content</i></b>

&lt;leg:level id="SA_REG_1995-10_SCHSD2"&gt;
    &lt;leg:level-vrnt subdoc="false" toc-caption="WorkCover Corporation"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                &lt;leg:heading&gt;
                    &lt;title&gt;&lt;refpt id="SA_REG_1995-10_SCHSD2" type="ext"/&gt;WorkCover
                        Corporation&lt;/title&gt;
                &lt;/leg:heading&gt;
            &lt;/leg:bodytext&gt;
            &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                &lt;h&gt;INFORMATION SYSTEMS&lt;/h&gt;
            &lt;/leg:bodytext&gt;
            &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                &lt;h align="center"&gt;SECURITY POLICY&lt;/h&gt;
                &lt;table&gt;
                    &lt;tgroup cols="3"&gt;
                        &lt;colspec colwidth="4*" colname="c1" colnum="1"/&gt;
                        &lt;colspec colwidth="16*" colname="c2" colnum="2"/&gt;
                        &lt;colspec colwidth="9*" colname="c3" colnum="3"/&gt;
                        &lt;tbody&gt;
                            ....
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                
           </pre>
          <pre>
            <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="unclassified" includeintoc="false"
    alternatetoccaption="WorkCover Corporation"&gt;
    &lt;ref:anchor id="SA_REG_1995-10_SCHSD2" anchortype="global"/&gt;
    &lt;primlaw:bodytext&gt;
        &lt;primlaw:level leveltype="unclassified"&gt;
            &lt;heading&gt;
                &lt;title&gt;WorkCover Corporation&lt;/title&gt;
            &lt;/heading&gt;
        &lt;/primlaw:level&gt;
    &lt;/primlaw:bodytext&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:bodytext&gt;
            &lt;h&gt;INFORMATION SYSTEMS&lt;/h&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:bodytext&gt;
            &lt;h align="center"&gt;SECURITY POLICY&lt;/h&gt;
            &lt;table&gt;
                &lt;tgroup cols="3"&gt;
                    &lt;colspec colwidth="4*" colname="c1" colnum="1"/&gt;
                    &lt;colspec colwidth="16*" colname="c2" colnum="2"/&gt;
                    &lt;colspec colwidth="9*" colname="c3" colnum="3"/&gt;
                    &lt;tbody&gt;
                        ....
                    &lt;/tbody&gt;
                &lt;/tgroup&gt;
            &lt;/table&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

          </pre>
          </li>
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.bodytext.dita  -->
	<xsl:message>Regulation_leg.bodytext.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/subtitle">

		<!--  Original Target XPath:  primlaw:bodytext/h   -->
		<primlaw:bodytext>
			<h>
				<xsl:apply-templates select="@* | node()"/>
			</h>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>