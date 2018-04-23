<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_leg.levelstatus">
	<title>leg:levelstatus <lnpid>id-ST08-31621</lnpid></title>
	<body>
		<section>
			<p>Conversion of <sourcexml>leg:levelstatus</sourcexml> is determined by attributes, as
				follows:</p><ul>
				<li class="- topic/li "><sourcexml>leg:levelstatus[@isrepealed="true"]</sourcexml>
					becomes <targetxml>admindoc:status[@statuscode="repealed"]</targetxml><ul>
						<li class="- topic/li ">An empty element in source will be an empty element
							in target</li>
						<li class="- topic/li ">A populated element (pcdata) in source will be a
							populated element in target. Except:<ul>
								<li class="- topic/li ">If
										<sourcexml>leg:levelstatus[@isrepealed="true"
										@ln.userdisplayed="false"]</sourcexml> and pcdata
									"(Repealed)" then suppress pcdata and output empty element</li>
							</ul></li>
					</ul></li>
				<li class="- topic/li "><sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
					is suppressed</li>
			</ul></section>
		<pre xml:space="preserve" class="- topic/pre ">

    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 1. <sourcexml>@isrepealed="true"</sourcexml>, empty</i></b>

  
&lt;leg:level id="CLP.RS.RCLCMS03.CL19.8"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true"/&gt;
		&lt;/leg:levelinfo&gt;
		...
&lt;/leg:level&gt;

 </pre>
		<pre xml:space="preserve" class="- topic/pre ">
    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1. <sourcexml>@isrepealed="true"</sourcexml>, empty</i></b>
            

&lt;admindoc:level xml:id="CLP.RS.RCLCMS03.CL19.8" alternatetoccaption="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
	&lt;admindoc:levelinfo&gt;
		&lt;admindoc:status statuscode="repealed"/&gt;
	&lt;/admindoc:levelinfo&gt;
			...
&lt;/admindoc:level&gt;

</pre>
		<pre xml:space="preserve" class="- topic/pre ">
										
    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 2. <sourcexml>@isrepealed="true"</sourcexml>, populated</i></b>


&lt;leg:level id="CLP.RS.CTD01.CL6"&gt;
	&lt;leg:level-vrnt toc-caption="[362,025] cl 6 Class licence &amp;mdash; 1.9 GHz land stations" subdoc="true" searchtype="LEGISLATION CLAUSE" leveltype="clause"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true"&gt;(Repealed)&lt;/leg:levelstatus&gt;
		&lt;/leg:levelinfo&gt;
		...
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

</pre>
		<pre xml:space="preserve" class="- topic/pre ">

    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 2. <sourcexml>@isrepealed="true"</sourcexml>, populated</i></b>
            

&lt;admindoc:level xml:id="CLP.RS.CTD01.CL6" alternatetoccaption="[362,025] cl 6 Class licence &amp;mdash; 1.9 GHz land stations" includeintoc="true" leveltype="clause"&gt;
	&lt;admindoc:levelinfo&gt;
		&lt;admindoc:status statuscode="repealed"&gt;(Repealed)&lt;/admindoc:status&gt;
	&lt;/admindoc:levelinfo&gt;
			...
&lt;/admindoc:level&gt;

</pre>
		<pre xml:space="preserve" class="- topic/pre ">
    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 3. <sourcexml>@isrepealed="true"</sourcexml>,  <sourcexml>@ln.userdisplayed="false"</sourcexml>, "(Repealed)"</i></b>

&lt;leg:levelinfo&gt;
	&lt;leg:levelstatus isrepealed="true" ln.user-displayed="false"&gt;(Repealed)&lt;/leg:levelstatus&gt;
&lt;/leg:levelinfo&gt;

</pre>
		<pre xml:space="preserve" class="- topic/pre ">

    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 3. <sourcexml>@isrepealed="true"</sourcexml>, <sourcexml>@ln.userdisplayed="false"</sourcexml>, "(Repealed)"</i></b>
            

&lt;admindoc:levelinfo&gt;
	&lt;admindoc:status statuscode="repealed"/&gt;
&lt;/admindoc:levelinfo&gt;

</pre>
		<pre xml:space="preserve" class="- topic/pre ">
    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 4. <sourcexml>@isrepealed="false"</sourcexml> suppressed</i></b>


&lt;leg:level id="CLP.BS.BSAC02.SCH1.CL1"&gt;
	&lt;leg:level-vrnt toc-caption="cl 1 Application of Schedule 1" subdoc="true" searchtype="LEGISLATION CLAUSE" leveltype="clause"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;
		&lt;/leg:levelinfo&gt;
		...
&lt;/leg:level&gt;

</pre>
		<pre xml:space="preserve" class="- topic/pre ">

    <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 4. <sourcexml>@isrepealed="false"</sourcexml> suppressed</i></b>
            

&lt;admindoc:level xml:id="CLP.BS.BSAC02.SCH1.CL1" alternatetoccaption="cl 1 Application of Schedule 1" leveltype="clause" includeintoc="true"&gt;
		...
&lt;/admindoc:level&gt;

</pre>

	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_leg.levelstatus.dita  -->
	<xsl:message>admindoc_standardCI_leg.levelstatus.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelstatus">

		<!--  Original Target XPath:  admindoc:status[@statuscode="repealed"]   -->
		<admindoc:status>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:status>

	</xsl:template>

	<xsl:template match="leg:levelstatus[@isrepealed=&#34;true&#34;]">

		<!--  Original Target XPath:  admindoc:status[@statuscode="repealed"]   -->
		<admindoc:status>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:status>

	</xsl:template>

	<xsl:template match="leg:levelstatus[@isrepealed=&#34;true&#34;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;@ln.userdisplayed=&#34;false&#34;]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:levelstatus[@isrepealed=&#34;false&#34;]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@isrepealed=&#34;true&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@ln.userdisplayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@isrepealed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>