<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.history">
 <title>leg:history <lnpid>id-ST03-26630</lnpid></title>
 <body>
  <section>
   <p><sourcexml>leg:history</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem</targetxml>.
    <ul>
     <li><sourcexml>leg:history/leg:heading</sourcexml> becomes <targetxml>primlawhist:primlawhist/heading</targetxml></li>
     <li><sourcexml>leg:history/p/text</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml></li>
     <li><sourcexml>leg:history/p/blockquote</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote</targetxml></li>
     <li><sourcexml>leg:history/p/glp:note</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note</targetxml>
      <note>If <sourcexml>glp:note</sourcexml> is the only child of <sourcexml>p</sourcexml> then omit <sourcexml>p</sourcexml> from conversion and generate <targetxml>note</targetxml> but if there is any child of <sourcexml>p</sourcexml> other than <sourcexml>glp:note</sourcexml> then <targetxml>note</targetxml> will become sibling of <targetxml>p</targetxml> in output.</note></li>
    </ul>
    <note>If <sourcexml>leg:history</sourcexml> is the child of <sourcexml>leg:bodytext</sourcexml> then <targetxml>primlawhist:primlawhist</targetxml> will be sibling of <targetxml>primlaw:bodytext</targetxml>.</note>
   </p>
  </section>
  <example>
   <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:info/leg:history</sourcexml></title>
   <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:history&gt;
   &lt;p&gt;&lt;text searchtype="LEGISLATION"&gt;This Act was repealed by the Statute Law Revision Act 1953.&lt;/text&gt;&lt;/p&gt;
  &lt;/leg:history&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

   </codeblock>
   <b>Becomes</b>
   <title>UK TARGET XML 1: Mapping of <sourcexml>leg:info/leg:history</sourcexml></title>
   <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;legisinfo:legisinfo&gt;
   &lt;!-- ETC. --&gt;
   &lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp&gt;
     &lt;primlawhist:histitem&gt;
      &lt;bodytext&gt;
       &lt;p&gt;&lt;text&gt;This Act was repealed by the Statute Law Revision Act 1953.&lt;/text&gt;&lt;/p&gt;
      &lt;/bodytext&gt;
     &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
   &lt;/primlawhist:primlawhist&gt;
  &lt;/legisinfo:legisinfo&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

   </codeblock>
  </example>
  <example>
   <title>CANADA SOURCE XML 2: Mapping of <sourcexml>leg:bodytext/leg:history</sourcexml></title>
   <codeblock>

&lt;leg:bodytext&gt;
 &lt;p&gt;
  &lt;text&gt;18 This Act does not affect or interfere with the right of a person who is not a member of the institute to practise as an accountant in British Columbia, or with the right of a person not residing or having an office in British Columbia to use any designation as accountant in British Columbia.&lt;/text&gt;
 &lt;/p&gt;
 &lt;leg:history&gt;
  &lt;leg:tableofamend&gt;
   &lt;p&gt;
    &lt;text&gt;
     &lt;verbatim verbatimclass="verbatim"&gt;
      &lt;nl/&gt;
      &lt;nl/&gt; ** Editor's Table **&lt;nl/&gt;
      &lt;nl/&gt; Provision Changed by In force Authority&lt;nl/&gt;
      &lt;nl/&gt; 18 2003-67-10 2004 Mar 24 BC Reg 87/04&lt;nl/&gt;
      &lt;nl/&gt; *****
     &lt;/verbatim&gt;
    &lt;/text&gt;
   &lt;/p&gt;
  &lt;/leg:tableofamend&gt;
 &lt;/leg:history&gt;
&lt;/leg:bodytext&gt;

   </codeblock>
   <b>Becomes</b>
   <title>CANADA TARGET XML 2: Mapping of <sourcexml>leg:bodytext/leg:history</sourcexml></title>
   <codeblock>

&lt;primlaw:bodytext&gt;
 &lt;p&gt;
  &lt;text&gt;18 This Act does not affect or interfere with the right of a person who is not a member of the institute to practise as an accountant in British Columbia, or with the right of a person not residing or having an office in British Columbia to use any designation as accountant in British Columbia.&lt;/text&gt;
 &lt;/p&gt;
