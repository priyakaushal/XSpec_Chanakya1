<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Cases_cttr.annotations-ConsiderationofWholeActorProvision">
  <title>cttr:annotations[@annotationtype="subseqcases"] - Consideration of Whole Act or Provision <lnpid>id-AU20-22270</lnpid></title>
  
  <body>

    <section>
      <p>When <sourcexml>cttr:annotations[@annotationtype="subseqcases"]/heading/title</sourcexml> contains 
        <sourcexml>@id="CI11.1"</sourcexml>, or the text <sourcexml>"Consideration of Whole Act"</sourcexml>, or the text 
        <sourcexml>"Consideration of Provision"</sourcexml>, create <targetxml>cttr:refsection[@reftype="considered-cases"]</targetxml>.</p>
      <p>Create <targetxml>ref:anchor[@id="refsection-001"]</targetxml> following <targetxml>cttr:refsection</targetxml>
      </p>
      <p>Create <targetxml>cttr:refsection/heading</targetxml> using <sourcexml>cttr:annotations/heading</sourcexml>.</p>
      <p>Create <targetxml>cttr:refitem</targetxml> for each <sourcexml>cttr:annot</sourcexml> and map the following:
        <ul>
          <li>
            <sourcexml>cttr:annot/case:info</sourcexml> becomes <targetxml>cttr:citingcase/cttr:caseinfo</targetxml>.
          </li>
        	<li>Add attribute <targetxml>@treatment</targetxml> to <targetxml>cttr:citingcase</targetxml> with the value determined 
        		from the following logic:
        		<ul>
        			<li>If <sourcexml>case:citations/case:citetext/ci:cite/ci:content/remotelink/inlineobject</sourcexml> exists, or if 
        				<sourcexml>cttr:annot/remotelink/inlineobject</sourcexml> exists, use the value determined for 
        				<targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> for the corresponding 
        				<targetxml>ref:crossreference</targetxml> element that is determined below.</li>
        			<li>Otherwise use <targetxml>@treatment="citation"</targetxml></li>
        		</ul>
        	</li>
          <li>
            <sourcexml>cttr:annot/case:info/case:casename</sourcexml> becomes 
            <targetxml>cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>.</li>
          <li>Add <targetxml>cttr:citations/lnci:cite</targetxml> to <targetxml>cttr:citingcase/cttr:caseinfo</targetxml> using 
            <sourcexml>cttr:annot/case:citations/case:citetext/ci:cite</sourcexml>. If 
            <sourcexml>remotelink/inlineobject</sourcexml> occurs within <sourcexml>ci:content</sourcexml>, map it 
            to <targetxml>cttr:refitem/cttr:citingcase/ref:crossreference</targetxml> using the instructions 
            provided in the general markup section for "<sourcexml>remotelink/inlineobject</sourcexml> for Casebase Signal to 
            <targetxml>ref:crossreference</targetxml>". The target <targetxml>ref:crossreference</targetxml> element 
            should be the last child of <targetxml>cttr:citingcase</targetxml>. Note that this mapping instruction will "pull up" any 
            <sourcexml>remotelink/inlineobject</sourcexml> casebase signal markup that is within the 
            source document citation's <sourcexml>ci:content</sourcexml> element, to be outside of the target 
            document citation's <targetxml>lnci:cite</targetxml> element.</li>
          <li>If <sourcexml>cttr:annot/remotelink/inlineobject</sourcexml> exists, it becomes 
            <targetxml>cttr:refitem/cttr:citingcase/ref:crossreference</targetxml>, using the instructions 
            provided in the general markup section for "<sourcexml>remotelink/inlineobject</sourcexml> for Casebase Signal to 
            <targetxml>ref:crossreference</targetxml>". The target <targetxml>ref:crossreference</targetxml> element 
            should be the last child of <targetxml>cttr:citingcase</targetxml>.</li>
          <li>Add <targetxml>cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml> using 
            <sourcexml>case:courtinfo/case:courtname</sourcexml>
          </li>
          <li>Add <targetxml>cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode[@alternatecourtcode]</targetxml> using 
            <sourcexml>case:info/case:courtinfo/case:courtcode</sourcexml>
          </li>
          <li>Add <targetxml>cttr:caseinfo/courtcase:judges/person:judge</targetxml> using 
            <sourcexml>case:courtinfo/case:judges/case:judge</sourcexml>
          </li>
          <li>Create <targetxml>cttr:caseinfo/caseinfo:constituents[@constituenttype="barristers"]</targetxml> using 
            <sourcexml>case:info/case:constituents[@constituenttype="barristers"]</sourcexml>
          </li>
          <li>Create <targetxml>cttr:caseinfo/caseinfo:constituents[@constituenttype="solicitors"]</targetxml> using 
            <sourcexml>case:info/case:constituents[@constituenttype="solicitors"]</sourcexml>
          </li>
          <li>Create <targetxml>cttr:caseinfo/decision:dates/decision:decisiondate[@month="MM"][@day="DD"][@year="YYYY"]/date-text</targetxml> 
            using <sourcexml>case:dates/case:decisiondate/date[@day="DD"][@month="MM"][@year="YYYY"]/text()</sourcexml>, where 
            "MM", "DD" and "YYYY" are the actual values in the source document attributes. Add 
            <targetxml>@normdate{"YYYY-MM-DD" format}</targetxml> using 
            <sourcexml>case:decisiondate/date/@day,@month,@year</sourcexml> values.</li>
          <li>Close <targetxml>cttr:caseinfo</targetxml>
          </li>
          <li>Create <targetxml>cttr:citingcase/cttr:usagegroup/cttr:usage[@usagetype="neutral"][text()="Cited"]</targetxml>
          </li>
          <li>Close <targetxml>cttr:citingcase</targetxml>.</li>
          <li>Create <targetxml>cttr:descriptors/cttr:descriptorsection@descriptortype="words-and-phrases"/classify:classification@classscheme="words-and-phrases"</targetxml> 
            using <sourcexml>cttr:annot/case:citations/note@display-name="Catchwords"</sourcexml>
          </li>
          <li>For each <sourcexml>note/p</sourcexml>, create <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
          </li>
        </ul>
      </p>
    </section>
    <example>
      <title>Example 1: Source title@="CI11.1" - Consideration of Whole Act</title>
      <codeblock>
     &lt;cttr:annotations annotationtype="subseqcases"&gt;
				&lt;heading&gt;
					&lt;title id="CI11.1"&gt;Consideration of Whole Act&lt;/title&gt;
				&lt;/heading&gt;
				
				&lt;cttr:annot&gt;
					&lt;case:info&gt;
						&lt;case:casename&gt;A &amp;amp; L Silvestri Pty Ltd v Construction, Forestry, Mining and Energy Union (CFMEU)&lt;/case:casename&gt;
						&lt;case:courtinfo&gt;
							&lt;case:courtname&gt;FCA&lt;/case:courtname&gt;
							&lt;case:courtcode&gt;FCA&lt;/case:courtcode&gt;
							&lt;case:judges&gt;
								&lt;case:judge&gt;Gyles J&lt;/case:judge&gt;
							&lt;/case:judges&gt;
							&lt;case:dates&gt;
								&lt;case:decisiondate&gt;
								  &lt;date day="19" month="10" year="2006"&gt;19/10/2006&lt;/date&gt;
								&lt;/case:decisiondate&gt;
							&lt;/case:dates&gt;
						&lt;/case:courtinfo&gt;
						&lt;case:constituents constituenttype="barristers"&gt;
							&lt;p&gt;
								&lt;text&gt;Fred&lt;/text&gt;
							&lt;/p&gt;
						&lt;/case:constituents&gt;
						&lt;case:constituents constituenttype="solicitors"&gt;
							&lt;p&gt;
								&lt;text&gt;Doris&lt;/text&gt;
							&lt;/p&gt;
						&lt;/case:constituents&gt;
					&lt;/case:info&gt;
					&lt;case:citations&gt;
						&lt;case:citetext&gt;
							&lt;ci:cite searchtype="CASE-REF" &gt;
								&lt;ci:case published="1"&gt;
									&lt;ci:caseref spanref="cr00606632-cr00417511-001" &gt;
										&lt;ci:reporter value="FCA"/&gt;
										&lt;ci:edition&gt;
											&lt;ci:date year="2006"/&gt;
										&lt;/ci:edition&gt;
										&lt;ci:page num="1328"/&gt;
									&lt;/ci:caseref&gt;
									&lt;ci:caseref spanref="cr00606633-cr00417511-002"&gt;
										&lt;ci:reporter value="urj"/&gt;
										&lt;ci:refnum num="BC200608377"/&gt;
									&lt;/ci:caseref&gt;
								&lt;/ci:case&gt;
								&lt;ci:content&gt;
									&lt;citefragment searchtype="CASE-CITE-REF"&gt;
										&lt;ci:span spanid="cr00606632-cr00417511-001"&gt;[2006] FCA 1328&lt;/ci:span&gt;;
											&lt;ci:span spanid="cr00606633-cr00417511-002" &gt;BC200608377&lt;/ci:span&gt;
									&lt;/citefragment&gt;
                  &lt;remotelink dpsi="0018" refpt="34408" remotekey1="DOC-ID" service="DOC-ID"&gt;
                      &lt;inlineobject alttext=" Cautionary treatment indicated - Click for CaseBase entry " 
                        type="image" attachment="web-server" filename="2.gif"/&gt;
                  &lt;/remotelink&gt;
								&lt;/ci:content&gt;
							&lt;/ci:cite&gt;
						&lt;/case:citetext&gt;
						&lt;note display-name="Catchwords"&gt;
							&lt;p&gt;
								&lt;text&gt;John - Paul - George - Ring - George - Billy&lt;/text&gt;
							&lt;/p&gt;
						&lt;/note&gt;
					&lt;/case:citations&gt;
				&lt;/cttr:annot&gt;
				
				...
				</codeblock>

      <title>Example 1: Target cttr:refsection/heading/title@xml:id="CI11.1" - Consideration of Whole Act</title>
      <codeblock>
         
      &lt;cttr:refsection reftype="considered-cases"&gt;
        &lt;ref:anchor id="refsection-001"/&gt;
				&lt;heading&gt;
					&lt;title xml:id="CI11.1"&gt;Consideration of Whole Act&lt;/title&gt;
				&lt;/heading&gt;
				&lt;cttr:refitem&gt;
					&lt;cttr:citingcase treatment="cautionary"&gt;
						
						&lt;cttr:caseinfo&gt;
							&lt;caseinfo:casename&gt;
								&lt;caseinfo:fullcasename&gt;A &amp;amp; L Silvestri Pty Ltd v Construction,
									Forestry, Mining and Energy Union (CFMEU)&lt;/caseinfo:fullcasename&gt;
							&lt;/caseinfo:casename&gt;
							
							&lt;cttr:citations&gt;
								&lt;lnci:cite&gt;
									&lt;lnci:case&gt;
										&lt;lnci:caseref status="valid"&gt;
											&lt;lnci:reporter value="FCA"/&gt;
											&lt;lnci:edition&gt;
												&lt;lnci:date year="2006"/&gt;
											&lt;/lnci:edition&gt;
											&lt;lnci:page num="1328"/&gt;
										&lt;/lnci:caseref&gt;
										&lt;lnci:caseref status="valid"&gt;
											&lt;lnci:reporter value="urj"/&gt;
											&lt;lnci:refnum num="BC200608377"/&gt;
										&lt;/lnci:caseref&gt;
									&lt;/lnci:case&gt;
    						   &lt;lnci:content&gt;[2006] FCA 1328; BC200608377&lt;/lnci:content&gt;
								&lt;/lnci:cite&gt;
							&lt;/cttr:citations&gt;
							
							&lt;jurisinfo:courtinfo&gt;
								&lt;jurisinfo:courtname&gt;FCA&lt;/jurisinfo:courtname&gt;
								&lt;jurisinfo:alternatecourtcode alternatecourtcode="FCA"/&gt;
							&lt;/jurisinfo:courtinfo&gt;
							&lt;courtcase:judges&gt;
								&lt;person:judge&gt;Gyles J&lt;/person:judge&gt;
							&lt;/courtcase:judges&gt;
							&lt;caseinfo:constituents constituenttype="barristers"&gt;
								&lt;person:counselor&gt;Fred&lt;/person:counselor&gt;
							&lt;/caseinfo:constituents&gt;
							&lt;caseinfo:constituents constituenttype="solicitors"&gt;
								&lt;person:counselor&gt;Doris&lt;/person:counselor&gt;
							&lt;/caseinfo:constituents&gt;
							&lt;decision:dates&gt;
								&lt;decision:decisiondate month="10" day="19" year="2006" normdate=”2006-10-19”&gt;
									&lt;date-text&gt;19/10/2006&lt;/date-text&gt;
								&lt;/decision:decisiondate&gt;
							&lt;/decision:dates&gt;
						&lt;/cttr:caseinfo&gt;						
						
						&lt;cttr:usagegroup&gt;
							&lt;cttr:usage usagetype="neutral"&gt;
								&lt;text/&gt;
							&lt;/cttr:usage&gt;
						&lt;/cttr:usagegroup&gt;
						
            &lt;ref:crossreference crossreferencetype="citatorAlert" 
                referencedresourcetype="citator" referencedresourcesentiment="cautionary"&gt;
                &lt;ref:content&gt;Cautionary treatment indicated&lt;/ref:content&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0018-34408"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
             &lt;/ref:crossreference&gt;
                   						
					&lt;/cttr:citingcase&gt;
					&lt;cttr:descriptors&gt;
						&lt;cttr:descriptorsection descriptortype="words-and-phrases"&gt;
							&lt;classify:classification classscheme="words-and-phrases"&gt;
								&lt;classify:classitem&gt;
									&lt;classify:classitem-identifier&gt;
										&lt;classify:classname&gt;John - Paul - George - Ringo - George -
											Billy&lt;/classify:classname&gt;
									&lt;/classify:classitem-identifier&gt;
								&lt;/classify:classitem&gt;
							&lt;/classify:classification&gt;
						&lt;/cttr:descriptorsection&gt;
					&lt;/cttr:descriptors&gt;
				&lt;/cttr:refitem&gt;
				
				
