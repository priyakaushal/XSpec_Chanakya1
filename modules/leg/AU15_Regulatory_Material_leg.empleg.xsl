<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.empleg">
   <title>leg:empleg <lnpid>id-AU15-20809</lnpid></title>
   <body>
      <section>
        <ul>
<li class="- topic/li ">
					<sourcexml>leg:empleg</sourcexml>
					<b class="+ topic/ph hi-d/b ">Becomes</b>
					<targetxml>admindoc:authority/admindoc:authorityitem/textitem</targetxml> and
					populated as: <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>

&lt;leg:level id="CLP.RS.RAAMS06.SCH1"&gt;
	&lt;leg:level-vrnt toc-caption="[368,150] SCHEDULE 1 SPECIFICATIONS, EQUIPMENT COMPLIANCE REQUIREMENTS AND STANDARDS" subdoc="true" searchtype="LEGISLATION SCHEDULE" leveltype="schedule"&gt;
		&lt;leg:heading&gt;
			&lt;edpnum&gt;&lt;refpt type="ext" id="CLP.RS.RAAMS06.SCH1"&gt;&lt;/refpt&gt;[368,150]&lt;/edpnum&gt;
			&lt;desig searchtype="SCH-NUM"&gt;&lt;designum&gt;SCHEDULE 1&lt;/designum&gt;&lt;/desig&gt;
			&lt;title searchtype="SCH-TITLE"&gt;SPECIFICATIONS, EQUIPMENT COMPLIANCE REQUIREMENTS AND STANDARDS&lt;/title&gt;
			&lt;leg:empleg&gt;(section 6)&lt;/leg:empleg&gt;
		&lt;/leg:heading&gt;
		...
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
</pre>
					<pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>


&lt;admindoc:level alternatetoccaption="[368,150] SCHEDULE 1 SPECIFICATIONS, EQUIPMENT COMPLIANCE REQUIREMENTS AND STANDARDS" includeintoc="true" leveltype="schedule"&gt;
	&lt;ref:anchor id="CLP.RS.RAAMS06.SCH1" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;altdesig value="[368,150]"&gt;[368,150]&lt;/altdesig&gt;
		&lt;desig value="1"&gt;SCHEDULE 1&lt;/desig&gt;
		&lt;title&gt;SPECIFICATIONS, EQUIPMENT COMPLIANCE REQUIREMENTS AND STANDARDS&lt;/title&gt;
	&lt;/heading&gt;
	&lt;admindoc:authority&gt;
		&lt;admindoc:authorityitem&gt;
			&lt;textitem&gt;(section 6)&lt;/textitem&gt;
		&lt;/admindoc:authorityitem&gt;
	&lt;/admindoc:authority&gt;
	...
&lt;/admindoc:level&gt;

            </pre>
					<note class="- topic/note ">The <sourcexml>leg:empleg</sourcexml> comes
						under <sourcexml>leg:heading</sourcexml> element in Rosetta but as per New Lexis
							<targetxml>admindoc:authority</targetxml> should be moved between <targetxml>admindoc:level</targetxml> and
							<targetxml>heading</targetxml>
						elements.</note>
				</li>
		</ul>
      </section>
   </body>
	</dita:topic>


	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  admindoc:authority/admindoc:authorityitem/textitem   -->
		<admindoc:authority>
			<admindoc:authorityitem>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</admindoc:authorityitem>
		</admindoc:authority>

	</xsl:template>

</xsl:stylesheet>