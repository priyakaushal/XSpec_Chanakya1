<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_leg.levelbody">
	<title>leg:levelbody and leg:bodytext <lnpid>id-ST08-31620</lnpid></title>
	<body>
		<section><p>Conversion of <sourcexml>leg:levelbody</sourcexml> depends on whether child
					<sourcexml>leg:bodytext</sourcexml> is present, as follows:</p><ul>
				<li>If child <sourcexml>leg:bodytext</sourcexml>
					<u>is not</u> present, then <sourcexml>leg:levelbody</sourcexml> becomes
						<targetxml>admindoc:bodytext</targetxml>.</li>
				<li>If child <sourcexml>leg:bodytext</sourcexml>
					<u>is</u> present, then suppress the parent tag <sourcexml>leg:levelbody</sourcexml>
					and process children as follows:<ul>
						<li>If <sourcexml>leg:bodytext</sourcexml> is the first or only child, then
								<sourcexml>leg:bodytext</sourcexml> becomes
								<targetxml>admindoc:bodytext</targetxml>.</li>
						<li>Each subsequent <sourcexml>leg:bodytext</sourcexml> becomes
								<targetxml>admindoc:level[@leveltype="unclassified"]/admindoc:bodytext</targetxml>.<ul>
								<li class="- topic/li ">For
										<sourcexml>leg:bodytext/leg:heading</sourcexml>: Convert
										<sourcexml>leg:bodytext</sourcexml> as described above.
									Child <sourcexml>leg:heading/title</sourcexml> becomes
										<targetxml>h</targetxml> and
										<sourcexml>leg:heading/subtitle</sourcexml> also becomes
										<targetxml>h</targetxml>.</li>
							</ul></li>
						<li>Any other child of <sourcexml>leg:levelbody</sourcexml>, e.g.
								<sourcexml>leg:level</sourcexml>, is not exceptional and converts as
							described elsewhere in this document.</li>
					</ul></li>
			</ul>
			<pre xml:space="preserve" class="- topic/pre ">
              <b><i class="+ topic/ph hi-d/i ">Example: Source XML 1, child <sourcexml>leg:bodytext</sourcexml> NOT present</i></b>

&lt;leg:levelbody&gt;
	&lt;leg:level id="AL.AATL.CPNRDRR.CL2.1"&gt;
		&lt;leg:level-vrnt searchtype="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
			&lt;leg:heading inline="true"&gt;
				&lt;desig&gt;&lt;designum&gt;&lt;refpt type="ext" id="AL.AATL.CPNRDRR.CL2.1"&gt;&lt;/refpt&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
			&lt;/leg:heading&gt;
			....
		&lt;/leg:level-vrnt&gt;
	&lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

</pre>
			<pre xml:space="preserve" class="- topic/pre ">

              <b><i class="+ topic/ph hi-d/i ">Example: Target XML 1, child <sourcexml>leg:bodytext</sourcexml> NOT present</i></b>


&lt;admindoc:bodytext&gt;
	&lt;admindoc:level leveltype="subclause"&gt;
		&lt;ref:anchor id="AL.AATL.CPNRDRR.CL2.1" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;desig&gt;(1)&lt;/desig&gt;
		&lt;/heading&gt;
		....
	&lt;/admindoc:level&gt;
&lt;/admindoc:bodytext&gt;

                </pre>
			<pre xml:space="preserve" class="- topic/pre ">
              <b><i class="+ topic/ph hi-d/i ">Example: Source XML 2, child <sourcexml>leg:bodytext</sourcexml> IS present</i></b>
			
