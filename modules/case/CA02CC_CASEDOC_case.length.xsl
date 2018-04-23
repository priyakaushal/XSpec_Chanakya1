<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.length">
  <title>case:length <lnpid>id-CA02CC-12427</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:length</sourcexml> becomes <targetxml>doc:metadata/doc:docinfo/doc:doclength</targetxml>. The attributes of
          <targetxml>doc:doclength</targetxml> are populated as follows: <ul>
          <li><targetxml>doc:doclength/@num</targetxml> is populated with the numeric content in <sourcexml>case:length</sourcexml>.</li>
          <li><targetxml>doc:doclength/@unit</targetxml> is populated with the textual content in <sourcexml>case:length</sourcexml>.</li>
          <li><targetxml>doc:doclength/@source</targetxml> is populated with the value "conversion".</li>
        </ul></p>
    </section>
    <example>
      <title>Mapping of <sourcexml>case:length</sourcexml></title>
      <codeblock>

&lt;case:length&gt;(8 pages)&lt;/case:length&gt;

       </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="CA"&gt;
        &lt;dc:metadata&gt;
            ...
        &lt;/dc:metadata&gt;
        &lt;doc:doclength num="8" unit="pages" source="conversion"/&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

       </codeblock>
    </example>
    <note><p>Exception for Canada: Conversion should add period (.) when <targetxml>@unit</targetxml>
      attribute is having abbreviated values (paras, para, paragr, pp and p), for more clarification
      refer below example.</p></note>
    
    <pre>
&lt;case:length&gt;(1 para.)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="1" unit="para." source="conversion"/&gt;
</pre>
    
    <pre>
&lt;case:length&gt;(2 pages)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="2" unit="pages" source="conversion"/&gt;
        </pre>
    
    <pre>
&lt;case:length&gt;(158 pp.)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="158" unit="pp." source="conversion"/&gt;
        </pre>
    
    <pre>
&lt;case:length&gt;(8 pages) (36 paras.)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="8" unit="pages" source="conversion"/&gt;
&lt;doc:doclength num="36" unit="paras." source="conversion"/&gt;
    </pre>      

<note>
    If there is a text in <sourcexml>case:length</sourcexml> then retain it in target. For more clarification please refer the example.
</note>
     
     <pre>
&lt;case:length&gt;(Approx. 11 pp.)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="Approx. 11" unit="pp." source="conversion"/&gt;    
     </pre>
      
    <section>
      <title>Changes</title>
        <p>2014-05-23: <ph id="change_20140523_AS">Instructions to handle case:length with Approx attribute...Db issue#205</ph></p>
      <p>2014-04-18: <ph id="change_20140418_AS">Added note and example for Canada content to
        add period (.) in the value of <targetxml>@unit</targetxml> when the contents of @unit are an abbreviation, R4.5 Content Issue
        #:1402. This change immediately applies to CA02-Case Summaries.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.length.dita  -->
	 
<!-- Sudhanshu Srivastava edited on 16-May-2017.-->
	<xsl:template match="case:length">
		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:doclength   -->
				<doc:doclength>
				    <xsl:attribute name="num">
				        <xsl:choose>
				            <xsl:when test="contains('0123456789', substring(replace(replace(normalize-space(.),'\)',''),'\(',''),1,1))">
				                <xsl:value-of select="replace(substring-before(.,' '),'\(','')"/>
				            </xsl:when>
				            <xsl:otherwise>
				                <xsl:value-of select="replace(replace(normalize-space(.),'\)',''),'\(','')[last()-1]"/>
				            </xsl:otherwise>
				        </xsl:choose>
				    </xsl:attribute>
				    <xsl:attribute name="unit">
				        <xsl:choose>
				            <xsl:when test="contains('0123456789', substring(replace(replace(normalize-space(.),'\)',''),'\(',''),1,1))">
				                <xsl:value-of select="substring-after(replace(replace(.,'\(',''),'\)',''),' ')"/>        
				            </xsl:when>
				            <xsl:otherwise>
				                <xsl:value-of select="replace(replace(.,'\(',''),'\)','')"/>
				            </xsl:otherwise>
				        </xsl:choose>
				        
				    </xsl:attribute>
				    <xsl:attribute name="source" select="'conversion'"/>
				</doc:doclength>
	</xsl:template>

</xsl:stylesheet>