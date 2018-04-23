<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.citations">
  <title>case:citations <lnpid>id-ST05-28412</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:citations</sourcexml> becomes <targetxml> compcase:head
            /ref:relatedrefs</targetxml> with an attribute 'referencetype' set to
            <targetxml>@referencetype="case-citations"</targetxml> which contains
            <sourcexml>case:citetext</sourcexml> becomes
            <targetxml>ref:relatedrefs/bodytext/p/text</targetxml>.</li>
      </ul>
    </section>
    <example>
      <title>Source XML based on AU content</title>
      <codeblock>

&lt;case:citations&gt;
  &lt;heading&gt;
    &lt;title&gt;C&lt;emph typestyle="smcaps"&gt;ASES&lt;/emph&gt; C&lt;emph typestyle="smcaps"&gt;ITED&lt;/emph&gt;&lt;/title&gt;
  &lt;/heading&gt;
  &lt;case:citetext&gt;The following cases are cited in the judgment:&lt;nl/&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:content&gt;
        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Allgood v Blake&lt;/emph&gt;&lt;/citefragment&gt; 
        &lt;citefragment searchtype="CASE-CITE-REF"&gt;(1873) LR 8 Exch 160&lt;/citefragment&gt;.
      &lt;/ci:content&gt;
    &lt;/ci:cite&gt;&lt;nl/&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:content&gt;
        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Amber Holdings (Aust) Pty Ltd v Polona Pty Ltd&lt;/emph&gt;&lt;/citefragment&gt; 
        &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1982] 2 NSWLR 470&lt;/citefragment&gt;.
      &lt;/ci:content&gt;
    &lt;/ci:cite&gt;&lt;nl/&gt;
  &lt;/case:citetext&gt;
&lt;/case:citations&gt;

           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;ref:relatedrefs referencetype="case-citations"&gt;
  &lt;heading&gt;
    &lt;title&gt;C&lt;emph typestyle="smcaps"&gt;ASES&lt;/emph&gt; C&lt;emph typestyle="smcaps"&gt;ITED&lt;/emph&gt;&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;The following cases are cited in the judgment:&lt;proc:nl/&gt;
        &lt;lnci:cite type="case"&gt;
          &lt;lnci:content&gt;
            &lt;emph typestyle="it"&gt;Allgood v Blake&lt;/emph&gt; (1873) LR 8 Exch 160
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;&lt;proc:nl/&gt;
        &lt;lnci:cite type="case"&gt;
          &lt;lnci:content&gt;
            &lt;emph typestyle="it"&gt;Amber Holdings (Aust) Pty Ltd v Polona Pty Ltd&lt;/emph&gt; [1982] 2 NSWLR 470
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;&lt;proc:nl/&gt;
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;

           </codeblock>
       </example>
       <section>
           <title>Changes</title>
           <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.citations.dita  -->

	<xsl:template match="case:citations">
		<!--  Original Target XPath:  compcase:head/ref:relatedrefs   -->
		<compcase:head xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<ref:relatedrefs referencetype='case-citations'>
				<xsl:apply-templates select="@* | node()"/>
			</ref:relatedrefs>
		</compcase:head>
	</xsl:template>

	<xsl:template match="case:citetext">
		<!--  Original Target XPath:  ref:relatedrefs/bodytext/p/text   -->
			<bodytext>
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</bodytext>
	</xsl:template>

</xsl:stylesheet>