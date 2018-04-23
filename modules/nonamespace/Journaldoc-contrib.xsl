<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-contrib">
  <title>contrib <lnpid>id-ST09-32609</lnpid></title>

  <body>
      <p><sourcexml>contrib</sourcexml> becomes <targetxml>nitf:body.head/nitf:byline/person:contributor</targetxml>.</p>

    <p><sourcexml>@contribtype</sourcexml> becomes <targetxml>@contributor-type</targetxml>.</p>
      <p>When <sourcexml>contrib</sourcexml> is having attribute <sourcexml>@searchtype="AUTHOR"</sourcexml> then conversion should create <targetxml>person:contributor/@contribtype="author"</targetxml>.</p>
    
    <p>If <sourcexml>@contribtype</sourcexml> is not present in the source data then conversion need to create <targetxml>@contributor-type="undetermined"</targetxml> in <targetxml>person:contributor</targetxml></p>

      <p><sourcexml>bio/addl-info</sourcexml> becomes <targetxml>person:person/person:bio/person:bio.text/bodytext</targetxml></p>
      <p>Any <sourcexml>emph</sourcexml> descendants of <sourcexml>contrib/person</sourcexml> should be omitted.</p>
      
       <note>If in source <sourcexml>contrib</sourcexml> element is not having any data then suppressed the element.</note>

<pre>
    <b><i>Source example based on AU content</i></b>

&lt;contrib&gt;Editor:
    &lt;person&gt;
        &lt;name.text&gt;&lt;emph typestyle="bf"&gt;S Ryan&lt;/emph&gt;&lt;/name.text&gt;
    &lt;/person&gt; BCom LLB (HONS) Barrister, Legal Aid Queensland
&lt;/contrib&gt;

<b>Becomes</b>

&lt;person:contributor contributor-type="undetermined"&gt; Editor:
    &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="bf"&gt;S Ryan&lt;/emph&gt;&lt;/person:name.text&gt;
    &lt;/person:person&gt; BCom LLB (HONS) Barrister, Legal Aid Queensland
&lt;/person:contributor&gt;
</pre>
      
      <pre>
          <b><i>Source example based on UK content</i></b>
          
&lt;jrnl:prelim searchtype="ARTICLE"&gt;
    ...
    &lt;contrib searchtype="AUTHOR"&gt;
        &lt;person&gt;
            &lt;name.text&gt;
                &lt;emph typestyle="ro"&gt;Bridget Treacy&lt;/emph&gt;
            &lt;/name.text&gt;
        &lt;/person&gt;
        &lt;bio&gt;
            &lt;addl-info&gt;
                &lt;p&gt;
                    &lt;text&gt;Barlow Lyde &amp;amp; Gilbert&lt;email&gt;&lt;remotelink href="btreacy@blg.co.uk"
                        hrefclass="mailto"&gt;btreacy@blg.co.uk&lt;/remotelink&gt;&lt;/email&gt;&lt;/text&gt;
                &lt;/p&gt;
            &lt;/addl-info&gt;
        &lt;/bio&gt;
    &lt;/contrib&gt;
    ...
&lt;/jrnl:prelim&gt;

<b>Becomes</b>

&lt;nitf:body.head&gt;
    ...
    &lt;nitf:byline&gt;
        &lt;person:contributor contributor-type="author"&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Bridget Treacy&lt;/person:name.text&gt;
                &lt;person:bio&gt;
                    &lt;person:bio.text&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Barlow Lyde &amp;amp; Gilbert&lt;contact:email
                                    normval="btreacy@blg.co.uk"
                                    &gt;btreacy@blg.co.uk&lt;/contact:email&gt;&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/person:bio.text&gt;
                &lt;/person:bio&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
    &lt;/nitf:byline&gt;
    ...
&lt;/nitf:body.head&gt;
</pre>

    <note>Handling of <sourcexml>glp:note/contrib</sourcexml> will become <targetxml>note/byline/person:contributor</targetxml>.</note>
    
<pre>
    <b><i>Source example based on AU content</i></b>

&lt;glp:note&gt;
    &lt;contrib&gt;Australian Mud Company Pty Ltd v Coretell Pty Ltd [2011] FCAFC 121; BC201107113
        (Bennett, Gilmour, Yates JJ, 15 September 2011)&lt;/contrib&gt;
&lt;/glp:note&gt;

<b>Becomes</b>

&lt;note&gt;
    &lt;byline&gt;
        &lt;person:contributor contributor-type="undetermined"&gt;Australian Mud Company Pty Ltd
            v Coretell Pty Ltd [2011] FCAFC 121; BC201107113 (Bennett, Gilmour, Yates JJ, 15
            September 2011)&lt;/person:contributor&gt;
    &lt;/byline&gt;
