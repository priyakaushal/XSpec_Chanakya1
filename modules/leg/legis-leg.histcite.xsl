<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.histcite">
 <title>leg:histcite <lnpid>id-ST03-26628</lnpid></title>
  <body>
    <section>
     <p><sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite</sourcexml> becomes <targetxml>/legis:legis/legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]</targetxml>, <sourcexml>leg:histcite[@id]</sourcexml> becomes <targetxml>primlawhist:histgrp[@xml:id]</targetxml>
        <note>Add the attribute value <targetxml>@grptype="histcite"</targetxml> to <targetxml>primlawhist:histgrp</targetxml></note>
       <ul>
        <li><sourcexml>leg:histcite/heading/title</sourcexml> becomes <targetxml>primlawhist:histgrp[@grptype="histcite"]/heading/title</targetxml></li>
        <li>If the source document has scenario <sourcexml>leg:histcite/table</sourcexml> it will be converted using the following rule: <sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite/table</sourcexml> becomes <targetxml>/legis:legis/legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table</targetxml>
         <note>Add the attribute value <targetxml>@grptype="histcite"</targetxml> to <targetxml>primlawhist:histgrp</targetxml></note>
        </li>
       </ul>
      </p>
    </section>
    <example>
      <title>SOURCE XML 1: Mapping of <sourcexml>leg:histcite</sourcexml></title>
      <codeblock>

&lt;leg:info&gt;
 &lt;!-- ETC. --&gt;
 &lt;leg:histcite id="NSW_ACT_2009-1_LAWNOWHISTORICALVERSIONS"&gt;
  &lt;leg:heading&gt;
   &lt;title&gt;&lt;refpt id="NSW_ACT_2009-1_LAWNOWHISTORICALVERSIONS" type="ext"/&gt;Historical Versions&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;table frame="none"&gt;
   &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
    &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
    &lt;tbody&gt;
     &lt;row&gt;
      &lt;entry namest="c1" nameend="c2"&gt;2009&lt;/entry&gt;
     &lt;/row&gt;
     &lt;row&gt;
      &lt;entry colname="c1"&gt;&lt;/entry&gt;
      &lt;entry colname="c2"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0060" docidref="ABCD_1289" refpt="NSW_ACT_2009-1_20090314"&gt;14/3/2009 to 16/7/2009&lt;/remotelink&gt;&lt;/entry&gt;
     &lt;/row&gt;
     &lt;row&gt;
      &lt;entry colname="c1"&gt;&lt;/entry&gt;
      &lt;entry colname="c2"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0060" docidref="ABCD_1289" refpt="NSW_ACT_2009-1_20090313"&gt;13/3/2009 to 13/3/2009&lt;/remotelink&gt;&lt;/entry&gt;
     &lt;/row&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/leg:histcite&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>Becomes</b>
     <title>TARGET XML 1: Mapping of <sourcexml>leg:histcite</sourcexml></title>
      <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;legisinfo:legisinfo&gt;
   &lt;!-- ETC. --&gt;
   &lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp grptype="histcite"&gt;
     &lt;ref:anchor id="NSW_ACT_2009-1_LAWNOWHISTORICALVERSIONS" anchortype="global"/&gt;
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
           &lt;entry namest="c1" nameend="c2"&gt;2009&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
           &lt;entry colname="c1"&gt;&lt;/entry&gt;
           &lt;entry colname="c2"&gt;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
             &lt;ref:content&gt;14/3/2009 to 16/7/2009&lt;/ref:content&gt;
             &lt;ref:locator anchoridref="NSW_ACT_2009-1_20090314"&gt;
              &lt;ref:locator-key&gt;
               &lt;ref:key-name name="DOC-ID"/&gt;
               &lt;ref:key-value value="0060-ABCD_1289"/&gt;
              &lt;/ref:locator-key&gt;
             &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;
           &lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
           &lt;entry colname="c1"&gt;&lt;/entry&gt;
           &lt;entry colname="c2"&gt;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
             &lt;ref:content&gt;13/3/2009 to 13/3/2009&lt;/ref:content&gt;
             &lt;ref:locator anchoridref="NSW_ACT_2009-1_20090313"&gt;
              &lt;ref:locator-key&gt;
               &lt;ref:key-name name="DOC-ID"/&gt;
               &lt;ref:key-value value="0060-ABCD_1289"/&gt;
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
  &lt;/legisinfo:legisinfo&gt;  
  &lt;!-- ETC. --&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;

      </codeblock>
     <note>Refer to <xref href="../../common_newest/Rosetta_refpt-Chof-leg.histcite_heading_title-LxAdv-primlawhist.histgrp_ref.anchor.dita">refpt</xref> for handling of the same.</note>
    </example>
   <section>
    <title>Changes</title>
    <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.histcite.dita  -->
	<xsl:message>legis-leg.histcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="/LEGDOC/leg:body/leg:info/leg:histcite">

		<!--  Original Target XPath:  /legis:legis/legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -->
		<legis:legis xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/">
			<legis:head>
				<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
						<primlawhist:primlawhist>
							<primlawhist:histgrp>
								<xsl:apply-templates select="@* | node()"/>
							</primlawhist:histgrp>
						</primlawhist:primlawhist>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</legis:head>
		</legis:legis>

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

	<xsl:template match="leg:histcite/table">

		<!--  Original Target XPath:  /legis:legis/legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table   -->
		<legis:legis xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/">
			<legis:head>
				<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
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
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</legis:head>
		</legis:legis>

	</xsl:template>

	<xsl:template match="/LEGDOC/leg:body/leg:info/leg:histcite/table">

		<!--  Original Target XPath:  /legis:legis/legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table   -->
		<legis:legis xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/">
			<legis:head>
				<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
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
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</legis:head>
		</legis:legis>

	</xsl:template>

	<xsl:template match="leg:histcite">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>