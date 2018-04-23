<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Introduction">
    <title>Introduction <lnpid>id-MY10-18012</lnpid></title>
    <body>
        <p>This Conversion Instruction describes the conversion of Citator 1.14_PROD schema in the
            document.</p>        
        <p>    
          <sourcexml>CITATORDOC</sourcexml> becomes <targetxml>cttr:citator</targetxml>. The source attributes are described below: 
<pre>
&lt;CITATORDOC&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator&gt;...
&lt;/cttr:citator&gt;
</pre> 
           
       <ul>    
             <li>
                  <sourcexml>@signal</sourcexml> becomes <targetxml>@treatment</targetxml>
<pre>
&lt;CITATORDOC signal="cautionary"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator treatment="cautionary"&gt;...
&lt;/cttr:citator&gt;
</pre>   
             </li>
           
            <li>
                <sourcexml>/CITATORDOC @citatordoctype="casebase"</sourcexml> becomes 
                <targetxml>doc:legacy-metadata/meta/metaitem @name="citatordoctype"</targetxml> and
                <targetxml>doc:legacy-metadata/meta/metaitem @value="casebase"</targetxml>
<pre>
&lt;CITATORDOC citatordoctype="casebase"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="citatordoctype" value="casebase"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
            </li> 
            
            <li>
                <sourcexml>/CITATORDOC @daily_pub="false"</sourcexml> is dropped
            </li> 
            
            <li>
                <sourcexml>/CITATORDOC @fullcourt="false"</sourcexml> becomes 
                <targetxml>doc:legacy-metadata/meta/metaitem @name="fullcourt"</targetxml> and
                <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the value can be 'true' or 'false' based on the source.
<pre>
&lt;CITATORDOC fullcourt="false"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="fullcourt" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
            </li> 
            
            <li>
                <sourcexml>/CITATORDOC @id="10957"</sourcexml> is dropped because
                <targetxml>doc:docinfo/dc:metadata/dc:identifier</targetxml> captures its content. 
            </li> 
            
            <li>
                    <sourcexml>/CITATORDOC @journalarticle="false"</sourcexml> is dropped. <note>The
                        attribute <sourcexml>CITATORDOC @journalarticle</sourcexml> is dropped in
                        all the scenarios(value ="true" or "false").</note>
                </li> 
            
            <li>
                <sourcexml>/CITATORDOC @monthly_pub="false"</sourcexml> is dropped
            </li> 
            
            <li>
                <sourcexml>/CITATORDOC @notannotated="true"</sourcexml> becomes 
                <targetxml>doc:legacy-metadata/meta/metaitem @name="notannotated"</targetxml> and
                <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the value can be 'true' or 'false' based on the source.
<pre>
&lt;CITATORDOC notannotated="true"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="notannotated" value="true"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
            </li>    
            
            <li>
                <sourcexml>/CITATORDOC @shortannot="false"</sourcexml> becomes 
                <targetxml>doc:legacy-metadata/meta/metaitem @name="shortannot"</targetxml> and
                <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the value can be 'true' or 'false' based on the source.
<pre>
&lt;CITATORDOC shortannot="false"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="shortannot" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
            </li> 
            
            <li>
                <sourcexml>/CITATORDOC @unreported="false"</sourcexml> becomes 
                <targetxml>doc:legacy-metadata/meta/metaitem @name="unreported"</targetxml> and
                <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml>the value can be 'true' or 'false' based on the source.
<pre>
&lt;CITATORDOC unreported="false"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="unreported" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
            </li> 
            
            <li>
                <sourcexml>/CITATORDOC @weekly_pub="false"</sourcexml> is dropped
                
            </li>
           
            <!--li> [no docinfo:lbu-meta in the document]
                <sourcexml>CITATORDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem @name="under-appeal" @value="true"</sourcexml> becomes
                <targetxml>doc:docinfo/doc:legacy-metadata/meta/docinfo:metaitem @name="under-appeal" @value="true"]</targetxml>.
