<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita glp jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_contrib">
  <title>contrib <lnpid>id-AU14-20607</lnpid></title>

  <body>
    <p>Exceptional use case for Journals-Newsletters-Bulletins</p>
    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:prelim/contrib</sourcexml> becomes <targetxml>nitf:byline/person:contributor</targetxml>.</p>
    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">contrib</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">person:contributor</targetxml></p>

    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">@contribtype</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">@contributor-type</targetxml></p>
    
    <p>If <sourcexml class="+ topic/keyword xml-d/sourcexml ">@contribtype</sourcexml> is not present in the source data then conversion need to create <targetxml class="+ topic/keyword xml-d/targetxml ">@contributor-type="undetermined"</targetxml> in <targetxml class="+ topic/keyword xml-d/targetxml ">person:contributor</targetxml></p>

   
       <note class="- topic/note ">If in source <sourcexml class="+ topic/keyword xml-d/sourcexml ">contrib</sourcexml> element is not having any data then suppressed the element.</note>

<pre xml:space="preserve" class="- topic/pre ">
  &lt;contrib&gt;Editor:
    &lt;person&gt;
        &lt;name.text&gt;&lt;emph typestyle="bf"&gt;S Ryan&lt;/emph&gt;&lt;/name.text&gt;
    &lt;/person&gt; BCom LLB (HONS) Barrister, Legal Aid Queensland
  &lt;/contrib&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;person:contributor contributor-type="undetermined"&gt; Editor:
	&lt;person:person&gt;
		&lt;person:name.text&gt;&lt;emph typestyle="bf"&gt;S Ryan&lt;/emph&gt;&lt;/person:name.text&gt;
	&lt;/person:person&gt; BCom LLB (HONS) Barrister, Legal Aid Queensland
&lt;/person:contributor&gt;
</pre>

    <note class="- topic/note ">Handling of <sourcexml class="+ topic/keyword xml-d/sourcexml ">glp:note/contrib</sourcexml> will become <targetxml class="+ topic/keyword xml-d/targetxml ">note/byline/person:contributor</targetxml>.</note>
    
<pre xml:space="preserve" class="- topic/pre ">
&lt;glp:note&gt;
	&lt;contrib&gt;Australian Mud Company Pty Ltd v Coretell Pty Ltd [2011] FCAFC 121; BC201107113 (Bennett, Gilmour, Yates JJ, 15 September 2011)&lt;/contrib&gt;
&lt;/glp:note&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;note&gt;
	&lt;byline&gt;
		&lt;person:contributor contributor-type="undetermined"&gt;Australian Mud Company Pty Ltd v Coretell Pty Ltd [2011] FCAFC 121; BC201107113 (Bennett, Gilmour, Yates JJ, 15 September 2011)&lt;/person:contributor&gt;
	&lt;/byline&gt;
&lt;/note&gt;
</pre>
    
    <note class="- topic/note ">Handling of <sourcexml class="+ topic/keyword xml-d/sourcexml ">bodytext/contrib</sourcexml> will become <targetxml class="+ topic/keyword xml-d/targetxml ">bodytext/note/byline/person:contributor</targetxml>.</note>
    
    <pre xml:space="preserve" class="- topic/pre ">
&lt;bodytext&gt;
	&lt;contrib&gt;Brendan Bateman CLAYTON UTZ&lt;/contrib&gt;
&lt;/bodytext&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;bodytext&gt;
  &lt;note&gt;
	 &lt;byline&gt;
	 	 &lt;person:contributor contributor-type="undetermined"&gt;Brendan Bateman CLAYTON UTZ&lt;/person:contributor&gt;
	 &lt;/byline&gt;
  &lt;/note&gt;
&lt;/bodytext&gt;
</pre>

    <note class="- topic/note ">Handling of <sourcexml>contrib/org</sourcexml> will become <targetxml>person:contributor/person:person/person:employer/entity:company</targetxml>.</note>
    
    <pre xml:space="preserve" class="- topic/pre ">
&lt;glp:note&gt;
    &lt;contrib&gt;
        &lt;person&gt;
            &lt;name.text&gt;Peter Rowell&lt;/name.text&gt;
        &lt;/person&gt;
        &lt;org&gt;BLAKE DAWSON WALDRON&lt;/org&gt;
    &lt;/contrib&gt;
&lt;/glp:note&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

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
      <p>2013-09-18: <ph id="change_20130918_PS">Added Instruction of
            <sourcexml>contrib/org</sourcexml>. Webteam # 235859.</ph></p>
      </section>

  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU14_Journal-Newsletter-Bulletins\Journal-Newsletter-Bulletins_contrib.dita  -->
	<xsl:message>Journal-Newsletter-Bulletins_contrib.xsl requires manual development!</xsl:message> 

	<xsl:template match="jrnl:prelim/contrib">

		<!--  Original Target XPath:  nitf:byline/person:contributor   -->
		<nitf:byline>
			<person:contributor>
				<xsl:apply-templates select="@* | node()"/>
			</person:contributor>
		</nitf:byline>

	</xsl:template>

	<xsl:template match="contrib">

		<!--  Original Target XPath:  person:contributor   -->
		<person:contributor>
			<xsl:apply-templates select="@* | node()"/>
		</person:contributor>

	</xsl:template>

	<xsl:template match="@contribtype">

		<!--  Original Target XPath:  @contributor-type   -->
		<xsl:attribute name="contributor-type">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

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