<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
	<title>leg:heading <lnpid>id-AU15-20810</lnpid></title>
	<body>
		<section>
			<ul>
				<li class="- topic/li ">
					<sourcexml>leg:heading</sourcexml>
					<b class="+ topic/ph hi-d/b ">becomes</b>
					<targetxml>heading</targetxml> with attributes <sourcexml>@inline</sourcexml>
					<b class="+ topic/ph hi-d/b ">becomes</b>
					<targetxml>@inline</targetxml> which has tokenized values and populated as: <ul class="- topic/ul ">
						<li class="- topic/li ">
							<targetxml>heading[@inline="true"]</targetxml>
						</li>
						<li class="- topic/li ">
							<targetxml>heading[@inline="false"]</targetxml>
						</li>
					</ul>
					<pre xml:space="preserve" class="- topic/pre ">              
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>



&lt;leg:level id="CCL_ASIC.SGM_REL.SUBGROUP_12"&gt;
	&lt;leg:level-vrnt toc-caption="ASIC&amp;rsquo;S ROLE" subdoc="true" searchtype="LEGISLATION SUBGROUP" leveltype="subgroup"&gt;
		&lt;leg:heading&gt;&lt;title&gt;ASIC&amp;rsquo;S ROLE&lt;/title&gt;&lt;/leg:heading&gt;
	....
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

        
</pre>
					<pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>


&lt;admindoc:level leveltype="subchapter" includeintoc="true" alternatetoccaption="ASIC&amp;#x2019;S ROLE"&gt;
		&lt;ref:anchor id="CCL_ASIC.SGM_REL.SUBGROUP_12" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;ASIC&amp;#x2019;S ROLE&lt;/title&gt;
	&lt;/heading&gt;
	....
&lt;/admindoc:level&gt;


            </pre>
					<pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 2 - Handling of 'leg:heading' with '@inline' attribute</i></b>

&lt;leg:level id="AL.AATL.CPNRDRR.CL1"&gt;
	&lt;leg:level-vrnt toc-caption="[1160] cl 1 Citation" subdoc="true" searchtype="LEGISLATION CLAUSE" leveltype="clause"&gt;
		&lt;leg:levelinfo&gt;&lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;&lt;/leg:levelinfo&gt;
		&lt;leg:heading inline="true"&gt;&lt;edpnum&gt;&lt;refpt type="ext" id="AL.AATL.CPNRDRR.CL1"&gt;&lt;/refpt&gt;[1160]&lt;/edpnum&gt;
			&lt;title searchtype="CLAUSE-TITLE"&gt;Citation&lt;/title&gt;
			&lt;desig searchtype="CLAUSE-NUM"&gt;&lt;designum&gt;1&lt;/designum&gt;&lt;/desig&gt;
		&lt;/leg:heading&gt;
		....
&lt;/leg:level&gt;



</pre>
					<pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 2</i></b>


&lt;admindoc:level alternatetoccaption="[1160] cl 1 Citation" includeintoc="true" leveltype="clause"&gt;
	&lt;ref:anchor id="AL.AATL.CPNRDRR.CL1" anchortype="global"/&gt;
	&lt;heading inline="true"&gt;
		&lt;altdesig value="[1160]"&gt;[1160]&lt;/altdesig&gt;
		&lt;title&gt;Citation&lt;/title&gt;
		&lt;desig value="1"&gt;1&lt;/desig&gt;		
	&lt;/heading&gt;
	....
&lt;/admindoc:level&gt;

</pre>
				</li>
				<li class="- topic/li ">If the input document has scenario
						<sourcexml>leg:heading/leg:histnote</sourcexml> then move the
						<targetxml>note</targetxml> after <targetxml>heading</targetxml> within
						<targetxml>admindoc:level</targetxml>. <pre xml:space="preserve" class="- topic/pre ">
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level&gt;
	&lt;leg:heading&gt;
		&lt;desig searchtype="SCH-NUM"&gt;&lt;designum&gt;&lt;refpt type="ext" id="PEV.SEP.CONNPP.SCHC"&gt;&lt;/refpt&gt;SCHEDULE C&lt;/designum&gt;&lt;/desig&gt;
		&lt;title searchtype="SCH-TITLE"&gt;DEFINITION OF A SCHEDULED AREA&lt;/title&gt;
		&lt;leg:histnote&gt;
			&lt;p&gt;&lt;text&gt;[Sch C  insrt Gaz G12 of 25 March 1999]&lt;/text&gt;&lt;/p&gt;
		&lt;/leg:histnote&gt;
	&lt;/leg:heading&gt;
	....
&lt;/leg:level&gt;


</pre>
					<pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>


&lt;admindoc:level&gt;
	&lt;ref:anchor id="PEV.SEP.CONNPP.SCHC" anchortype="global"/&gt;
	&lt;heading&gt;&lt;desig&gt;SCHEDULE C&lt;/desig&gt;
		&lt;title&gt;DEFINITION OF A SCHEDULED AREA&lt;/title&gt;
	&lt;/heading&gt;
	&lt;note notetype="historical"&gt;
		&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;[Sch C  insrt Gaz G12 of 25 March 1999]&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;
	....
&lt;/admindoc:level&gt;


            </pre>
				</li>


			</ul>
		</section>
		<section><title>Changes</title></section>
		<p>2013-03-06: <ph id="change_20130306_raj">Removed deprecated attribute
					<targetxml>@followstitle</targetxml> from output sample(s).</ph></p>
	</body>
	</dita:topic>
	
	<xsl:template match="leg:bodytext/leg:heading[(title|subtitle)]">
		<h>
			<xsl:apply-templates select="(title|subtitle)/node()"/>
		</h>
	</xsl:template>

	<xsl:template match="leg:heading[not(parent::leg:bodytext)] | leg:heading[not(title|subtitle)]">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node() except (leg:empleg, leg:histnote)"/>
		</heading>

	</xsl:template>
	
	
	<xsl:template match="@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>