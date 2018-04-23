<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info_leg.histcite">
   <title>leg:info/leg:histcite <lnpid>id-ST04-26826</lnpid></title>
   <body>
      <section>
          <p>If <sourcexml>leg:histcite</sourcexml> comes within
                    <sourcexml>leg:body/leg:info</sourcexml> then it becomes
                    <targetxml>primlaw:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]</targetxml>
                with attribute <sourcexml>leg:histcite[@id]</sourcexml> Becomes
                    <targetxml>primlawhist:histgrp[@xml:id]</targetxml> which is populated as
                follows:</p>
          <note>Add the attribute value <targetxml>@grptype="histcite"</targetxml> to <targetxml>primlawhist:histgrp</targetxml>.</note>
          

           <pre>
               <b><i>Source example based on AU content</i></b>

&lt;leg:histcite id="ACT_REG_1991-10_HISTORICALVERSIONS"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_HISTORICALVERSIONS" type="ext"/&gt; Historical Versions&lt;/title&gt;
    &lt;/leg:heading&gt;
    ....
&lt;/leg:histcite&gt;

</pre>
<pre>
                         <b><i>Target Example</i></b>


&lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp grptype="histcite"&gt;
        &lt;ref:anchor id="ACT_REG_1991-10_HISTORICALVERSIONS" anchortype="global"/&gt;
            &lt;heading&gt;
                &lt;title&gt;Historical Versions&lt;/title&gt;
            &lt;/heading&gt;
            ....
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

</pre>
          <p>If document is having scenario <sourcexml>leg:histcite/heading/title</sourcexml> then it becomes <targetxml>primlawhist:histgrp[@grptype="histcite"]/heading/title</targetxml></p>
          <p>If the source document has scenario leg:histcite/table it will be converted using the following rule:
          <ul>
              <li><sourcexml>leg:body/leg:info/leg:histcite/table</sourcexml> Becomes
                            <targetxml>regulation:body/primlaw:level[@leveltype="unclassified"]/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table</targetxml>. <pre>
               <b><i>Source example based on AU content</i></b>

&lt;leg:histcite id="ACT_REG_1991-10_HISTORICALVERSIONS"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_HISTORICALVERSIONS" type="ext"/
            &gt;Historical
            Versions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;table frame="none"&gt;
        &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
            &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
            &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
            &lt;tbody&gt;
                &lt;row&gt;
                    &lt;entry colname="c1"&gt;&lt;/entry&gt;
                    &lt;entry colname="c2"&gt;&lt;remotelink service="DOC-ID"
                        docidref="ABCD_9876" remotekey1="REFPTID"
                        dpsi="03AF" refpt="ACT_REG_1991-10_20040805"&gt;5/8/2004 to
                        22/11/2007
                    &lt;/remotelink&gt;&lt;/entry&gt;
                &lt;/row&gt;
            &lt;/tbody&gt;
        &lt;/tgroup&gt;
    &lt;/table&gt;
&lt;/leg:histcite&gt;

</pre>
                        <pre>
                         <b><i>Target Example</i></b>


&lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp grptype="histcite"&gt;
        &lt;ref:anchor id="ACT_REG_1991-10_HISTORICALVERSIONS"
            anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;Historical Versions&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;table frame="none"&gt;
                    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                        &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
                        &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                        &lt;tbody&gt;
                            &lt;row&gt;
                                &lt;entry colname="c1"&gt;&lt;/entry&gt;
                                &lt;entry colname="c2"&gt;
                                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;5/8/2004 to 22/11/2007&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="ACT_REG_1991-10_20040805"&gt;
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="DOC-ID"/&gt;
                                                &lt;ref:key-value value="03AF-ABCD_9876"/&gt;
                                            &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;
                                &lt;/entry&gt;
                            &lt;/row&gt;
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

</pre>
                        <note>The value for attribute
                                <targetxml>primlaw:level[@leveltype]</targetxml> will be set as
                                <targetxml>@leveltype='unclassified'</targetxml>.</note>
                    </li>
          </ul>
          </p>
          </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.info_leg.histcite.dita  -->
	<xsl:message>leg.info_leg.histcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:histcite">

		<!--  Original Target XPath:  primlaw:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -->
		<primlaw:body>
			<primlaw:level>
				<primlawhist:primlawhist>
					<primlawhist:histgrp>
						<xsl:apply-templates select="@* | node()"/>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</primlaw:level>
		</primlaw:body>

	</xsl:template>

	<xsl:template match="leg:body/leg:info">

		<!--  Original Target XPath:  primlaw:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -->
		<primlaw:body>
			<primlaw:level>
				<primlawhist:primlawhist>
					<primlawhist:histgrp>
						<xsl:apply-templates select="@* | node()"/>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</primlaw:level>
		</primlaw:body>

	</xsl:template>

	<xsl:template match="leg:histcite[@id]">

		<!--  Original Target XPath:  primlawhist:histgrp[@xml:id]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="leg:histcite/heading/title">

		<!--  Original Target XPath:  primlawhist:histgrp[@grptype="histcite"]/heading/title   -->
		<primlawhist:histgrp>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="leg:body/leg:info/leg:histcite/table">

		<!--  Original Target XPath:  regulation:body/primlaw:level[@leveltype="unclassified"]/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table   -->
		<regulation:body>
			<primlaw:level>
				<primlawhist:primlawhist>
					<primlawhist:histgrp>
						<primlawhist:histitem>
							<bodytext>
								<table>
									<xsl:apply-templates select="@* | node()"/>
								</table>
							</bodytext>
						</primlawhist:histitem>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</primlaw:level>
		</regulation:body>

	</xsl:template>

</xsl:stylesheet>