<pre>
<![CDATA[
<CITATORDOC>...
    <docinfo>
        <docinfo:lbu-meta>...
            <docinfo:metaitem name="under-appeal" value="true"/>
        </docinfo:lbu-meta>
    <docinfo>            
</CITATORDOC>]]>
<b>Becomes</b>
<![CDATA[
<doc:docinfo>
    <doc:legacy-metadata>
        <meta>
            <metaitem name="under-appeal" value="true"/>
        </meta>
    </doc:legacy-metadata>
<doc:docinfo>
]]> 
</pre>
            </li-->
           
           
          </ul>
             
       </p>
        <p>The chilren of <sourcexml>CITATORDOC</sourcexml> are processed as follows:
            <ul><li><sourcexml>cttr:body</sourcexml> is ommitted, but the content is passed through to
                <targetxml>cttr:head</targetxml> and <targetxml>cttr:body</targetxml>, as described in other sections. </li>
                <li><sourcexml>docinfo</sourcexml> becomes <targetxml>doc:metadata</targetxml></li></ul>
        </p>
<pre>
&lt;CITATORDOC&gt;
&lt;docinfo&gt;..../&lt;docinfo&gt;
&lt;cttr:body&gt;
 &lt;case:headnote&gt;..... &lt;/case:headnote&gt;
  &lt;cttr:content&gt;..... &lt;/cttr:content&gt;
 &lt;/cttr:body&gt;
&lt;cttr:body&gt;

<b>Becomes</b>
&lt;cttr:citator&gt;
    &lt;cttr:head&gt;...&lt;/cttr:head&gt;
    &lt;cttr:body&gt;...&lt;/cttr:body&gt;
    &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/cttr:citator&gt;
</pre>

        <section>
            <title>Note:</title>
            <p>Source elements and attributes are italicized and highlighted in BLUE like this: <sourcexml>XML
                    SOURCE</sourcexml></p>
            <p>Target elements and attributes are bold and highlighted in GREEN like this: <targetxml>XML
                    TARGET</targetxml></p>
            <p>COPY SOURCE ATTRIBUTES TO TARGET ATTRIBUTES UNLESS OTHERWISE SPECIFIED.</p>
            <p>Every example is represented in the markup "&lt;![CDATA[EXAMPLE]]&gt;" in all the
                files and inside the <targetxml>pre</targetxml>
                tag:<pre>&lt;pre&gt; &lt;/pre&gt; </pre></p>
        </section>

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY10_Citator\Citator_Introduction.dita  -->
	<xsl:message>MY10_Citator_Citator_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="CITATORDOC"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citator   -->
		<cttr:citator>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @treatment   -->
		<xsl:attribute name="treatment">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="/CITATORDOC @citatordoctype=&#34;casebase&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="citatordoctype"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @daily_pub=&#34;false&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="fullcourt"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @fullcourt=&#34;false&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="fullcourt"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @id=&#34;10957&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:docinfo/dc:metadata/dc:identifier   -->
		<doc:docinfo>
			<dc:metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
				<dc:identifier>
					<xsl:apply-templates select="@* | node()"/>
				</dc:identifier>
			</dc:metadata>
		</doc:docinfo>

	</xsl:template>

	<xsl:template match="/CITATORDOC @journalarticle=&#34;false&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="CITATORDOC @journalarticle"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @monthly_pub=&#34;false&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @notannotated=&#34;true&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @shortannot=&#34;false&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="shortannot"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @unreported=&#34;false&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="unreported"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @weekly_pub=&#34;false&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:head   -->
		<cttr:head>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:head>

	</xsl:template>

	<xsl:template match="cttr:body"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:head   -->
		<cttr:head>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:head>

	</xsl:template>

	<xsl:template match="docinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:metadata   -->
		<doc:metadata>
			<xsl:apply-templates select="@* | node()"/>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="XML&#xA;                    SOURCE"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

</xsl:stylesheet>