&lt;/note&gt;
</pre>
    
    <note>Handling of <sourcexml>bodytext/contrib</sourcexml> will become <targetxml>bodytext/note/byline/person:contributor</targetxml>.</note>
    
    <pre>
    <b><i>Source example based on AU content</i></b>

&lt;bodytext&gt;
    &lt;contrib&gt;Brendan Bateman CLAYTON UTZ&lt;/contrib&gt;
&lt;/bodytext&gt;


<b>Becomes</b>

&lt;bodytext&gt;
    &lt;note&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="undetermined"&gt;Brendan Bateman CLAYTON
                UTZ&lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/note&gt;
&lt;/bodytext&gt;
</pre>

    <note>Handling of <sourcexml>contrib/org</sourcexml> will become <targetxml>person:contributor/person:person/person:employer/entity:company</targetxml>.</note>
    
    <pre>
    <b><i>Source example based on AU content</i></b>

&lt;glp:note&gt;
    &lt;contrib&gt;
        &lt;person&gt;
            &lt;name.text&gt;Peter Rowell&lt;/name.text&gt;
        &lt;/person&gt;
        &lt;org&gt;BLAKE DAWSON WALDRON&lt;/org&gt;
    &lt;/contrib&gt;
&lt;/glp:note&gt;

<b>Becomes</b>

&lt;note&gt;
    &lt;byline&gt;
        &lt;person:contributor&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Peter Rowell&lt;/person:name.text&gt;
                &lt;person:employer&gt;
                    &lt;entity:company&gt;BLAKE DAWSON WALDRON&lt;/entity:company&gt;
                &lt;/person:employer&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
    &lt;/byline&gt;
&lt;/note&gt;
    </pre>
    
    <section>
      <title>Changes</title>
        <p>Created.</p>
      </section>

  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-contrib.dita  -->
	<xsl:message>Journaldoc-contrib.xsl requires manual development!</xsl:message> 

	<xsl:template match="contrib">

		<!--  Original Target XPath:  nitf:body.head/nitf:byline/person:contributor   -->
		<nitf:body.head>
			<nitf:byline>
				<person:contributor>
					<xsl:apply-templates select="@* | node()"/>
				</person:contributor>
			</nitf:byline>
		</nitf:body.head>

	</xsl:template>

	<xsl:template match="@contribtype">

		<!--  Original Target XPath:  @contributor-type   -->
		<xsl:attribute name="contributor-type">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@searchtype=&#34;AUTHOR&#34;">

		<!--  Original Target XPath:  person:contributor/@contribtype="author"   -->
		<person:contributor>
			<xsl:attribute name="contribtype">
				<xsl:text>author</xsl:text>
			</xsl:attribute>
		</person:contributor>

	</xsl:template>

	<xsl:template match="bio/addl-info">

		<!--  Original Target XPath:  person:person/person:bio/person:bio.text/bodytext   -->
		<person:person>
			<person:bio>
				<person:bio.text>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</person:bio.text>
			</person:bio>
		</person:person>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  note/byline/person:contributor   -->
		<note>
			<byline>
				<person:contributor>
					<xsl:apply-templates select="@* | node()"/>
				</person:contributor>
			</byline>
		</note>

	</xsl:template>

	<xsl:template match="contrib/person">

		<!--  Original Target XPath:  note/byline/person:contributor   -->
		<note>
			<byline>
				<person:contributor>
					<xsl:apply-templates select="@* | node()"/>
				</person:contributor>
			</byline>
		</note>

	</xsl:template>

	<xsl:template match="glp:note/contrib">

		<!--  Original Target XPath:  note/byline/person:contributor   -->
		<note>
			<byline>
				<person:contributor>
					<xsl:apply-templates select="@* | node()"/>
				</person:contributor>
			</byline>
		</note>

	</xsl:template>

	<xsl:template match="bodytext/contrib">

		<!--  Original Target XPath:  bodytext/note/byline/person:contributor   -->
		<bodytext>
			<note>
				<byline>
					<person:contributor>
						<xsl:apply-templates select="@* | node()"/>
					</person:contributor>
				</byline>
			</note>
		</bodytext>

	</xsl:template>

	<xsl:template match="contrib/org">

		<!--  Original Target XPath:  person:contributor/person:person/person:employer/entity:company   -->
		<person:contributor>
			<person:person>
				<person:employer>
					<entity:company xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/">
						<xsl:apply-templates select="@* | node()"/>
					</entity:company>
				</person:employer>
			</person:person>
		</person:contributor>

	</xsl:template>

</xsl:stylesheet>