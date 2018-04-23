<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelstatus">
	<title>leg:levelstatus <lnpid>id-AU15-20816</lnpid></title>
	<body>
		<section>
			<ul>
				<li class="- topic/li ">The conversion for <sourcexml>leg:levelstatus</sourcexml> is
					based on the following scenarios: <ul>
						<li class="- topic/li ">If the
								<sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
							with text in that then <b class="+ topic/ph hi-d/b ">becomes</b>
							<targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="repealed"]</targetxml>
							<note class="- topic/note ">Include the
									<targetxml>@statuscode</targetxml> in element
									<targetxml>admindoc:status</targetxml> to represent final
								disposition or for a more descriptive status explanation.</note>
							<pre xml:space="preserve" class="- topic/pre ">
										
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>


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

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>
            

&lt;admindoc:level xml:id="CLP.RS.CTD01.CL6" alternatetoccaption="[362,025] cl 6 Class licence &amp;mdash; 1.9 GHz land stations" includeintoc="true" leveltype="clause"&gt;
	&lt;admindoc:levelinfo&gt;
		&lt;admindoc:status statuscode="repealed"&gt;(Repealed)&lt;/admindoc:status&gt;
	&lt;/admindoc:levelinfo&gt;
			...
&lt;/admindoc:level&gt;

            </pre>
						</li>

						<li class="- topic/li ">If the
								<sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
							with no text in that then <b class="+ topic/ph hi-d/b ">becomes</b>
							<targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="repealed"]</targetxml>. <pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 2</i></b>

  
&lt;leg:level id="CLP.RS.RCLCMS03.CL19.8"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true"/&gt;
		&lt;/leg:levelinfo&gt;
		...
&lt;/leg:level&gt;

 </pre>
							<pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 2</i></b>
            

&lt;admindoc:level xml:id="CLP.RS.RCLCMS03.CL19.8" alternatetoccaption="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
	&lt;admindoc:levelinfo&gt;
		&lt;admindoc:status statuscode="repealed"/&gt;
	&lt;/admindoc:levelinfo&gt;
			...
&lt;/admindoc:level&gt;

            </pre>
						</li>
						<li class="- topic/li ">If the <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
							then suppress the element. <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 3</i></b>


&lt;leg:level id="CLP.BS.BSAC02.SCH1.CL1"&gt;
	&lt;leg:level-vrnt toc-caption="cl 1 Application of Schedule 1" subdoc="true" searchtype="LEGISLATION CLAUSE" leveltype="clause"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;
		&lt;/leg:levelinfo&gt;
		...
&lt;/leg:level&gt;

</pre>
							<pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 3</i></b>
            

&lt;admindoc:level xml:id="CLP.BS.BSAC02.SCH1.CL1" alternatetoccaption="cl 1 Application of Schedule 1" leveltype="clause" includeintoc="true"&gt;
		...
&lt;/admindoc:level&gt;

							</pre>
						</li>
						<li class="- topic/li ">If the <sourcexml>leg:levelstatus[@isrepealed="true"]</sourcexml> with
							text "Repealed" and if it has <sourcexml>@ln.user-displayed="false"</sourcexml> then target
							conversion should be
								<targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="repealed"]</targetxml>
							without "Repealed" text. <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 4</i></b>

&lt;leg:levelinfo&gt;
	&lt;leg:levelstatus isrepealed="true" ln.user-displayed="false"&gt;(Repealed)&lt;/leg:levelstatus&gt;
&lt;/leg:levelinfo&gt;

</pre>
							<pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 4</i></b>
            

&lt;admindoc:levelinfo&gt;
	&lt;admindoc:status statuscode="repealed"/&gt;
&lt;/admindoc:levelinfo&gt;


							</pre>
						</li>
						<li class="- topic/li ">If the <sourcexml>leg:levelstatus[@isrepealed="true"]</sourcexml> with
							text "<b>Repealed</b>" and if it does not have
								<sourcexml>@ln.user-displayed="false"</sourcexml> then target
							conversion should be
								<targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="repealed"]</targetxml>
							with "Repealed" text. <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 5</i></b>

&lt;leg:levelinfo&gt;
	&lt;leg:levelstatus isrepealed="true"&gt;(Repealed)&lt;/leg:levelstatus&gt;
&lt;/leg:levelinfo&gt;

</pre>
							<pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 5</i></b>
            

&lt;admindoc:levelinfo&gt;
	&lt;admindoc:status statuscode="repealed"&gt;(Repealed)&lt;/admindoc:status&gt;
&lt;/admindoc:levelinfo&gt;
</pre>
						</li>
					</ul>
				</li>
			</ul>
		</section>
	</body>
	</dita:topic>
	
	<xsl:template match="leg:levelinfo">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>


	<xsl:template match="leg:levelstatus[@isrepealed='true']">

		<!--  Original Target XPath:  admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="repealed"]   -->
				<admindoc:status statuscode='repealed'>
					<xsl:choose>
						<xsl:when test="@ln.user-displayed = 'false'"/>
						<xsl:otherwise>
							<xsl:apply-templates select="node()"/>
						</xsl:otherwise>
					</xsl:choose>
				</admindoc:status>

	</xsl:template>

	<xsl:template match="leg:levelstatus[@isrepealed='false']"/>
	

</xsl:stylesheet>