&lt;/primlaw:bodytext&gt;
&lt;primlawhist:primlawhist&gt;
 &lt;primlawhist:histgrp grptype="tableofamend"&gt;
  &lt;primlawhist:histitem&gt;
   &lt;bodytext&gt;
    &lt;p&gt;
     &lt;text&gt;
      &lt;verbatim verbatimclass="verbatim"&gt;
       &lt;proc:nl/&gt;
       &lt;proc:nl/&gt; ** Editor's Table **&lt;proc:nl/&gt;
       &lt;proc:nl/&gt; Provision Changed by In force Authority&lt;proc:nl/&gt;
       &lt;proc:nl/&gt; 18 2003-67-10 2004 Mar 24 BC Reg 87/04&lt;proc:nl/&gt;
       &lt;proc:nl/&gt; *****
      &lt;/verbatim&gt;
     &lt;/text&gt;
    &lt;/p&gt;
   &lt;/bodytext&gt;
  &lt;/primlawhist:histitem&gt;
 &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
        
      </codeblock>
  </example>
  <example>
   <title>AUSTRALIA SOURCE XML 3: Mapping of <sourcexml>leg:history/heading</sourcexml></title>
   <codeblock>

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
      &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;
      &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
     &lt;/row&gt;
    &lt;/thead&gt;
    &lt;tbody&gt;
     &lt;row&gt;
     &lt;entry colname="c1"&gt;Statute Law (Miscellaneous Provisions) Act (No 2) 1999 No 85&lt;/entry&gt;&lt;entry colname="c2"&gt;3 December 1999&lt;/entry&gt;
     &lt;entry colname="c3"&gt;3 December 1999&lt;/entry&gt;
    &lt;/row&gt;
    &lt;!-- ETC. --&gt;
  &lt;/table&gt;
 &lt;/leg:tableofamend&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:history&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 3: Mapping of <sourcexml>leg:history/heading</sourcexml></title>
   <codeblock>

&lt;primlawhist:primlawhist&gt;
 &lt;heading&gt;
  &lt;title&gt;Table of Amendments&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlawhist:histgrp&gt;
  &lt;primlawhist:histitem&gt;
   &lt;bodytext&gt;
    &lt;p&gt;
     &lt;text&gt;The Evidence (Children) Act 1997 No 143 of 1997 was assented to 17 December 1997. Prior to being repealed by the Criminal Procedure Amendment (Vulnerable Persons) Act 2007 No 6 s 5, with effect from 12 October 2007, the Act had been amended as follows:&lt;/text&gt;
    &lt;/p&gt;
   &lt;/bodytext&gt;
  &lt;/primlawhist:histitem&gt;
 &lt;/primlawhist:histgrp&gt;
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
    &lt;/table&gt;
   &lt;/bodytext&gt;
  &lt;/primlawhist:histitem&gt;
 &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

   </codeblock>
  </example>
  <example>
   <title>AUSTRALIA SOURCE XML 4: Mapping of <sourcexml>leg:history/p/glp:note</sourcexml></title>
   <codeblock>

&lt;leg:history&gt;
 &lt;leg:heading&gt;
  &lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
 &lt;/leg:heading&gt;
 &lt;p&gt;
  &lt;glp:note&gt;
   &lt;h&gt;Editor’s Note:&lt;/h&gt;
   &lt;p&gt;
    &lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt;
   &lt;/p&gt;
  &lt;/glp:note&gt;
 &lt;/p&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:history&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 4: Mapping of <sourcexml>leg:history/p/glp:note</sourcexml></title>
   <codeblock>

&lt;primlawhist:primlawhist&gt;
 &lt;heading&gt;
  &lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlawhist:histgrp&gt;
  &lt;primlawhist:histitem&gt;
   &lt;bodytext&gt;
    &lt;note&gt;
     &lt;h&gt;Editor’s Note:&lt;/h&gt;
     &lt;p&gt;
      &lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt;
     &lt;/p&gt;
    &lt;/note&gt;
   &lt;/bodytext&gt;
   &lt;!-- ETC. --&gt;
  &lt;/primlawhist:histitem&gt;
 &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

   </codeblock>
  </example>
  <section>
    <title>Changes</title>
   <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
   
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.history.dita  -->
	<xsl:message>legis-leg.history.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:history">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/leg:heading">

		<!--  Original Target XPath:  primlawhist:primlawhist/heading   -->
		<primlawhist:primlawhist>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/p/text">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="@* | node()"/>
							</text>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/p/blockquote">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
					 <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<blockquote>
								<xsl:apply-templates select="@* | node()"/>
							</blockquote>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/p/glp:note">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<note>
							<xsl:apply-templates select="@* | node()"/>
						</note>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="glp:note">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:info/leg:history">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:history">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:history/heading">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>