&lt;leg:level id="ASC_ARCHIVE.SGM_REL.FRONT_6"&gt;
	&lt;leg:level-vrnt toc-caption="Media Release 05/110 ASIC financial services" 
	subdoc="true" searchtype="LEGISLATION RELEASE" leveltype="release"&gt;
		&lt;leg:heading searchtype="RELEASE-TITLE"&gt;
			&lt;desig&gt;&lt;designum&gt;&lt;refpt type="ext" id="ASCR.MR.MR05-110"&gt;&lt;/refpt&gt;Media Release 05/110&lt;/designum&gt;&lt;/desig&gt;
			&lt;title&gt;ASIC financial services&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;leg:levelbody&gt;
			&lt;leg:bodytext&gt;						
				&lt;leg:heading&gt;&lt;title&gt;Issuance&lt;/title&gt;&lt;/leg:heading&gt;
				&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Issued: 29&amp;nbsp;April 2005&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:bodytext&gt;
			&lt;leg:bodytext&gt;						
				&lt;leg:heading&gt;&lt;subtitle&gt;Partners&lt;/subtitle&gt;&lt;/leg:heading&gt;
				&lt;p&gt;&lt;text&gt;&amp;ldquo;ASIC has worked closely with the...&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:bodytext&gt;
			&lt;leg:bodytext&gt;						
				&lt;leg:heading&gt;&lt;subtitle&gt;Actions&lt;/subtitle&gt;&lt;/leg:heading&gt;
				&lt;p&gt;&lt;text&gt;The first step is to...&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:bodytext&gt;
		&lt;/leg:levelbody&gt;
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
                
          </pre>
			<b>Becomes</b>
			<pre xml:space="preserve" class="- topic/pre ">
              <b><i class="+ topic/ph hi-d/i ">Example: Source XML 2, child <sourcexml>leg:bodytext</sourcexml> IS present</i></b>
                   
               
&lt;admindoc:level xml:id="ASC_ARCHIVE.SGM_REL.FRONT_6" leveltype="instrument" includeintoc="true" alternatetoccaption="Media Release 05/110 ASIC financial services"&gt;
	&lt;ref:anchor id="ASCR.MR.MR05-110" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;desig&gt;Media Release 05/110&lt;/desig&gt;
		&lt;title&gt;ASIC financial services&lt;/title&gt;
	&lt;/heading&gt;
	&lt;admindoc:bodytext&gt;	
		&lt;h&gt;Issuance&lt;/h&gt;
		&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Issued: 29&amp;#x00A0;April 2005&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
	&lt;/admindoc:bodytext&gt;
	&lt;admindoc:level leveltype="unclassified"&gt;
		&lt;admindoc:bodytext&gt;
			&lt;h&gt;Partners&lt;/h&gt;
			&lt;p&gt;&lt;text&gt;&amp;#x201C;ASIC has worked closely with the...&lt;/text&gt;&lt;/p&gt;
		&lt;/admindoc:bodytext&gt;
	&lt;/admindoc:level&gt;
	&lt;admindoc:level leveltype="unclassified"&gt;
		&lt;admindoc:bodytext&gt;
			&lt;h&gt;Actions&lt;/h&gt;
			&lt;p&gt;&lt;text&gt;The first step is to...&lt;/text&gt;&lt;/p&gt;
		&lt;/admindoc:bodytext&gt;
	&lt;/admindoc:level&gt;
&lt;/admindoc:level&gt;
 
      </pre>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_leg.levelbody.dita  -->
	<xsl:message>admindoc_standardCI_leg.levelbody.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  admindoc:bodytext   -->
		<admindoc:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  admindoc:bodytext   -->
		<admindoc:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading">

		<!--  Original Target XPath:  h   -->
		<h>
			<xsl:apply-templates select="@* | node()"/>
		</h>

	</xsl:template>

	<xsl:template match="leg:heading/title">

		<!--  Original Target XPath:  h   -->
		<h>
			<xsl:apply-templates select="@* | node()"/>
		</h>

	</xsl:template>

	<xsl:template match="leg:heading/subtitle">

		<!--  Original Target XPath:  h   -->
		<h>
			<xsl:apply-templates select="@* | node()"/>
		</h>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>