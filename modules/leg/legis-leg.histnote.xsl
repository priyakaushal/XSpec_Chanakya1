<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.histnote">
  <title>leg:histnote <lnpid>id-ST03-26629</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:histnote</sourcexml> becomes <targetxml>note</targetxml> with the attribute <targetxml>@notetype="historical"</targetxml> and create child element <targetxml>bodytext</targetxml></p>
      
      <note><sourcexml>leg:histnote/leg:histnote</sourcexml> becomes <targetxml>note[notetype="historical"]/bodytext/note[notetype="historical"]</targetxml></note>
    </section>
    <example>
      <title>CANADA SOURCE XML 1: Mapping of <sourcexml>leg:histnote</sourcexml></title>     
      <codeblock>

&lt;leg:histnote&gt;
 &lt;p&gt;
  &lt;text&gt;S.C. 2005, c. 25, s. 11 as amended by S.C. 2007, c. 22, s. 21.&lt;/text&gt;
 &lt;/p&gt;
&lt;/leg:histnote&gt;

      </codeblock>
      <b>Becomes</b>
      <title>CANADA TARGET XML 1: Mapping of <sourcexml>leg:histnote</sourcexml></title>
      <codeblock>

&lt;note notetype="historical"&gt;
 &lt;bodytext&gt;
  &lt;p&gt;
   &lt;text&gt;S.C. 2005, c. 25, s. 11 as amended by S.C. 2007, c. 22, s. 21.&lt;/text&gt;
  &lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/note&gt;
    
      </codeblock>
    </example>
   <example>
    <title>AUSTRALIA SOURCE XML 2: Mapping of <sourcexml>leg:histnote</sourcexml></title>     
    <codeblock>

&lt;leg:histnote&gt;
 &lt;p&gt;&lt;text&gt;[subs (2)  insrt Act 14 of 2007  s&amp;#160;8(3), effective 6 November 2006]&lt;/text&gt;&lt;/p&gt;
&lt;/leg:histnote&gt;

    </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>leg:histnote</sourcexml></title>
    <codeblock>

&lt;note notetype="historical"&gt;
 &lt;bodytext&gt;
  &lt;p&gt;&lt;text&gt;&amp;#x005B;subs &amp;#x0028;2&amp;#x0029;  insrt Act 14 of 2007  s&amp;#x00A0;8&amp;#x0028;3&amp;#x0029;, effective 6 November 2006&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/note&gt;

    </codeblock>
   </example>
   <example>
    <title>New Zealand SOURCE XML 3: Mapping of <sourcexml>leg:histnote/leg:histnote</sourcexml></title>     
    <codeblock>

&lt;leg:histnote&gt;
 &lt;leg:heading&gt;
  &lt;title&gt;Hist.&lt;/title&gt;
 &lt;/leg:heading&gt;
 &lt;p&gt;
  &lt;text&gt; ...&lt;/text&gt;
 &lt;/p&gt;
 &lt;leg:histnote&gt;
  &lt;leg:heading&gt;
   &lt;title&gt;Hist.&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;p&gt;
   &lt;text&gt; ...&lt;/text&gt;
  &lt;/p&gt;
 &lt;/leg:histnote&gt;
&lt;/leg:histnote&gt;

    </codeblock>
    <b>Becomes</b>
    <title>New Zealand TARGET XML 3: Mapping of <sourcexml>leg:histnote/leg:histnote</sourcexml></title>
    <codeblock>

&lt;note notetype="historical"&gt;
 &lt;heading&gt;
  &lt;title&gt;Hist.&lt;/title&gt;
 &lt;/heading&gt;
 &lt;bodytext&gt;
  &lt;p&gt;
   &lt;text&gt;...&lt;/text&gt;
  &lt;/p&gt;
  &lt;note notetype="historical"&gt;
   &lt;heading&gt;
    &lt;title&gt;Hist.&lt;/title&gt;
   &lt;/heading&gt;
   &lt;bodytext&gt;
    &lt;p&gt;
     &lt;text&gt;...&lt;/text&gt;
    &lt;/p&gt;
   &lt;/bodytext&gt;
  &lt;/note&gt;
 &lt;/bodytext&gt;
&lt;/note&gt;

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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.histnote.dita  -->
	<xsl:message>legis-leg.histnote.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:histnote/leg:histnote">

		<!--  Original Target XPath:  note[notetype="historical"]/bodytext/note[notetype="historical"]   -->
		<note>
			<bodytext>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</bodytext>
		</note>

	</xsl:template>

</xsl:stylesheet>