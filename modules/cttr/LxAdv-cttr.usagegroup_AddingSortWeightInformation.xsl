<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"

	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
  xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  version="2.0"
  exclude-result-prefixes="dita case case2 source_cttr lnf base xs xd">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="LxAdv-cttr.usagegroup_AddingSortWeightInformation">
    <title>Adding Sort Weight Information to cttr:usagegroup <lnpid>id-CCCC-10219</lnpid></title>
    <body>
      <section>
        <p>Attributes <targetxml>@negativesortweight</targetxml> and
            <targetxml>@positivesortweight</targetxml> are added to the element
            <targetxml>cttr:usagegroup</targetxml> element. The value of each attribute is created
          by prepending one or more two digit [R] values (determined from the text of each
            <sourcexml>cttr:use-group/cttr:use</sourcexml> element, as described below) <b>in
            priority (rank) order</b>, with an 8 digit integer value calculated from the
            <sourcexml>case:decisiondate</sourcexml> using the equation: 100,000,000 - YYYYMMDD,
          [D].</p>
      </section>
      <!--Note from Shan's CaseBase Case Citator document "CaseBase Case Citator - Table Sorting & Filtering_21Jan2013.doc": 
		   The signal is the treatment of the case the name of which appears in the relevant row of a table. 
		   The annotation indicates the treatment that the case in that row of that table gives to the case which
		   is the subject of the whole CaseBase entry. 
		   They are discrete concepts, and therefore the sort orders are discrete (although very conceptually similar).  -->
      <section>
        <title>Calculating @negativesortweight</title>
        <p>Value for <targetxml>@negativesortweight</targetxml> attribute is the combination of the
          following values:</p>
        <ul id="ul_bqk_tsn_il">
          <li> [R] Rank(s) of the value(s) of <sourcexml>cttr:use-group/cttr:use</sourcexml>
            element(s). If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml>
            elements, then the rank values should be appended to each other in priority (rank)
            order, with highest ranking (lowest numbered) value appearing first. <ul
              id="ul_vqk_tsn_il">
              <li><b><sourcexml>cttr:use/@signal="negative"</sourcexml></b>:</li>
              <li>01 - Overruled</li>
              <li>02 - Disapproved</li>
              <li>03 - Not applied</li>
              <li>04 - [any other @signal="negative" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
              <li>05 - Not followed</li>
              <li>06 - Questioned</li>
              <li>07 - Doubted</li>
              <li>08 - Explained</li>
              <li>09 - Distinguished</li>
              <li>10 - [any other @signal="cautionary" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="positive"</sourcexml></b>:</li>
              <li>11 - Followed</li>
              <li>12 - Applied</li>
              <li>13 - Approved</li>
              <li>14 - Adopted</li>
              <li>15 - [any other @signal="positive" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
              <li>16 - Overruled in part</li>
              <li>17 - Considered</li>
              <li>18 - Discussed</li>
              <li>19 - Cited</li>
              <li>20 - Referred to</li>
              <li>21 - See</li>
              <li>22 - [any other @signal="neutral" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
              <li>23 - [any other text]</li>
            </ul>
            <note>When cttr:use/@signal="[any other text or blank]" it should be converted to
              cttr:usage/@usagetype="unspecified" (since cttr:usage/@usagetype is a required
              attribute).</note>
          </li>
          <li> [D] Value of attrubutes @year, @month and @day of
              <sourcexml>case:decisiondate</sourcexml> in ( 100,000,000 - YYYYMMDD ) format.
              <note>For CA and AU citator documents, <sourcexml>case:decisiondate</sourcexml> is
              located in
                <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>.
              For UK, and MY documents, <sourcexml>case:decisiondate</sourcexml> is located in
                <sourcexml>cttr:annot/case:info/case:dates/case:decisiondate </sourcexml></note>
            <p>If the <sourcexml>case:decisiondate</sourcexml> is not available the value will be
              "100000000".</p>
          </li>
          <!--Note on dates from Shan's CaseBase Case Citator document "CaseBase Case Citator - Table Sorting & Filtering_21Jan2013.doc": 
			Note on implementation (14 August 2012): it seems at the time of writing that this tie breaking behaviour currently occurs on Rosetta
			by virtue of the fact that the underlying data in CaseBase tables is provided in reverse chronological order. This means that any data
			on Rosetta which would otherwise sort as a block (due to sharing the value on which the table is being sorted in that instance) displays
			in the reverse chronological order in which the data was originally provided. We would like to ensure that, however it is implemented
			for Lexis Advance (ie whether it�s in the same way as Rosetta or some other mechanism is used), tie breaking based on reverse chronological
			order of judgment date remains the rule, as described above. 

			Note on deferral of full date sorting functionality to R4 (Dec 2012): due to the discovery on cert for R3.5 that date sorting will require
			all dates in CaseBase tables to contain dates with two digits for the day (ie DD/MM/YYYY), implementation of full date sorting will be
			deferred to R4 to allow conversion to add an extra zero in dates which contain only 1 digit for the day. This should not impact date
			sorting as a tie breaking mechanism for R3.5 and R3.5, due to the fact that tie breaking using dates should happen by virtue of the 
			fact that the source data is delivered in reverse chronological date order (see note above).  
		   -->
        </ul>
        <p>Example <targetxml>@negativesortweight</targetxml> values:</p>
        <p>(in these examples two dates are used: 2005-08-31 and 1920-08-31.
          100,000,000-20050831=79949169 and 100,000,000-19200831=80799169)</p>
        <ul>
          <li>Overruled 2005-08-31: 0179949169</li>
          <li>Overruled 1920-08-31: 0180799169</li>
          <li>Considered 2005-08-31: 1779949169</li>
          <li>Considered 1920-08-31: 1780799169</li>
          <li/>
          <li>Dual Annotations (values should have 12 digits):</li>
          <li>Explained / Overruled OR Overruled/ Explained 2005-08-31: 010979949169</li>
          <li>Explained / Overruled OR Overruled/ Explained 1920-08-31: 010980799169</li>
          <li>Considered/ Cited OR Cited/ Considered 2005-08-31: 171979949169</li>
          <li>Considered/ Cited OR Cited/ Considered 1920-08-31: 171980799169</li>
          <li/>
          <li>Triple Annotations (values should have 14 digits):</li>
          <li>Cited/ Disapproved/ Considered 2005-08-31: 03171979949169</li>
          <li/>
          <li>Quadruple (values should have 16 digits):</li>
          <li>Cited/ Disapproved/ Considered/ See 1920-08-31: 0317192180799169</li>
          <li/>
          <li>5 Levels (values should have 18 digits):</li>
          <li>Cited/ Applied/ Approved/ Followed/ See 1920-08-31: 121314192180799169</li>
        </ul>
      </section>
      <section>
        <title>Calculating @positivesortweight</title>
        <p> Value for <targetxml>@positivesortweight</targetxml> attribute is the combination of the
          following values:</p>
        <ul>
          <li> [R] Rank(s) of the value(s) of <sourcexml>cttr:use-group/cttr:use</sourcexml>
            element(s), appended to each other in priority (rank) order followed by an 8 digit
            integer value which is calculated as 100 million minus the decision date in YYYYMMDD
            format [D]. <ul>
              <li><b><sourcexml>cttr:use/@signal="positive"</sourcexml></b>:</li>
              <li>01 - Followed</li>
              <li>02 - Applied</li>
              <li>03 - Approved</li>
              <li>04 - Adopted</li>
              <li>05 - [any other @signal="positive" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="negative"</sourcexml></b>:</li>
              <li>06 - Overruled</li>
              <li>07 - Not applied</li>
              <li>08 - Disapproved</li>
              <li>09 - [any other @signal="negative" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
              <li>10 - Not followed</li>
              <li>11 - Questioned</li>
              <li>12 - Doubted</li>
              <li>13 - Explained</li>
              <li>14 - Distinguished</li>
              <li>15 - [any other @signal="cautionary" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
              <li>16 - Overruled in part</li>
              <li>17 - Considered</li>
              <li>18 - Discussed</li>
              <li>19 - Cited</li>
              <li>20 - Referred to</li>
              <li>21 - See</li>
              <li>22 - [any other @signal="neutral" text that doesn't match the given set]</li>
              <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
              <li>23 - [any other text]</li>
            </ul>
            <note>When cttr:use/@signal="[any other text or blank]" it should be converted to
              cttr:usage/@usagetype="unspecified" (since cttr:usage/@usagetype is a required
              attribute).</note>
          </li>
          <li> [D] Value of attrubutes @year, @month and @day of
              <sourcexml>case:decisiondate</sourcexml> in ( 100,000,000 - YYYYMMDD ) format.
              <note>For CA and AU citator documents, <sourcexml>case:decisiondate</sourcexml> is
              located in
                <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>.
              For UK, and MY documents, <sourcexml>case:decisiondate</sourcexml> is located in
                <sourcexml>cttr:annot/case:info/case:dates/case:decisiondate </sourcexml></note>
            <p>If the <sourcexml>case:decisiondate</sourcexml> is not available the value will be
              "100000000".</p>
          </li>
        </ul>
      </section>
      <example>
        <title>Populating sort weight attributes, Example 1 - Source</title>
        <codeblock> &lt;cttr:annot signal="cautionary"&gt; &lt;case:info&gt; ...
          &lt;case:courtinfo&gt; &lt;case:dates&gt; &lt;case:decisiondate&gt; &lt;date day="31"
          month="08" year="1920"&gt;31/8/1920&lt;/date&gt; &lt;/case:decisiondate&gt;
          &lt;/case:dates&gt; ... &lt;/case:courtinfo&gt; &lt;/case:info&gt; &lt;cttr:use-group&gt;
          &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt; &lt;cttr:use
          signal="neutral"&gt;Cited&lt;/cttr:use&gt; &lt;/cttr:use-group&gt; ... &lt;/cttr:annot&gt;
        </codeblock>
      </example>
      <example>
        <title>Populating sort weight attributes, Example 1 - Target</title>
        <codeblock> &lt;cttr:refitem&gt; &lt;cttr:consideredcase treatment="cautionary"&gt;
          &lt;cttr:caseinfo&gt; ... &lt;decision:dates&gt; &lt;decision:decisiondate day="31"
          month="08" year="1920"&gt; &lt;date-text&gt;31/8/1920&lt;/date-text&gt;
          &lt;/decision:decisiondate&gt; &lt;/decision:dates&gt; &lt;/cttr:caseinfo&gt;
          &lt;cttr:usagegroup negativesortweight="192080799169"
          positivesortweight="192080799169"&gt; &lt;cttr:usage usagetype="neutral"&gt;
          &lt;text&gt;Referred to&lt;/text&gt; &lt;/cttr:usage&gt; &lt;cttr:usage
          usagetype="neutral"&gt; &lt;text&gt;Cited&lt;/text&gt; &lt;/cttr:usage&gt;
          &lt;/cttr:usagegroup&gt; ... &lt;/cttr:refitem&gt; </codeblock>
      </example>
      <example>
        <title>Populating sort weight attributes, Example 2 - Source</title>
        <codeblock> &lt;cttr:annot signal="negative"&gt; &lt;case:info&gt; ...
          &lt;case:courtinfo&gt; &lt;case:dates&gt; &lt;case:decisiondate&gt;&lt;date day="25"
          month="07" year="1955" &gt;25/7/1955&lt;/date&gt;&lt;/case:decisiondate&gt;
          &lt;/case:dates&gt; ... &lt;/case:courtinfo&gt; &lt;/case:info&gt; &lt;cttr:use-group&gt;
          &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt; &lt;cttr:use
          signal="positive"&gt;Applied&lt;/cttr:use&gt; &lt;/cttr:use-group&gt; ...
          &lt;/cttr:annot&gt; </codeblock>
      </example>
      <example>
        <title>Populating sort weight attributes, Example 2 - Target</title>
        <codeblock> &lt;cttr:refitem&gt; &lt;cttr:consideredcase treatment="negative"&gt;
          &lt;cttr:caseinfo&gt; ... &lt;decision:dates&gt; &lt;decision:decisiondate day="25"
          month="07" year="1955"&gt; &lt;date-text&gt;25/7/1955&lt;/date-text&gt;
          &lt;/decision:decisiondate&gt; &lt;/decision:dates&gt; &lt;/cttr:caseinfo&gt;
          &lt;cttr:usagegroup negativesortweight="132080449275"
          positivesortweight="022080449275"&gt; &lt;cttr:usage usagetype="neutral"&gt;
          &lt;text&gt;Referred to&lt;/text&gt; &lt;/cttr:usage&gt; &lt;cttr:usage
          usagetype="positive"&gt; &lt;text&gt;Applied&lt;/text&gt; &lt;/cttr:usage&gt;
          &lt;/cttr:usagegroup&gt; &lt;/cttr:consideredcase&gt; &lt;/cttr:refitem&gt; </codeblock>
      </example>
      <example>
        <title>Populating sort weight attributes, Example 3 - Source</title>
        <codeblock> &lt;cttr:use-group&gt; &lt;cttr:use signal="neutral"&gt;Referred
          to&lt;/cttr:use&gt; &lt;cttr:use signal="positive"&gt;New Annotation Type&lt;/cttr:use&gt;
          &lt;cttr:use signal="new signal"&gt;Applied&lt;/cttr:use&gt; &lt;/cttr:use-group&gt;
        </codeblock>
      </example>
      <example>
        <title>Populating sort weight attributes, Example 3 - Target</title>
        <codeblock> &lt;cttr:usagegroup negativesortweight="15202380449275"
          positivesortweight="05202380449275"&gt; &lt;cttr:usage usagetype="neutral"&gt;
          &lt;text&gt;Referred to&lt;/text&gt; &lt;/cttr:usage&gt; &lt;cttr:usage
          usagetype="positive"&gt; &lt;text&gt;New Annotation Type&lt;/text&gt; &lt;/cttr:usage&gt;
          &lt;cttr:usage usagetype="unspecified"&gt; &lt;text&gt;Applied&lt;/text&gt;
          &lt;/cttr:usage&gt; &lt;/cttr:usagegroup&gt; </codeblock>
        <p>Notes on Example 3:</p>
        <p> - The negativesortweight value of 15 and positivesortweight value of 05 is used for "New
          Annotation Type", that matches "Other Positive". </p>
        <p> - The cttr:usage/@usagetype="unspecified" is used for the "new signal". </p>
        <p> - The sort value of 23 being is used for "Applied" because it is given with the
          unrecognized "new signal" that matches "Other". </p>
      </example>
      <section>
        <title>Changes</title>
        <p>2013-10-30: <ph
            id="change_20131030_LxAdv-cttr.usagegroup_AddingSortWeightInformation_brt">Added second
            XPath for <sourcexml>case:descisiondate</sourcexml>. Paths are different for UK citator
            documents than originally listed.</ph></p>
        <p>2013-10-16: <ph id="change_20131016_LxAdv-cttr.usagegroup_AddingSortWeightInformation_sp"
            >Further updates per Shan's "CaseBase Case Citator - Table Sorting &amp; Filtering"
            document: WebTeams 233689, 233908, and 233912.</ph></p>
        <p>2013-09-18: <ph id="change_20130918_LxAdv-cttr.usagegroup_AddingSortWeightInformation_sp"
            >Updated per Shan's "CaseBase Case Citator - Table Sorting &amp; Filtering" document
            amended 22 August 2012: WebTeams 233689, 233908, and 233912.</ph></p>
        <p>2013-09-03: <ph id="change_20130903_raj">Created per WebStar: WebTeam #233689</ph></p>
      </section>
    </body>
  </dita:topic>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Lookup table for determining negative sort weight, used by function 'lnf:sortweight'</xd:p>
		</xd:desc>
	</xd:doc>	
	
	<lnf:negativeSortWeight>
		<negative value="01" text="Overruled"/>
		<negative value="02" text="Disapproved"/>
		<negative value="03" text="Not applied"/>
		<negative value="04" text="(any other with @signal='negative' and not equal to one of the above)"/>
		<cautionary value="05" text="Not followed"/>
		<cautionary value="06" text="Questioned"/>
		<cautionary value="07" text="Doubted"/>
		<cautionary value="08" text="Explained"/>
		<cautionary value="09" text="Distinguished"/>
		<cautionary value="10" text="(any other with @signal='cautionary' and not equal to one of the above)"/>
		<positive value="11" text="Followed"/>		
		<positive value="12" text="Applied"/>		
		<positive value="13" text="Approved"/>		
		<positive value="14" text="Adopted"/>		
		<positive value="15" text="(any other with @signal='positive' and not equal to one of the above)"/>		
		<neutral value="16" text="Overruled in part"/>
		<neutral value="17" text="Considered"/>
		<neutral value="18" text="Discussed"/>
		<neutral value="19" text="Cited"/>
		<neutral value="20" text="Referred to"/>
		<neutral value="21" text="See"/>
		<neutral value="22" text="(any other with @signal='neutral' and not equal to one of the above)"/>
		<blank value="23" text="(@signal is blank or != to above)"/>
	</lnf:negativeSortWeight>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Lookup table for determining positive sort weight, used by function 'lnf:sortweight'</xd:p>
		</xd:desc>
	</xd:doc>	
	<lnf:positiveSortWeight>
		<positive value="01" text="Followed"/>
		<positive value="02" text="Applied"/>
		<positive value="03" text="Approved"/>
		<positive value="04" text="Adopted"/>
		<positive value="05" text="(any other with @signal='positive' and not equal to one of the above)"/>
		<negative value="06" text="Overruled"/>
		<negative value="07" text="Not applied"/>
		<negative value="08" text="Disapproved"/>
		<negative value="09" text="(any other with @signal='negative' and not equal to one of the above)"/>
		<cautionary value="10" text="Not followed"/>
		<cautionary value="11" text="Questioned"/>		
		<cautionary value="12" text="Doubted"/>		
		<cautionary value="13" text="Explained"/>		
		<cautionary value="14" text="Distinguished"/>		
		<cautionary value="15" text="(any other with @signal='cautionary' and not equal to one of the above)"/>		
		<neutral value="16" text="Overruled in part"/>
		<neutral value="17" text="Considered"/>
		<neutral value="18" text="Discussed"/>
		<neutral value="19" text="Cited"/>
		<neutral value="20" text="Referred to"/>
		<neutral value="21" text="See"/>
		<neutral value="22" text="(any other with @signal='neutral' and not equal to one of the above)"/>
		<blank value="23" text="(@signal is blank or != to above)"/>		
	</lnf:positiveSortWeight>
	
	<xsl:function name="lnf:sortweight" as="text()">
		<xsl:param name="sortType" as="xs:string"/><!-- positive, negative -->
		<xsl:param name="node" as="node()"/><!-- input context node -->
		<xsl:variable name="sourceElementName" select="if($sortType='negative') then 'lnf:negativeSortWeight' else 'lnf:positiveSortWeight'"/>
		<xsl:variable name="R_value">
			<xsl:for-each select="$node/source_cttr:use">
				<xsl:sort select="document('')/*/*[name()=$sourceElementName]/*[@text=current()/text()]/@value" 
					data-type="number" order="ascending"/>
				<xsl:value-of select="document('')//*[name()=$sourceElementName]/*[@text=current()/text()]/@value"/>						
			</xsl:for-each>	
		</xsl:variable>
		<xsl:variable name="caseDate" as="text()">
			<xsl:variable name="dateNode" select="if($node/preceding-sibling::*:info//*:decisiondate) then $node/preceding-sibling::*:info//*:decisiondate else $node/following-sibling::*:info//*:decisiondate" as="node()?"/>
			<xsl:value-of select="concat($dateNode/date/@year,$dateNode/date/@month,$dateNode/date/@day)"/>
		</xsl:variable>
		<xsl:variable name="D_value" as="text()">
			<xsl:value-of select="format-number(number(100000000)-number($caseDate),'#')"/>
		</xsl:variable>
		<xsl:value-of select="concat($R_value,$D_value)"/>
	</xsl:function>


	<xsl:template match="source_cttr:use-group">
		<!--  Original Target XPath:  cttr:citingcase/cttr:usagegroup   -->
			<cttr:usagegroup>				
				<!-- JD: 20170525: if the determined sort weight isn't a valid number (e.g., if contains 'Nan' due to missing dates) don't create attributes) -->
				<xsl:variable name="negativesortweight" select="lnf:sortweight('negative',.)"/>
				<xsl:variable name="positivesortweight" select="lnf:sortweight('positive',.)"/>
				<xsl:if test="number($negativesortweight)">
					<xsl:attribute name="negativesortweight" select="$negativesortweight"/>
				</xsl:if>
				<xsl:if test="number($positivesortweight)">
					<xsl:attribute name="positivesortweight" select="$positivesortweight"/>
				</xsl:if>
				<xsl:apply-templates />
			</cttr:usagegroup>
	</xsl:template>
	
	<xsl:template match="source_cttr:use">
		<!--  Original Target XPath:  cttr:usage/text   -->
		<cttr:usage>
			<xsl:apply-templates select="@signal"/>
			<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates/>
			</text>
		</cttr:usage>
	</xsl:template>

	<xsl:template match="source_cttr:use/@signal">
		<!--  Original Target XPath:  cttr:usage@usagetype   -->
		<xsl:attribute name="usagetype" select="."/>
	</xsl:template>
	
	
  
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita  -->
  <!--*************DOCUMENTATION ONLY, COVERED IN OTHER MODULES ***************** -->

</xsl:stylesheet>
