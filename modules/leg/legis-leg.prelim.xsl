<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.prelim">
 <title>leg:prelim <lnpid>id-ST03-26645</lnpid></title>
 <body>
  <section>
   <p><sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml> becomes <targetxml>legis:legis/legis:body/primlaw:prelim</targetxml>; an optional <sourcexml>heading</sourcexml> is converted using the rule below.</p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping of <sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml></title>
   <codeblock>

&lt;leg:prelim&gt;
 &lt;heading&gt;
  &lt;title&gt;Transitional Information&lt;/title&gt;
 &lt;/heading&gt;
 &lt;leg:comntry&gt;
  &lt;level id="ABCE_LEG.SGM_GROUP_1" leveltype="group" toc-caption="Evidence (Consequential and Other Provisions) Act 1995 (NSW)" subdoc="true"&gt;
   &lt;heading searchtype="COMMENTARY"&gt;
    &lt;title&gt;Evidence (Consequential and Other Provisions) Act 1995 (NSW)&lt;/title&gt;
   &lt;/heading&gt;
   &lt;!-- ETC. --&gt;
  &lt;/level&gt;
 &lt;/leg:comntry&gt;
&lt;/leg:prelim&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping of <sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml></title>
   <codeblock>

&lt;primlaw:prelim&gt;
 &lt;heading&gt;
  &lt;title&gt;Transitional Information&lt;/title&gt;
 &lt;/heading&gt;
 &lt;annot:annotations includeintoc="true" alternatetoccaption="Evidence (Consequential and Other Provisions) Act 1995 (NSW)"&gt;
  &lt;annot:annotation-grp xml:id="ABCE_LEG.SGM_GROUP_1"grptype="COMMENTARY"&gt;
   &lt;heading&gt;
    &lt;title&gt;Evidence (Consequential and Other Provisions) Act 1995 (NSW)&lt;/title&gt;
   &lt;/heading&gt;
   &lt;!-- ETC. --&gt;
  &lt;/annot:annotation-grp&gt;
 &lt;/annot:annotations&gt;
&lt;/primlaw:prelim&gt;]

   </codeblock>
  </example>
  <example>
   <title>AUSTRALIA SOURCE XML 2: Mapping of <sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml></title>
   <codeblock>

&lt;leg:prelim&gt;
 &lt;leg:history&gt;
  &lt;leg:heading&gt;
   &lt;title&gt;Table of Amendments&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;p&gt;
   &lt;text&gt;The Evidence (Children) Act 1997 No 143 of 1997 was assented to 17 December 1997. Prior to being repealed by the Criminal Procedure Amendment (Vulnerable Persons) Act 2007 No 6 s 5, with effect from 12 October 2007, the Act had been amended as follows:&lt;/text&gt;
  &lt;/p&gt;
  &lt;leg:tableofamend&gt;
   &lt;table&gt;
    &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
     &lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
     &lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
     &lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
     &lt;thead&gt;
      &lt;row&gt;
       &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
       &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;
       &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
      &lt;/row&gt;
     &lt;/thead&gt;
     &lt;tbody&gt;
      &lt;row&gt;
       &lt;entry colname="c1"&gt;Statute Law (Miscellaneous Provisions) Act (No 2) 1999 No 85&lt;/entry&gt;
       &lt;entry colname="c2"&gt;3 December 1999&lt;/entry&gt;
       &lt;entry colname="c3"&gt;3 December 1999&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ETC. --&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;
  &lt;/leg:tableofamend&gt;
 &lt;/leg:history&gt;
&lt;/leg:prelim&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml></title>
   <codeblock>

&lt;primlaw:prelim&gt;
 &lt;primlawhist:primlawhist&gt;
  &lt;heading&gt;
   &lt;title&gt;Table of Amendments&lt;/title&gt;
  &lt;/heading&gt;
  &lt;legishist:legishist&gt;
   &lt;legishist:actionhist&gt;
    &lt;legishist:action&gt;
     &lt;legishist:actionsummary&gt;The Evidence (Children) Act 1997 No 143 of 1997 was assented to 17 December 1997. Prior to being repealed by the Criminal Procedure Amendment (Vulnerable Persons) Act 2007 No 6 s 5, with effect from 12 October 2007, the Act had been amended as follows:
     &lt;/legishist:actionsummary&gt;
    &lt;/legishist:action&gt;
   &lt;/legishist:actionhist&gt;
  &lt;/legishist:legishist&gt;
  &lt;primlawhist:histgrp grptype="tableofamend"&gt;
   &lt;primlawhist:histitem&gt;
    &lt;bodytext&gt;
     &lt;table&gt;
      &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
       &lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
       &lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
       &lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
       &lt;thead&gt;
        &lt;row&gt;
         &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
         &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;
         &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
        &lt;/row&gt;
       &lt;/thead&gt;
       &lt;tbody&gt;
        &lt;row&gt;
         &lt;entry colname="c1"&gt;Statute Law (Miscellaneous Provisions) Act (No 2) 1999 No 85&lt;/entry&gt;
         &lt;entry colname="c2"&gt;3 December 1999&lt;/entry&gt;
         &lt;entry colname="c3"&gt;3 December 1999&lt;/entry&gt;
        &lt;/row&gt;
        &lt;!-- ETC. --&gt;
       &lt;/tbody&gt;
      &lt;/tgroup&gt;
     &lt;/table&gt;
    &lt;/bodytext&gt;
   &lt;/primlawhist:histitem&gt;
  &lt;/primlawhist:histgrp&gt;
 &lt;/primlawhist:primlawhist&gt;
&lt;/primlaw:prelim&gt;

   </codeblock>
  </example>
  <section>
   <title>Changes</title>
   <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.prelim.dita  -->
	<xsl:message>legis-leg.prelim.xsl requires manual development!</xsl:message> 

	<xsl:template match="LEGDOC/leg:body/leg:prelim">

		<!--  Original Target XPath:  legis:legis/legis:body/primlaw:prelim   -->
		<legis:legis>
			<legis:body>
				<primlaw:prelim xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
					<xsl:apply-templates select="@* | node()"/>
				</primlaw:prelim>
			</legis:body>
		</legis:legis>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>