</codeblock>
    </example>
    
    <section>
      <title>
        Changes:
      </title>
    	<p>2016-10-10: <ph id="change_20161010_snb">Changed value of <targetxml>cttr:citingcase/@treatment</targetxml> 
    		from a fixed value of "citation" to instead be based upon the value of 
    		<targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> determined when 
    		<sourcexml>case:citations/case:citetext/ci:cite/ci:content/remotelink/inlineobject</sourcexml> or  
    		<sourcexml>cttr:annot/remotelink/inlineobject</sourcexml> exists. If neither exists, a value of 
    		"citation" is used. Updated example markup accordingly.</ph>
    	</p>
    	<p>2016-01-13: <ph id="change_20160113a_snb">Changed mapping of <sourcexml>remotelink/inlineobject</sourcexml> 
        within <sourcexml>ci:content</sourcexml> to "pull it up" in the target document to be the last child of 
        the citation's ancestor <targetxml>cttr:citingcase</targetxml> element. Added mapping for 
        <sourcexml>cttr:annot/remotelink/inlineobject</sourcexml>. Updated target markup example 
        accordingly.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211g_snb">Changed title. Changed <sourcexml>@="CI11.1"</sourcexml> to 
        <sourcexml>@id="CI11.1"</sourcexml>. Added logic and structure for provision documents. Changed 
        <targetxml>ref:anchor[@id="ref-CI11.1"]</targetxml> to be <targetxml>ref:anchor[@id="refsection-001"]</targetxml> 
        to match the the prototype document. Specified value for <targetxml>cttr:refsection/@reftypeM</targetxml> 
        (was unspecified) and moved to be with creation of <targetxml>cttr:refsection</targetxml>. Changed 
        <targetxml>case:casename</targetxml> to be <targetxml>caseinfo:casename</targetxml>. Corrected the wording 
        creating <targetxml>cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>. Changed 
        <sourcexml>cttr:caseinfo/case:citations/case:citetext/ci:cite</sourcexml> to be 
        <sourcexml>cttr:annot/case:citations/case:citetext/ci:cite</sourcexml>. Reworded creation of 
        <targetxml>cttr:caseinfo/decision:dates/decision:decisiondate</targetxml> to be less ambiguous. Added 
        text()="Cited" to <targetxml>cttr:citingcase/cttr:usagegroup/cttr:usage[@usagetype="neutral"]</targetxml>.</ph>
      </p>
    </section>

  </body>
  
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Cases_cttr.annotations-ConsiderationofWholeActorProvision.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Cases_cttr.annotations-ConsiderationofWholeActorProvision.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations[@annotationtype=&#34;subseqcases&#34;]/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-cases"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@id=&#34;CI11.1&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-cases"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="&#34;Consideration of Whole Act&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-cases"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="&#34;Consideration of Provision&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-cases"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem   -->
		<cttr:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingcase/cttr:caseinfo   -->
		<cttr:citingcase>
			<cttr:caseinfo>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:caseinfo>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingcase/cttr:caseinfo   -->
		<cttr:citingcase>
			<cttr:caseinfo>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:caseinfo>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="case:citations/case:citetext/ci:cite/ci:content/remotelink/inlineobject"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/remotelink/inlineobject"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename   -->
		<cttr:caseinfo>
			<caseinfo:casename>
				<caseinfo:fullcasename>
					<xsl:apply-templates select="@* | node()"/>
				</caseinfo:fullcasename>
			</caseinfo:casename>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:citations/case:citetext/ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/ref:crossreference   -->
		<cttr:refitem>
			<cttr:citingcase>
				<ref:crossreference>
					<xsl:apply-templates select="@* | node()"/>
				</ref:crossreference>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="remotelink/inlineobject"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/ref:crossreference   -->
		<cttr:refitem>
			<cttr:citingcase>
				<ref:crossreference>
					<xsl:apply-templates select="@* | node()"/>
				</ref:crossreference>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="ci:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/ref:crossreference   -->
		<cttr:refitem>
			<cttr:citingcase>
				<ref:crossreference>
					<xsl:apply-templates select="@* | node()"/>
				</ref:crossreference>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:courtname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode[@alternatecourtcode]   -->
		<cttr:citingcase>
			<cttr:caseinfo>
				<jurisinfo:courtinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
					<jurisinfo:alternatecourtcode>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:alternatecourtcode>
				</jurisinfo:courtinfo>
			</cttr:caseinfo>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="case:info/case:courtinfo/case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/courtcase:judges/person:judge   -->
		<cttr:caseinfo>
			<courtcase:judges xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
				<person:judge xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
					<xsl:apply-templates select="@* | node()"/>
				</person:judge>
			</courtcase:judges>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:judges/case:judge"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/caseinfo:constituents[@constituenttype="barristers"]   -->
		<cttr:caseinfo>
			<caseinfo:constituents>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:constituents>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:info/case:constituents[@constituenttype=&#34;barristers&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/caseinfo:constituents[@constituenttype="solicitors"]   -->
		<cttr:caseinfo>
			<caseinfo:constituents>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:constituents>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:info/case:constituents[@constituenttype=&#34;solicitors&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/decision:dates/decision:decisiondate[@month="MM"][@day="DD"][@year="YYYY"]/date-text   -->
		<cttr:caseinfo>
			<decision:dates xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/">
				<decision:decisiondate>
					<date-text>
						<xsl:apply-templates select="@* | node()"/>
					</date-text>
				</decision:decisiondate>
			</decision:dates>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:dates/case:decisiondate/date[@day=&#34;DD&#34;][@month=&#34;MM&#34;][@year=&#34;YYYY&#34;]/text()"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @normdate{"YYYY-MM-DD"format}   -->
		<!--  Could not determine target element or attribute name:  <@normdate{"YYYY-MM-DD"format}>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </@normdate{"YYYY-MM-DD"format}>  -->

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day,@month,@year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo   -->
		<cttr:caseinfo>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:citations/note@display-name=&#34;Catchwords&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="note/p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="@=&#34;CI11.1&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor[@id="ref-CI11.1"]   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:caseinfo/case:citations/case:citetext/ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/decision:dates/decision:decisiondate   -->
		<cttr:caseinfo>
			<decision:dates xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/">
				<decision:decisiondate>
					<xsl:apply-templates select="@* | node()"/>
				</decision:decisiondate>
			</decision:dates>
		</cttr:caseinfo>

	</xsl:template>

</xsl:stylesheet>