<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
	version="2.0" 
	exclude-result-prefixes="dita case case2 source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="subseqarticles_cttr.annot.dita">
		<title>cttr:annotations/@annotationtype="subseqarticles"/cttr:annot <lnpid>id-UK05-27822</lnpid></title>
		<body>
			<p>
				<ul>
					<li>
						<sourcexml>cttr:annotations @annotationtype="subseqarticles"/cttr:annot</sourcexml> becomes
							<targetxml>cttr:refsection @reftype="citing-publications"/cttr:refitem</targetxml>. <note>The value of the
							attribute <sourcexml>cttr:annotations/@annotationtype="subseqarticles"</sourcexml> maps to the attribute
								<targetxml>cttr:refsection/@reftype="citing-publications"</targetxml>.</note>
						<p><sourcexml>cttr:annot/@signal</sourcexml> becomes
								<targetxml>cttr:refitem/cttr:citingpub/@treatment</targetxml>. <note>If there is no value for
									<sourcexml>cttr:annot/@signal</sourcexml>, a value for
									<targetxml>cttr:citingpub/@treatment</targetxml> can be determined from the name of the gif file in
									<sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml>: <table id="table_jzh_has_um">
									<tgroup cols="2">
										<colspec colnum="1" colname="c1" colwidth="228.75pt"/>
										<colspec colnum="2" colname="c2" colwidth="133.5pt"/>
										<thead>
											<row>
												<entry>Value of <sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml></entry>
												<entry>Vaue of <targetxml>cttr:citingpub/@treatment</targetxml></entry>
											</row>
										</thead>
										<tbody>
											<row>
												<entry>1.gif </entry>
												<entry>negative</entry>
											</row>
											<row>
												<entry>2.gif </entry>
												<entry>cautionary</entry>
											</row>
											<row>
												<entry>3.gif </entry>
												<entry>positive</entry>
											</row>
											<row>
												<entry>4.gif </entry>
												<entry>neutral</entry>
											</row>
											<row>
												<entry>5.gif </entry>
												<entry>citation</entry>
											</row>
											<row>
												<entry>no value</entry>
												<entry>unspecified</entry>
											</row>
										</tbody>
									</tgroup>
								</table>
							</note>
						</p>
						<p>The child elements are described below:</p>
						<pre>
&lt;cttr:annotations annotationtype="subseqarticles"&gt;
  &lt;cttr:annot signal="citation"&gt;...
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="citing-publications"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:citingpub treatment="citation"&gt;...
      &lt;/cttr:citingpub&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
						<ul>
							<li>
								<sourcexml>cttr:annotations/cttr:annot/case:references</sourcexml> becomes
									<targetxml>cttr:refsection/cttr:refitem/cttr:citingpub</targetxml>. <ul>
									<li>
										<sourcexml>cttr:annotations/cttr:annot/case:references/p/text</sourcexml> becomes
											<targetxml>cttr:refsection/cttr:refitem/cttr:citingpub/bodytext/p/text</targetxml>.
										<pre>
&lt;cttr:annotations annotationtype="subseqarticles"&gt;
  &lt;heading&gt;
    &lt;title&gt;Appeal Tracker&lt;/title&gt;
  &lt;/heading&gt;
  &lt;cttr:annot signal="citation"&gt;
    &lt;case:references&gt;
      &lt;p&gt;
        &lt;text&gt;
          &lt;date&gt;19/07/2012&lt;/date&gt;
        &lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
        &lt;text&gt;Hearing of appeal in the Court of Appeal commences 21-Aug-12 or 22-Aug-12&lt;/text&gt;
      &lt;/p&gt;
    &lt;/case:references&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="citing-publications"&gt;  
    &lt;heading&gt;
      &lt;title&gt;Appeal Tracker&lt;/title&gt;
    &lt;/heading&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:citingpub treatment="citation"&gt;
        &lt;bodytext&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;date&gt;19/07/2012&lt;/date&gt;
            &lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
            &lt;text&gt;Hearing of appeal in the Court of Appeal commences 21-Aug-12 or 22-Aug-12&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/cttr:citingpub&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</p>
			<section>
				<title>Changes</title>
				<p>2014-01-13: <ph id="change_20140113_brt">Added note to convert
							<sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml> to
							<targetxml>cttr:refitem/cttr:citingpub/@treatment</targetxml> when
							<sourcexml>cttr:annot/@signal</sourcexml> is not present.</ph></p>
				<p>2013-10-22: <ph id="change_20131022_brt">Added instructions to convert
							<sourcexml>cttr:annot/@signal</sourcexml> to
						<targetxml>cttr:refitem/cttr:citingpub/@treatment</targetxml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\subseqarticles_cttr.annot.dita  -->
	<xsl:template match="source_cttr:annotations[@annotationtype = 'subseqarticles']/source_cttr:annot">
		<!--  Original Target XPath:  cttr:refsection@reftype="citing-publications"/cttr:refitem   -->
		<!--<cttr:refsection>-->
			<cttr:refitem>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refitem>
		<!--</cttr:refsection>-->
	</xsl:template>

	<xsl:template match="source_cttr:annotations[@annotationtype = 'subseqarticles']">
		<!--  Original Target XPath:  cttr:refsection/@reftype="citing-publications"   -->
		<cttr:refsection>
			<xsl:attribute name="reftype">
				<xsl:text>citing-publications</xsl:text>
			</xsl:attribute>
		</cttr:refsection>
	</xsl:template>

	<xsl:template match="source_cttr:annot/@signal">
		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/@treatment   -->
		<cttr:refitem>
			<cttr:citingpub>
				<xsl:attribute name="treatment">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="source_cttr:annot/remotelink/inlineobject/@filename">
		<!--  Original Target XPath:  cttr:citingpub/@treatment   -->
		<cttr:citingpub>
			<xsl:attribute name="treatment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</cttr:citingpub>

	</xsl:template>

	<xsl:template match="source_cttr:annotations/source_cttr:annot/case:references | source_cttr:annotations/source_cttr:annot/case2:references">
		<!--  Original Target XPath:  cttr:refsection/cttr:refitem/cttr:citingpub   -->
		<cttr:refsection>
			<cttr:refitem>
				<cttr:citingpub>
					<xsl:apply-templates select="@* | node()"/>
				</cttr:citingpub>
			</cttr:refitem>
		</cttr:refsection>
	</xsl:template>

<!--	<xsl:template match="source_cttr:annotations/source_cttr:annot/case:references/p/text | ">
		<!-\-  Original Target XPath:  cttr:refsection/cttr:refitem/cttr:citingpub/bodytext/p/text   -\->
		<cttr:refsection>
			<cttr:refitem>
				<cttr:citingpub>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="@* | node()"/>
							</text>
						</p>
					</bodytext>
				</cttr:citingpub>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>
-->
</xsl:stylesheet>