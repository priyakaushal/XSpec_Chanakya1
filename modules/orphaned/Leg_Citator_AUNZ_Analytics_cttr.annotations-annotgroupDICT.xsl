<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupDICT">
  <title>For cttr:annotations[@annotgroup="DICT"] <lnpid>id-AU20-22260</lnpid></title>

  <body>
    <section>
      <p>For <sourcexml>cttr:annotations[@annotgroup="DICT"]</sourcexml> create new
        <targetxml>cttr:refsection</targetxml> element with attributes
        <targetxml>@reftype="citing-publications"</targetxml> and
        <targetxml>@xml:id="refsection-DICT"</targetxml>
      </p>
      <p>Perform the general mappings in the "Analytics Tab Content's" "cttr:body/cttr:content" section of this CI, and 
        then continue with the unique mapping instructions below.</p>
      <p>Create <targetxml>cttr:refsection/ref:anchor[@id="ref-dictionaries"]</targetxml>
      </p>
    </section>

    <example>
      <title>Source Dictionaries References</title>
      <codeblock>
&lt;cttr:annotations annotationtype="productuse" annotgroup="DICT"&gt;
	&lt;heading&gt;
		&lt;title&gt;Dictionaries&lt;/title&gt;
		&lt;subtitle&gt;(11)&lt;/subtitle&gt;
	&lt;/heading&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;?file to="cth\act\1989\2\A\CTH_ACT_1995-2.mockup.6.xml" ?&gt;
		&lt;?category title="Dictionaries" ?&gt;
		&lt;comm:info ln.type="seg" ln.segname="COMMINFO" ln.nsprefix="lnv:"&gt;
			&lt;title&gt;Encyclopaedic Australian Legal Dictionary&lt;/title&gt;
		&lt;/comm:info&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;Hearsay&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0034"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HEARSAY"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;        
        </codeblock>

      <title>Target Dictionaries References</title>
      <codeblock>
&lt;cttr:refsection xml:id="refsection-DICT" reftype="citing-publications"&gt;
	&lt;ref:anchor id="ref-dictionaries"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Dictionaries (11)&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;Encyclopaedic Australian Legal Dictionary&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso&gt;
					&lt;ref:content&gt;Hearsay&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0034-HEARSAY"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
		&lt;/cttr:citingpub&gt;
	&lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;
        </codeblock>
    </example>

    <section>
      <title>Changes</title>
    	<p>2016-06-03: <ph id="change_20160603a_snb">Corrected target markup example to have 
    		<targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
    		<targetxml>ref:locator/@anchortype="global"</targetxml>.</ph></p>
    	<p>2015-12-11: <ph id="change_20151211m_snb">Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Replaced example markup.</ph>
      </p>
      <p>2013-08-26: <ph id="change_20130826_raj">Corrected target markup for Halsbury's citation
        example. Changed <targetxml>link</targetxml> to <targetxml>ref:lnlink</targetxml> and
        removed <targetxml>@status="valid"</targetxml>.</ph>
      </p>
    </section>






  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupDICT.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupDICT.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations[@annotgroup=&#34;DICT&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

</xsl:stylesheet>