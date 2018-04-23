<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.prelim">
  <title>leg:prelim <lnpid>id-ST04-26844</lnpid></title>
  <body>
    <section>
		<ul>
		  <li><sourcexml>leg:body/leg:prelim</sourcexml>
          <b>becomes</b>
          <targetxml>regulation:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim</targetxml>;
          an optional child elements and using converted rule below: <ul>
            <li><sourcexml>heading</sourcexml>
              <b>becomes</b>
              <targetxml>heading</targetxml></li>
            <li><sourcexml>title</sourcexml>
              <b>becomes</b>
              <targetxml>title</targetxml></li>
          </ul>
          <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:prelim&gt;
	&lt;heading&gt;
		&lt;title&gt;Author's Note&lt;/title&gt;
	&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
	...
&lt;/leg:prelim&gt;


</pre>
          <pre>

              <b><i>Target Example</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;primlaw:prelim&gt;
			&lt;heading&gt;
				&lt;title&gt;Author's Note&lt;/title&gt;
			&lt;/heading&gt;
			&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
			...
	&lt;/primlaw:prelim&gt;
&lt;/primlaw:level&gt;


            </pre>
        </li>
		  
		  <li><sourcexml>leg:prelim/leg:history</sourcexml>
		    <b>becomes</b>
		    <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist</targetxml>
		    with optional child elements and is using converted rule below: <ul>
		      <li><sourcexml>leg:heading</sourcexml>
		        <b>becomes</b>
		        <targetxml>heading</targetxml></li>
		      <li><sourcexml>title</sourcexml>
		        <b>becomes</b>
		        <targetxml>title</targetxml></li>
		    </ul>
		    <pre>
                <b><i>Source example based on AU content</i></b>

&lt;leg:prelim&gt;
	&lt;heading&gt;&lt;title&gt;Author's Note&lt;/title&gt;&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
	&lt;leg:history&gt;
		&lt;leg:heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;Extracts of Rules of the Supreme Court 1971, commenced on 14 February 1972, as amended by:&lt;/text&gt;&lt;/p&gt;
		&lt;leg:tableofamend&gt;
			&lt;table&gt;
				&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
				&lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
				&lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
				&lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
				&lt;thead&gt;
				&lt;row&gt;
				&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
				&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Gazette&lt;/emph&gt;&lt;/entry&gt;
				&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
				&lt;/row&gt;
				&lt;/thead&gt;
				&lt;tbody&gt;
				&lt;row&gt;
				&lt;entry colname="c1"&gt;Supreme Court Amendment Rules (No 2) 2002&lt;/entry&gt;
				&lt;entry colname="c2"&gt;Gaz 175 of 27 September 2002&lt;/entry&gt;
				&lt;entry colname="c3"&gt;27 September 2002&lt;/entry&gt;
				&lt;/row&gt;
				&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/leg:tableofamend&gt;
	&lt;/leg:history&gt;
&lt;/leg:prelim&gt;



</pre>
		    <pre>
              <b><i>Target Example</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;primlaw:prelim&gt;
		&lt;heading&gt;
			&lt;title&gt;Author's Note&lt;/title&gt;
		&lt;/heading&gt;
		&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
		&lt;primlawhist:primlawhist&gt;
			&lt;heading&gt;
				&lt;title&gt;Table of Amendments&lt;/title&gt;
			&lt;/heading&gt;
			&lt;primlawhist:histgrp&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;p&gt;&lt;text&gt;Extracts of Rules of the Supreme Court 1971, commenced on 14 February 1972, as amended by:&lt;/text&gt;&lt;/p&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
			&lt;primlawhist:histgrp grptype="tableofamend"&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;table&gt;
							&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
								&lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
								&lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
								&lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
								&lt;thead&gt;
									&lt;row&gt;
									&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
									&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Gazette&lt;/emph&gt;&lt;/entry&gt;
									&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
									&lt;/row&gt;
								&lt;/thead&gt;
								&lt;tbody&gt;
									&lt;row&gt;
									&lt;entry colname="c1"&gt;Supreme Court Amendment Rules (No 2) 2002&lt;/entry&gt;
									&lt;entry colname="c2"&gt;Gaz 175 of 27 September 2002&lt;/entry&gt;
									&lt;entry colname="c3"&gt;27 September 2002&lt;/entry&gt;
									&lt;/row&gt;
								&lt;/tbody&gt;
							&lt;/tgroup&gt;
						&lt;/table&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
		&lt;/primlawhist:primlawhist&gt;
	&lt;/primlaw:prelim&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.prelim.dita  -->
	<xsl:message>Regulation_leg.prelim.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body/leg:prelim">

		<!--  Original Target XPath:  regulation:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim   -->
		<regulation:body>
			<primlaw:level>
				<primlaw:prelim>
					<xsl:apply-templates select="@* | node()"/>
				</primlaw:prelim>
			</primlaw:level>
		</regulation:body>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="leg:prelim/leg:history">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist   -->
		<primlaw:level>
			<primlaw:prelim>
				<primlawhist:primlawhist xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/">
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:primlawhist>
			</primlaw:prelim>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

</xsl:stylesheet>