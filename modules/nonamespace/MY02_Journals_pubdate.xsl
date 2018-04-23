<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="pubdate">
  
  <title>pubdate <lnpid>id-MY02-16225</lnpid></title>
  
  <body>
    
    <p>
      <ul>
        <li> <sourcexml>pubdate</sourcexml> becomes <targetxml>pubinfo:dates/pubinfo:pubdate</targetxml></li>
        <li>The attribute <targetxml>pubinfo:pubdate/@normdate</targetxml> should be populated with
          the values of <sourcexml>pubdate/date/@year</sourcexml>,
            <sourcexml>pubdate/date/@month</sourcexml> and <sourcexml>pubdate/date/@day</sourcexml>
          concatenated and separated by a single hyphen. The values of
            <sourcexml>pubdate/date/@month</sourcexml> and <sourcexml>pubdate/date/@day</sourcexml>
          should be padded with zeroes so that they are 2 digits. <note>If one or more of the three
            date values (year, month or day) are absent, then
              <targetxml>pubinfo:pubdate/@normdate</targetxml> should <b>not</b> be
            populated.</note></li>                
        <li><sourcexml>pubdate/date/@day</sourcexml> becomes
          <targetxml>pubinfo:pubdate/@day</targetxml>.</li>
        <li><sourcexml>pubdate/date/@month</sourcexml> becomes
          <targetxml>pubinfo:pubdate/@month</targetxml>.</li>
        <li><sourcexml>pubdate/date/@year</sourcexml> becomes
          <targetxml>pubinfo:pubdate/@year</targetxml>.</li>
      </ul>      
    </p>
    <ul>
      <li>
        <sourcexml>pubdate/date</sourcexml> becomes
        <targetxml>pubinfo:pubdate/date-text</targetxml>
      </li>
    </ul>
    <note>The target mapping will be part of <targetxml>doc:metadata</targetxml>.</note>
    
    <pre>

&lt;jrnl:info&gt;
  &lt;pubdate&gt;&lt;date day="01" month="01" year="2010"&gt;2010&lt;/date&gt;&lt;/pubdate&gt;
&lt;!--...--&gt;
&lt;/jrnl:info&gt;	


<b>Becomes</b>


&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;!-- ... --&gt;
    &lt;/doc:docinfo&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:dates&gt;
          &lt;pubinfo:pubdate day="01" month="01" year="2010" normdate="2010-01-01"&gt;&lt;date-text&gt;2010&lt;/date-text&gt;&lt;/pubinfo:pubdate&gt;
      &lt;/pubinfo:dates&gt;    
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;

</pre>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY02_Journals\pubdate.dita  -->
<!--	<xsl:message>MY02_Journals_pubdate.xsl requires manual development!</xsl:message> -->

	<xsl:template match="pubdate"><!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates   -->
		<pubinfo:dates>
			<pubinfo:pubdate>
				<xsl:call-template name="DATE_attributes">
					<xsl:with-param name="date">
						<xsl:copy-of select="date"/>
					</xsl:with-param>
				</xsl:call-template>
				<xsl:apply-templates select="@*[not(name() = ('year', 'month', 'day', 'ln.user-displayed'))]"/>
				<xsl:apply-templates select="node()"/>
			</pubinfo:pubdate>
		</pubinfo:dates>
	</xsl:template>
	
	<xsl:template match="pubdate/@ln.user-displayed"/>
	
	<xsl:template match="date[parent::pubdate]"><!--  Original Target XPath:  pubinfo:pubdate   -->
		<date-text>
			<xsl:apply-templates select="node()"/>
		</date-text>
	</xsl:template>
</xsl:stylesheet>